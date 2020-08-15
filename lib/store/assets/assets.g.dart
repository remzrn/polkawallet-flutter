// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assets.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AssetsStore on _AssetsStore, Store {
  Computed<ObservableList<TransferData>> _$txsViewComputed;

  @override
  ObservableList<TransferData> get txsView => (_$txsViewComputed ??=
          Computed<ObservableList<TransferData>>(() => super.txsView))
      .value;

  final _$cacheTxsTimestampAtom = Atom(name: '_AssetsStore.cacheTxsTimestamp');

  @override
  int get cacheTxsTimestamp {
    _$cacheTxsTimestampAtom.context.enforceReadPolicy(_$cacheTxsTimestampAtom);
    _$cacheTxsTimestampAtom.reportObserved();
    return super.cacheTxsTimestamp;
  }

  @override
  set cacheTxsTimestamp(int value) {
    _$cacheTxsTimestampAtom.context.conditionallyRunInAction(() {
      super.cacheTxsTimestamp = value;
      _$cacheTxsTimestampAtom.reportChanged();
    }, _$cacheTxsTimestampAtom, name: '${_$cacheTxsTimestampAtom.name}_set');
  }

  final _$isTxsLoadingAtom = Atom(name: '_AssetsStore.isTxsLoading');

  @override
  bool get isTxsLoading {
    _$isTxsLoadingAtom.context.enforceReadPolicy(_$isTxsLoadingAtom);
    _$isTxsLoadingAtom.reportObserved();
    return super.isTxsLoading;
  }

  @override
  set isTxsLoading(bool value) {
    _$isTxsLoadingAtom.context.conditionallyRunInAction(() {
      super.isTxsLoading = value;
      _$isTxsLoadingAtom.reportChanged();
    }, _$isTxsLoadingAtom, name: '${_$isTxsLoadingAtom.name}_set');
  }

  final _$submittingAtom = Atom(name: '_AssetsStore.submitting');

  @override
  bool get submitting {
    _$submittingAtom.context.enforceReadPolicy(_$submittingAtom);
    _$submittingAtom.reportObserved();
    return super.submitting;
  }

  @override
  set submitting(bool value) {
    _$submittingAtom.context.conditionallyRunInAction(() {
      super.submitting = value;
      _$submittingAtom.reportChanged();
    }, _$submittingAtom, name: '${_$submittingAtom.name}_set');
  }

  final _$balancesAtom = Atom(name: '_AssetsStore.balances');

  @override
  ObservableMap<String, BalancesInfo> get balances {
    _$balancesAtom.context.enforceReadPolicy(_$balancesAtom);
    _$balancesAtom.reportObserved();
    return super.balances;
  }

  @override
  set balances(ObservableMap<String, BalancesInfo> value) {
    _$balancesAtom.context.conditionallyRunInAction(() {
      super.balances = value;
      _$balancesAtom.reportChanged();
    }, _$balancesAtom, name: '${_$balancesAtom.name}_set');
  }

  final _$tokenBalancesAtom = Atom(name: '_AssetsStore.tokenBalances');

  @override
  Map<String, String> get tokenBalances {
    _$tokenBalancesAtom.context.enforceReadPolicy(_$tokenBalancesAtom);
    _$tokenBalancesAtom.reportObserved();
    return super.tokenBalances;
  }

  @override
  set tokenBalances(Map<String, String> value) {
    _$tokenBalancesAtom.context.conditionallyRunInAction(() {
      super.tokenBalances = value;
      _$tokenBalancesAtom.reportChanged();
    }, _$tokenBalancesAtom, name: '${_$tokenBalancesAtom.name}_set');
  }

  final _$txsCountAtom = Atom(name: '_AssetsStore.txsCount');

  @override
  int get txsCount {
    _$txsCountAtom.context.enforceReadPolicy(_$txsCountAtom);
    _$txsCountAtom.reportObserved();
    return super.txsCount;
  }

  @override
  set txsCount(int value) {
    _$txsCountAtom.context.conditionallyRunInAction(() {
      super.txsCount = value;
      _$txsCountAtom.reportChanged();
    }, _$txsCountAtom, name: '${_$txsCountAtom.name}_set');
  }

  final _$txsAtom = Atom(name: '_AssetsStore.txs');

  @override
  ObservableList<TransferData> get txs {
    _$txsAtom.context.enforceReadPolicy(_$txsAtom);
    _$txsAtom.reportObserved();
    return super.txs;
  }

  @override
  set txs(ObservableList<TransferData> value) {
    _$txsAtom.context.conditionallyRunInAction(() {
      super.txs = value;
      _$txsAtom.reportChanged();
    }, _$txsAtom, name: '${_$txsAtom.name}_set');
  }

  final _$txsFilterAtom = Atom(name: '_AssetsStore.txsFilter');

  @override
  int get txsFilter {
    _$txsFilterAtom.context.enforceReadPolicy(_$txsFilterAtom);
    _$txsFilterAtom.reportObserved();
    return super.txsFilter;
  }

  @override
  set txsFilter(int value) {
    _$txsFilterAtom.context.conditionallyRunInAction(() {
      super.txsFilter = value;
      _$txsFilterAtom.reportChanged();
    }, _$txsFilterAtom, name: '${_$txsFilterAtom.name}_set');
  }

  final _$blockMapAtom = Atom(name: '_AssetsStore.blockMap');

  @override
  ObservableMap<int, BlockData> get blockMap {
    _$blockMapAtom.context.enforceReadPolicy(_$blockMapAtom);
    _$blockMapAtom.reportObserved();
    return super.blockMap;
  }

  @override
  set blockMap(ObservableMap<int, BlockData> value) {
    _$blockMapAtom.context.conditionallyRunInAction(() {
      super.blockMap = value;
      _$blockMapAtom.reportChanged();
    }, _$blockMapAtom, name: '${_$blockMapAtom.name}_set');
  }

  final _$announcementsAtom = Atom(name: '_AssetsStore.announcements');

  @override
  List get announcements {
    _$announcementsAtom.context.enforceReadPolicy(_$announcementsAtom);
    _$announcementsAtom.reportObserved();
    return super.announcements;
  }

  @override
  set announcements(List value) {
    _$announcementsAtom.context.conditionallyRunInAction(() {
      super.announcements = value;
      _$announcementsAtom.reportChanged();
    }, _$announcementsAtom, name: '${_$announcementsAtom.name}_set');
  }

  final _$marketPricesAtom = Atom(name: '_AssetsStore.marketPrices');

  @override
  ObservableMap<String, double> get marketPrices {
    _$marketPricesAtom.context.enforceReadPolicy(_$marketPricesAtom);
    _$marketPricesAtom.reportObserved();
    return super.marketPrices;
  }

  @override
  set marketPrices(ObservableMap<String, double> value) {
    _$marketPricesAtom.context.conditionallyRunInAction(() {
      super.marketPrices = value;
      _$marketPricesAtom.reportChanged();
    }, _$marketPricesAtom, name: '${_$marketPricesAtom.name}_set');
  }

  final _$setAccountBalancesAsyncAction = AsyncAction('setAccountBalances');

  @override
  Future<void> setAccountBalances(String pubKey, Map amt,
      {bool needCache = true}) {
    return _$setAccountBalancesAsyncAction
        .run(() => super.setAccountBalances(pubKey, amt, needCache: needCache));
  }

  final _$setAccountTokenBalancesAsyncAction =
      AsyncAction('setAccountTokenBalances');

  @override
  Future<void> setAccountTokenBalances(String pubKey, Map amt,
      {bool needCache = true}) {
    return _$setAccountTokenBalancesAsyncAction.run(
        () => super.setAccountTokenBalances(pubKey, amt, needCache: needCache));
  }

  final _$clearTxsAsyncAction = AsyncAction('clearTxs');

  @override
  Future<void> clearTxs() {
    return _$clearTxsAsyncAction.run(() => super.clearTxs());
  }

  final _$addTxsAsyncAction = AsyncAction('addTxs');

  @override
  Future<void> addTxs(Map res, String address, {bool shouldCache = false}) {
    return _$addTxsAsyncAction
        .run(() => super.addTxs(res, address, shouldCache: shouldCache));
  }

  final _$setBlockMapAsyncAction = AsyncAction('setBlockMap');

  @override
  Future<void> setBlockMap(String data) {
    return _$setBlockMapAsyncAction.run(() => super.setBlockMap(data));
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

  final _$_AssetsStoreActionController = ActionController(name: '_AssetsStore');

  @override
  void setTxsLoading(bool isLoading) {
    final _$actionInfo = _$_AssetsStoreActionController.startAction();
    try {
      return super.setTxsLoading(isLoading);
    } finally {
      _$_AssetsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTxsFilter(int filter) {
    final _$actionInfo = _$_AssetsStoreActionController.startAction();
    try {
      return super.setTxsFilter(filter);
    } finally {
      _$_AssetsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSubmitting(bool isSubmitting) {
    final _$actionInfo = _$_AssetsStoreActionController.startAction();
    try {
      return super.setSubmitting(isSubmitting);
    } finally {
      _$_AssetsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAnnouncements(List data) {
    final _$actionInfo = _$_AssetsStoreActionController.startAction();
    try {
      return super.setAnnouncements(data);
    } finally {
      _$_AssetsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMarketPrices(String token, String price) {
    final _$actionInfo = _$_AssetsStoreActionController.startAction();
    try {
      return super.setMarketPrices(token, price);
    } finally {
      _$_AssetsStoreActionController.endAction(_$actionInfo);
    }
  }
}
