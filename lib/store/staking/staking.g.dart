// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staking.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StakingStore on _StakingStore, Store {
  Computed<List<ValidatorData>> _$nextUpsInfoComputed;

  @override
  List<ValidatorData> get nextUpsInfo => (_$nextUpsInfoComputed ??=
          Computed<List<ValidatorData>>(() => super.nextUpsInfo))
      .value;
  Computed<List<ValidatorData>> _$validatorsAllComputed;

  @override
  List<ValidatorData> get validatorsAll => (_$validatorsAllComputed ??=
          Computed<List<ValidatorData>>(() => super.validatorsAll))
      .value;
  Computed<List<ValidatorData>> _$activeNominatingListComputed;

  @override
  List<ValidatorData> get activeNominatingList =>
      (_$activeNominatingListComputed ??=
              Computed<List<ValidatorData>>(() => super.activeNominatingList))
          .value;
  Computed<List<ValidatorData>> _$nominatingListComputed;

  @override
  List<ValidatorData> get nominatingList => (_$nominatingListComputed ??=
          Computed<List<ValidatorData>>(() => super.nominatingList))
      .value;
  Computed<Map<String, List>> _$nominationsAllComputed;

  @override
  Map<String, List> get nominationsAll => (_$nominationsAllComputed ??=
          Computed<Map<String, List>>(() => super.nominationsAll))
      .value;
  Computed<BigInt> _$accountUnlockingTotalComputed;

  @override
  BigInt get accountUnlockingTotal => (_$accountUnlockingTotalComputed ??=
          Computed<BigInt>(() => super.accountUnlockingTotal))
      .value;
  Computed<BigInt> _$accountRewardTotalComputed;

  @override
  BigInt get accountRewardTotal => (_$accountRewardTotalComputed ??=
          Computed<BigInt>(() => super.accountRewardTotal))
      .value;
  Computed<List<String>> _$recommendedValidatorListComputed;

  @override
  List<String> get recommendedValidatorList =>
      (_$recommendedValidatorListComputed ??=
              Computed<List<String>>(() => super.recommendedValidatorList))
          .value;

  final _$cacheTxsTimestampAtom = Atom(name: '_StakingStore.cacheTxsTimestamp');

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

  final _$overviewAtom = Atom(name: '_StakingStore.overview');

  @override
  ObservableMap<String, dynamic> get overview {
    _$overviewAtom.context.enforceReadPolicy(_$overviewAtom);
    _$overviewAtom.reportObserved();
    return super.overview;
  }

  @override
  set overview(ObservableMap<String, dynamic> value) {
    _$overviewAtom.context.conditionallyRunInAction(() {
      super.overview = value;
      _$overviewAtom.reportChanged();
    }, _$overviewAtom, name: '${_$overviewAtom.name}_set');
  }

  final _$stakedAtom = Atom(name: '_StakingStore.staked');

  @override
  BigInt get staked {
    _$stakedAtom.context.enforceReadPolicy(_$stakedAtom);
    _$stakedAtom.reportObserved();
    return super.staked;
  }

  @override
  set staked(BigInt value) {
    _$stakedAtom.context.conditionallyRunInAction(() {
      super.staked = value;
      _$stakedAtom.reportChanged();
    }, _$stakedAtom, name: '${_$stakedAtom.name}_set');
  }

  final _$nominatorCountAtom = Atom(name: '_StakingStore.nominatorCount');

  @override
  int get nominatorCount {
    _$nominatorCountAtom.context.enforceReadPolicy(_$nominatorCountAtom);
    _$nominatorCountAtom.reportObserved();
    return super.nominatorCount;
  }

  @override
  set nominatorCount(int value) {
    _$nominatorCountAtom.context.conditionallyRunInAction(() {
      super.nominatorCount = value;
      _$nominatorCountAtom.reportChanged();
    }, _$nominatorCountAtom, name: '${_$nominatorCountAtom.name}_set');
  }

  final _$validatorsInfoAtom = Atom(name: '_StakingStore.validatorsInfo');

  @override
  List<ValidatorData> get validatorsInfo {
    _$validatorsInfoAtom.context.enforceReadPolicy(_$validatorsInfoAtom);
    _$validatorsInfoAtom.reportObserved();
    return super.validatorsInfo;
  }

  @override
  set validatorsInfo(List<ValidatorData> value) {
    _$validatorsInfoAtom.context.conditionallyRunInAction(() {
      super.validatorsInfo = value;
      _$validatorsInfoAtom.reportChanged();
    }, _$validatorsInfoAtom, name: '${_$validatorsInfoAtom.name}_set');
  }

  final _$ledgerAtom = Atom(name: '_StakingStore.ledger');

  @override
  ObservableMap<String, dynamic> get ledger {
    _$ledgerAtom.context.enforceReadPolicy(_$ledgerAtom);
    _$ledgerAtom.reportObserved();
    return super.ledger;
  }

  @override
  set ledger(ObservableMap<String, dynamic> value) {
    _$ledgerAtom.context.conditionallyRunInAction(() {
      super.ledger = value;
      _$ledgerAtom.reportChanged();
    }, _$ledgerAtom, name: '${_$ledgerAtom.name}_set');
  }

  final _$txsLoadingAtom = Atom(name: '_StakingStore.txsLoading');

  @override
  bool get txsLoading {
    _$txsLoadingAtom.context.enforceReadPolicy(_$txsLoadingAtom);
    _$txsLoadingAtom.reportObserved();
    return super.txsLoading;
  }

  @override
  set txsLoading(bool value) {
    _$txsLoadingAtom.context.conditionallyRunInAction(() {
      super.txsLoading = value;
      _$txsLoadingAtom.reportChanged();
    }, _$txsLoadingAtom, name: '${_$txsLoadingAtom.name}_set');
  }

  final _$txsCountAtom = Atom(name: '_StakingStore.txsCount');

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

  final _$txsAtom = Atom(name: '_StakingStore.txs');

  @override
  ObservableList<TxData> get txs {
    _$txsAtom.context.enforceReadPolicy(_$txsAtom);
    _$txsAtom.reportObserved();
    return super.txs;
  }

  @override
  set txs(ObservableList<TxData> value) {
    _$txsAtom.context.conditionallyRunInAction(() {
      super.txs = value;
      _$txsAtom.reportChanged();
    }, _$txsAtom, name: '${_$txsAtom.name}_set');
  }

  final _$txsRewardsAtom = Atom(name: '_StakingStore.txsRewards');

  @override
  ObservableList<TxRewardData> get txsRewards {
    _$txsRewardsAtom.context.enforceReadPolicy(_$txsRewardsAtom);
    _$txsRewardsAtom.reportObserved();
    return super.txsRewards;
  }

  @override
  set txsRewards(ObservableList<TxRewardData> value) {
    _$txsRewardsAtom.context.conditionallyRunInAction(() {
      super.txsRewards = value;
      _$txsRewardsAtom.reportChanged();
    }, _$txsRewardsAtom, name: '${_$txsRewardsAtom.name}_set');
  }

  final _$rewardsChartDataCacheAtom =
      Atom(name: '_StakingStore.rewardsChartDataCache');

  @override
  ObservableMap<String, dynamic> get rewardsChartDataCache {
    _$rewardsChartDataCacheAtom.context
        .enforceReadPolicy(_$rewardsChartDataCacheAtom);
    _$rewardsChartDataCacheAtom.reportObserved();
    return super.rewardsChartDataCache;
  }

  @override
  set rewardsChartDataCache(ObservableMap<String, dynamic> value) {
    _$rewardsChartDataCacheAtom.context.conditionallyRunInAction(() {
      super.rewardsChartDataCache = value;
      _$rewardsChartDataCacheAtom.reportChanged();
    }, _$rewardsChartDataCacheAtom,
        name: '${_$rewardsChartDataCacheAtom.name}_set');
  }

  final _$stakesChartDataCacheAtom =
      Atom(name: '_StakingStore.stakesChartDataCache');

  @override
  ObservableMap<String, dynamic> get stakesChartDataCache {
    _$stakesChartDataCacheAtom.context
        .enforceReadPolicy(_$stakesChartDataCacheAtom);
    _$stakesChartDataCacheAtom.reportObserved();
    return super.stakesChartDataCache;
  }

  @override
  set stakesChartDataCache(ObservableMap<String, dynamic> value) {
    _$stakesChartDataCacheAtom.context.conditionallyRunInAction(() {
      super.stakesChartDataCache = value;
      _$stakesChartDataCacheAtom.reportChanged();
    }, _$stakesChartDataCacheAtom,
        name: '${_$stakesChartDataCacheAtom.name}_set');
  }

  final _$phalaAirdropWhiteListAtom =
      Atom(name: '_StakingStore.phalaAirdropWhiteList');

  @override
  Map get phalaAirdropWhiteList {
    _$phalaAirdropWhiteListAtom.context
        .enforceReadPolicy(_$phalaAirdropWhiteListAtom);
    _$phalaAirdropWhiteListAtom.reportObserved();
    return super.phalaAirdropWhiteList;
  }

  @override
  set phalaAirdropWhiteList(Map value) {
    _$phalaAirdropWhiteListAtom.context.conditionallyRunInAction(() {
      super.phalaAirdropWhiteList = value;
      _$phalaAirdropWhiteListAtom.reportChanged();
    }, _$phalaAirdropWhiteListAtom,
        name: '${_$phalaAirdropWhiteListAtom.name}_set');
  }

  final _$recommendedValidatorsAtom =
      Atom(name: '_StakingStore.recommendedValidators');

  @override
  Map get recommendedValidators {
    _$recommendedValidatorsAtom.context
        .enforceReadPolicy(_$recommendedValidatorsAtom);
    _$recommendedValidatorsAtom.reportObserved();
    return super.recommendedValidators;
  }

  @override
  set recommendedValidators(Map value) {
    _$recommendedValidatorsAtom.context.conditionallyRunInAction(() {
      super.recommendedValidators = value;
      _$recommendedValidatorsAtom.reportChanged();
    }, _$recommendedValidatorsAtom,
        name: '${_$recommendedValidatorsAtom.name}_set');
  }

  final _$clearTxsAsyncAction = AsyncAction('clearTxs');

  @override
  Future<void> clearTxs() {
    return _$clearTxsAsyncAction.run(() => super.clearTxs());
  }

  final _$setTxsLoadingAsyncAction = AsyncAction('setTxsLoading');

  @override
  Future<void> setTxsLoading(bool loading) {
    return _$setTxsLoadingAsyncAction.run(() => super.setTxsLoading(loading));
  }

  final _$addTxsAsyncAction = AsyncAction('addTxs');

  @override
  Future<void> addTxs(Map res, {bool shouldCache = false}) {
    return _$addTxsAsyncAction
        .run(() => super.addTxs(res, shouldCache: shouldCache));
  }

  final _$addTxsRewardsAsyncAction = AsyncAction('addTxsRewards');

  @override
  Future<void> addTxsRewards(Map res, {bool shouldCache = false}) {
    return _$addTxsRewardsAsyncAction
        .run(() => super.addTxsRewards(res, shouldCache: shouldCache));
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

  final _$setPhalaAirdropWhiteListAsyncAction =
      AsyncAction('setPhalaAirdropWhiteList');

  @override
  Future<void> setPhalaAirdropWhiteList(List ls) {
    return _$setPhalaAirdropWhiteListAsyncAction
        .run(() => super.setPhalaAirdropWhiteList(ls));
  }

  final _$setRecommendedValidatorListAsyncAction =
      AsyncAction('setRecommendedValidatorList');

  @override
  Future<void> setRecommendedValidatorList(Map data) {
    return _$setRecommendedValidatorListAsyncAction
        .run(() => super.setRecommendedValidatorList(data));
  }

  final _$_StakingStoreActionController =
      ActionController(name: '_StakingStore');

  @override
  void setValidatorsInfo(Map<String, dynamic> data, {bool shouldCache = true}) {
    final _$actionInfo = _$_StakingStoreActionController.startAction();
    try {
      return super.setValidatorsInfo(data, shouldCache: shouldCache);
    } finally {
      _$_StakingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setOverview(Map<String, dynamic> data, {bool shouldCache = true}) {
    final _$actionInfo = _$_StakingStoreActionController.startAction();
    try {
      return super.setOverview(data, shouldCache: shouldCache);
    } finally {
      _$_StakingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLedger(String pubKey, Map<String, dynamic> data,
      {bool shouldCache = true, bool reset = false}) {
    final _$actionInfo = _$_StakingStoreActionController.startAction();
    try {
      return super
          .setLedger(pubKey, data, shouldCache: shouldCache, reset: reset);
    } finally {
      _$_StakingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearState() {
    final _$actionInfo = _$_StakingStoreActionController.startAction();
    try {
      return super.clearState();
    } finally {
      _$_StakingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRewardsChartData(String validatorId, Map data) {
    final _$actionInfo = _$_StakingStoreActionController.startAction();
    try {
      return super.setRewardsChartData(validatorId, data);
    } finally {
      _$_StakingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setStakesChartData(String validatorId, Map data) {
    final _$actionInfo = _$_StakingStoreActionController.startAction();
    try {
      return super.setStakesChartData(validatorId, data);
    } finally {
      _$_StakingStoreActionController.endAction(_$actionInfo);
    }
  }
}
