import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:polka_wallet/common/components/currencyWithIcon.dart';
import 'package:polka_wallet/common/components/roundedButton.dart';
import 'package:polka_wallet/common/components/roundedCard.dart';
import 'package:polka_wallet/common/regInputFormatter.dart';
import 'package:polka_wallet/page-acala/homa/homaHistoryPage.dart';
import 'package:polka_wallet/page/account/txConfirmPage.dart';
import 'package:polka_wallet/service/substrateApi/api.dart';
import 'package:polka_wallet/store/acala/types/stakingPoolInfoData.dart';
import 'package:polka_wallet/store/acala/types/txHomaData.dart';
import 'package:polka_wallet/store/app.dart';
import 'package:polka_wallet/utils/format.dart';
import 'package:polka_wallet/utils/i18n/index.dart';

class MintPage extends StatefulWidget {
  MintPage(this.store);

  static const String route = '/acala/homa/mint';
  final AppStore store;

  @override
  _MintPageState createState() => _MintPageState(store);
}

class _MintPageState extends State<MintPage> {
  _MintPageState(this.store);

  final AppStore store;

  final GlobalKey<RefreshIndicatorState> _refreshKey =
      new GlobalKey<RefreshIndicatorState>();

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _amountPayCtrl = new TextEditingController();
  final TextEditingController _amountReceiveCtrl = new TextEditingController();

  Future<void> _refreshData() async {
    webApi.acala.fetchTokens(store.account.currentAccount.pubKey);
    await webApi.acala.fetchHomaStakingPool();
    if (_amountReceiveCtrl.text.isEmpty) {
      await _updateReceiveAmount(0);
    }
  }

  Future<void> _updateReceiveAmount(double input) async {
    if (mounted) {
      double exchangeRate = 1 / store.acala.stakingPoolInfo.liquidExchangeRate;
      setState(() {
        _amountReceiveCtrl.text =
            Fmt.priceFloor(input * exchangeRate, lengthFixed: 3);
      });
    }
  }

  void _onSupplyAmountChange(String v) {
    String supply = v.trim();
    if (supply.isEmpty) {
      return;
    }
    _updateReceiveAmount(double.parse(supply));
  }

  void _onSubmit() {
    if (_formKey.currentState.validate()) {
      int decimals = store.settings.networkState.tokenDecimals;
      String pay = _amountPayCtrl.text.trim();
      String receive = _amountReceiveCtrl.text.trim();
      var args = {
        "title": I18n.of(context).acala['homa.mint'],
        "txInfo": {
          "module": 'homa',
          "call": 'mint',
        },
        "detail": jsonEncode({
          "amountPay": pay,
          "amountReceive": receive,
        }),
        "params": [
          Fmt.tokenInt(pay, decimals: decimals).toString(),
        ],
        "onFinish": (BuildContext txPageContext, Map res) {
//          print(res);
          res['action'] = TxHomaData.actionMint;
          res['amountReceive'] = receive;
          store.acala.setHomaTxs([res]);
          Navigator.popUntil(
              txPageContext, ModalRoute.withName(MintPage.route));
          _refreshKey.currentState.show();
        }
      };
      Navigator.of(context).pushNamed(TxConfirmPage.route, arguments: args);
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _refreshData();
    });
  }

  @override
  void dispose() {
    _amountPayCtrl.dispose();
    _amountReceiveCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(_) {
    return Observer(
      builder: (BuildContext context) {
        final Map dic = I18n.of(context).acala;
        final Map dicAssets = I18n.of(context).assets;
        int decimals = store.settings.networkState.tokenDecimals;

        final double inputWidth = MediaQuery.of(context).size.width / 3;

        BigInt balance = Fmt.balanceInt(store.assets.tokenBalances['DOT']);

        StakingPoolInfoData pool = store.acala.stakingPoolInfo;

        Color primary = Theme.of(context).primaryColor;

        return Scaffold(
          appBar: AppBar(title: Text(dic['homa.mint']), centerTitle: true),
          body: SafeArea(
            child: RefreshIndicator(
              key: _refreshKey,
              onRefresh: _refreshData,
              child: ListView(
                padding: EdgeInsets.all(16),
                children: <Widget>[
                  RoundedCard(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CurrencyWithIcon(
                              'DOT',
                              textWidth: 48,
                              textStyle: Theme.of(context).textTheme.headline4,
                            ),
                            Icon(
                              Icons.repeat,
                              color: Theme.of(context).primaryColor,
                            ),
                            CurrencyWithIcon(
                              'LDOT',
                              textWidth: 48,
                              textStyle: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        ),
                        Form(
                          key: _formKey,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: inputWidth,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: dic['dex.pay'],
                                    labelText: dic['dex.pay'],
                                    suffix: GestureDetector(
                                      child: Icon(
                                        CupertinoIcons.clear_thick_circled,
                                        color: Theme.of(context).disabledColor,
                                        size: 18,
                                      ),
                                      onTap: () {
                                        WidgetsBinding.instance
                                            .addPostFrameCallback(
                                                (_) => _amountPayCtrl.clear());
                                      },
                                    ),
                                  ),
                                  inputFormatters: [
                                    RegExInputFormatter.withRegex(
                                        '^[0-9]{0,6}(\\.[0-9]{0,$decimals})?\$')
                                  ],
                                  controller: _amountPayCtrl,
                                  keyboardType: TextInputType.numberWithOptions(
                                      decimal: true),
                                  validator: (v) {
                                    if (v.isEmpty) {
                                      return dicAssets['amount.error'];
                                    }
                                    if (double.parse(v.trim()) >=
                                        Fmt.bigIntToDouble(balance,
                                            decimals: decimals)) {
                                      return dicAssets['amount.low'];
                                    }
                                    return null;
                                  },
                                  onChanged: _onSupplyAmountChange,
                                ),
                              ),
                              Container(
                                width: inputWidth,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: dic['dex.receive'],
                                    suffix: Container(
                                      height: 21,
                                      width: 8,
                                    ),
                                  ),
                                  controller: _amountReceiveCtrl,
                                  readOnly: true,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text(
                            '${dicAssets['balance']}: ${Fmt.token(balance, decimals: decimals)} DOT',
                            style: TextStyle(
                                color: Theme.of(context).unselectedWidgetColor),
                          ),
                        ),
                        Divider(),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    dic['dex.rate'],
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .unselectedWidgetColor),
                                  ),
                                  Text(
                                      '1 DOT = ${Fmt.priceFloor(1 / pool.liquidExchangeRate, lengthMax: 3)} L-DOT'),
                                ],
                              ),
                              GestureDetector(
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Icon(Icons.history, color: primary),
                                      Text(
                                        dic['loan.txs'],
                                        style: TextStyle(
                                            color: primary, fontSize: 14),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () => Navigator.of(context)
                                    .pushNamed(HomaHistoryPage.route),
                              ),
                            ])
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24),
                    child: RoundedButton(
                      text: dic['homa.mint'],
                      onPressed: _onSubmit,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
