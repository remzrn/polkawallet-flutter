// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'laminar.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LaminarStore on _LaminarStore, Store {
  Computed<List<LaminarSyntheticPoolTokenData>> _$syntheticTokensComputed;

  @override
  List<LaminarSyntheticPoolTokenData> get syntheticTokens =>
      (_$syntheticTokensComputed ??=
              Computed<List<LaminarSyntheticPoolTokenData>>(
                  () => super.syntheticTokens))
          .value;
  Computed<List<LaminarMarginPairData>> _$marginTokensComputed;

  @override
  List<LaminarMarginPairData> get marginTokens => (_$marginTokensComputed ??=
          Computed<List<LaminarMarginPairData>>(() => super.marginTokens))
      .value;

  final _$txsTransferAtom = Atom(name: '_LaminarStore.txsTransfer');

  @override
  ObservableList<TransferData> get txsTransfer {
    _$txsTransferAtom.context.enforceReadPolicy(_$txsTransferAtom);
    _$txsTransferAtom.reportObserved();
    return super.txsTransfer;
  }

  @override
  set txsTransfer(ObservableList<TransferData> value) {
    _$txsTransferAtom.context.conditionallyRunInAction(() {
      super.txsTransfer = value;
      _$txsTransferAtom.reportChanged();
    }, _$txsTransferAtom, name: '${_$txsTransferAtom.name}_set');
  }

  final _$txsSwapAtom = Atom(name: '_LaminarStore.txsSwap');

  @override
  ObservableList<LaminarTxSwapData> get txsSwap {
    _$txsSwapAtom.context.enforceReadPolicy(_$txsSwapAtom);
    _$txsSwapAtom.reportObserved();
    return super.txsSwap;
  }

  @override
  set txsSwap(ObservableList<LaminarTxSwapData> value) {
    _$txsSwapAtom.context.conditionallyRunInAction(() {
      super.txsSwap = value;
      _$txsSwapAtom.reportChanged();
    }, _$txsSwapAtom, name: '${_$txsSwapAtom.name}_set');
  }

  final _$tokenPricesAtom = Atom(name: '_LaminarStore.tokenPrices');

  @override
  Map<String, LaminarPriceData> get tokenPrices {
    _$tokenPricesAtom.context.enforceReadPolicy(_$tokenPricesAtom);
    _$tokenPricesAtom.reportObserved();
    return super.tokenPrices;
  }

  @override
  set tokenPrices(Map<String, LaminarPriceData> value) {
    _$tokenPricesAtom.context.conditionallyRunInAction(() {
      super.tokenPrices = value;
      _$tokenPricesAtom.reportChanged();
    }, _$tokenPricesAtom, name: '${_$tokenPricesAtom.name}_set');
  }

  final _$syntheticPoolInfoAtom = Atom(name: '_LaminarStore.syntheticPoolInfo');

  @override
  ObservableMap<String, LaminarSyntheticPoolInfoData> get syntheticPoolInfo {
    _$syntheticPoolInfoAtom.context.enforceReadPolicy(_$syntheticPoolInfoAtom);
    _$syntheticPoolInfoAtom.reportObserved();
    return super.syntheticPoolInfo;
  }

  @override
  set syntheticPoolInfo(
      ObservableMap<String, LaminarSyntheticPoolInfoData> value) {
    _$syntheticPoolInfoAtom.context.conditionallyRunInAction(() {
      super.syntheticPoolInfo = value;
      _$syntheticPoolInfoAtom.reportChanged();
    }, _$syntheticPoolInfoAtom, name: '${_$syntheticPoolInfoAtom.name}_set');
  }

  final _$marginPoolInfoAtom = Atom(name: '_LaminarStore.marginPoolInfo');

  @override
  ObservableMap<String, LaminarMarginPoolInfoData> get marginPoolInfo {
    _$marginPoolInfoAtom.context.enforceReadPolicy(_$marginPoolInfoAtom);
    _$marginPoolInfoAtom.reportObserved();
    return super.marginPoolInfo;
  }

  @override
  set marginPoolInfo(ObservableMap<String, LaminarMarginPoolInfoData> value) {
    _$marginPoolInfoAtom.context.conditionallyRunInAction(() {
      super.marginPoolInfo = value;
      _$marginPoolInfoAtom.reportChanged();
    }, _$marginPoolInfoAtom, name: '${_$marginPoolInfoAtom.name}_set');
  }

  final _$marginTraderInfoAtom = Atom(name: '_LaminarStore.marginTraderInfo');

  @override
  ObservableMap<String, LaminarMarginTraderInfoData> get marginTraderInfo {
    _$marginTraderInfoAtom.context.enforceReadPolicy(_$marginTraderInfoAtom);
    _$marginTraderInfoAtom.reportObserved();
    return super.marginTraderInfo;
  }

  @override
  set marginTraderInfo(
      ObservableMap<String, LaminarMarginTraderInfoData> value) {
    _$marginTraderInfoAtom.context.conditionallyRunInAction(() {
      super.marginTraderInfo = value;
      _$marginTraderInfoAtom.reportChanged();
    }, _$marginTraderInfoAtom, name: '${_$marginTraderInfoAtom.name}_set');
  }

  final _$setSwapTxsAsyncAction = AsyncAction('setSwapTxs');

  @override
  Future<void> setSwapTxs(List list,
      {bool reset = false, dynamic needCache = true}) {
    return _$setSwapTxsAsyncAction
        .run(() => super.setSwapTxs(list, reset: reset, needCache: needCache));
  }

  final _$loadAccountCacheAsyncAction = AsyncAction('loadAccountCache');

  @override
  Future<void> loadAccountCache() {
    return _$loadAccountCacheAsyncAction.run(() => super.loadAccountCache());
  }

  final _$loadCacheAsyncAction = AsyncAction('loadCache');

  @override
  Future<void> loadCache() {
    return _$loadCacheAsyncAction.run(() => super.loadCache());
  }

  final _$_LaminarStoreActionController =
      ActionController(name: '_LaminarStore');

  @override
  void setTransferTxs(List list,
      {bool reset = false, dynamic needCache = true}) {
    final _$actionInfo = _$_LaminarStoreActionController.startAction();
    try {
      return super.setTransferTxs(list, reset: reset, needCache: needCache);
    } finally {
      _$_LaminarStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTokenPrices(List prices) {
    final _$actionInfo = _$_LaminarStoreActionController.startAction();
    try {
      return super.setTokenPrices(prices);
    } finally {
      _$_LaminarStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSyntheticPoolInfo(Map info) {
    final _$actionInfo = _$_LaminarStoreActionController.startAction();
    try {
      return super.setSyntheticPoolInfo(info);
    } finally {
      _$_LaminarStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMarginPoolInfo(Map info) {
    final _$actionInfo = _$_LaminarStoreActionController.startAction();
    try {
      return super.setMarginPoolInfo(info);
    } finally {
      _$_LaminarStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMarginTraderInfo(Map info) {
    final _$actionInfo = _$_LaminarStoreActionController.startAction();
    try {
      return super.setMarginTraderInfo(info);
    } finally {
      _$_LaminarStoreActionController.endAction(_$actionInfo);
    }
  }
}
