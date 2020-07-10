import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:polka_wallet/common/components/BorderedTitle.dart';
import 'package:polka_wallet/common/components/addressIcon.dart';
import 'package:polka_wallet/common/components/infoItem.dart';
import 'package:polka_wallet/common/components/listTail.dart';
import 'package:polka_wallet/common/components/roundedButton.dart';
import 'package:polka_wallet/common/components/roundedCard.dart';
import 'package:polka_wallet/common/consts/settings.dart';
import 'package:polka_wallet/service/substrateApi/api.dart';
import 'package:polka_wallet/store/app.dart';
import 'package:polka_wallet/store/gov/types/treasuryOverviewData.dart';
import 'package:polka_wallet/utils/format.dart';
import 'package:polka_wallet/utils/i18n/index.dart';

class MoneyProposals extends StatefulWidget {
  MoneyProposals(this.store);

  final AppStore store;

  @override
  _ProposalsState createState() => _ProposalsState();
}

class _ProposalsState extends State<MoneyProposals> {
  final GlobalKey<RefreshIndicatorState> _refreshKey =
      new GlobalKey<RefreshIndicatorState>();

  Future<void> _fetchData() async {
    await webApi.gov.fetchTreasuryOverview();
  }

  int _getSpendPeriod() {
    int spendDays = 0;
    if (widget.store.settings.networkConst['treasury'] != null) {
      final int period =
          widget.store.settings.networkConst['treasury']['spendPeriod'];
      final int blockTime =
          widget.store.settings.networkConst['babe']['expectedBlockTime'];
      spendDays = period * (blockTime ~/ 1000) ~/ SECONDS_OF_DAY;
    }
    return spendDays;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _refreshKey.currentState?.show();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final Map dic = I18n.of(context).gov;
    return Observer(
      builder: (BuildContext context) {
        final int decimals = widget.store.settings.networkState.tokenDecimals;
        final String symbol = widget.store.settings.networkState.tokenSymbol;
        print(widget.store.gov.treasuryOverview.proposalCount);
        String balance = Fmt.balance(
          widget.store.gov.treasuryOverview.balance,
          decimals: decimals,
        );
        return RefreshIndicator(
          onRefresh: _fetchData,
          key: _refreshKey,
          child: ListView(
            children: <Widget>[
              _OverviewCard(
                symbol: symbol,
                balance: balance,
                spendPeriod: _getSpendPeriod(),
                overview: widget.store.gov.treasuryOverview,
              ),
              Container(
                color: Theme.of(context).cardColor,
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    BorderedTitle(title: dic['treasury.proposal']),
                    widget.store.gov.treasuryOverview.proposals != null &&
                            widget.store.gov.treasuryOverview.proposals.length >
                                0
                        ? Column(
                            children: widget
                                .store.gov.treasuryOverview.proposals
                                .map((e) {
                              Map accInfo = widget.store.account
                                  .accountIndexMap[e.proposal.proposer];
                              return _ProposalItem(
                                symbol: symbol,
                                accInfo: accInfo,
                                proposal: e,
                              );
                            }).toList(),
                          )
                        : ListTail(
                            isEmpty: widget.store.gov.treasuryOverview.proposals
                                    .length ==
                                0,
                            isLoading:
                                widget.store.gov.treasuryOverview.proposals ==
                                    null,
                          ),
                    BorderedTitle(title: 'approvals'),
                    Column(
                      children:
                          widget.store.gov.treasuryOverview.approvals.map((e) {
                        Map accInfo = widget
                            .store.account.accountIndexMap[e.proposal.proposer];
                        return _ProposalItem(
                          symbol: symbol,
                          accInfo: accInfo,
                          proposal: e,
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _OverviewCard extends StatelessWidget {
  _OverviewCard({
    this.symbol,
    this.balance,
    this.spendPeriod,
    this.overview,
  });

  final String symbol;
  final String balance;
  final int spendPeriod;
  final TreasuryOverviewData overview;

  @override
  Widget build(BuildContext context) {
    return RoundedCard(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              InfoItem(
                crossAxisAlignment: CrossAxisAlignment.center,
                title: 'prop',
                content: overview.proposals?.length.toString(),
              ),
              InfoItem(
                crossAxisAlignment: CrossAxisAlignment.center,
                title: 'total',
                content: overview.proposalCount.toString(),
              ),
              InfoItem(
                crossAxisAlignment: CrossAxisAlignment.center,
                title: 'approval',
                content: overview.approvals?.length.toString(),
              ),
            ],
          ),
          Container(height: 24),
          Row(
            children: <Widget>[
              InfoItem(
                crossAxisAlignment: CrossAxisAlignment.center,
                title: 'available ($symbol)',
                content: balance,
              ),
              InfoItem(
                crossAxisAlignment: CrossAxisAlignment.center,
                title: 'spend period',
                content: '$spendPeriod days',
              ),
            ],
          ),
          Divider(height: 24),
          RoundedButton(
            text: 'submit proposal',
            onPressed: () {
              print('go to submit');
            },
          ),
        ],
      ),
    );
  }
}

class _ProposalItem extends StatelessWidget {
  _ProposalItem({this.symbol, this.proposal, this.accInfo});

  final String symbol;
  final Map accInfo;
  final MoneyProposalData proposal;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AddressIcon(proposal.proposal.proposer),
      title: Text(accInfo != null && accInfo['identity']['display'] != null
          ? accInfo['identity']['display'].toString().toUpperCase()
          : Fmt.address(proposal.proposal.proposer, pad: 6)),
      subtitle:
          Text('${Fmt.balance(proposal.proposal.value.toString())} $symbol'),
      trailing: Text(
        '# ${proposal.id}',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
