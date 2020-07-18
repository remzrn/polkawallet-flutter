// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AccountStore on _AccountStore, Store {
  Computed<AccountData> _$currentAccountComputed;

  @override
  AccountData get currentAccount => (_$currentAccountComputed ??=
          Computed<AccountData>(() => super.currentAccount))
      .value;
  Computed<List<AccountData>> _$optionalAccountsComputed;

  @override
  List<AccountData> get optionalAccounts => (_$optionalAccountsComputed ??=
          Computed<List<AccountData>>(() => super.optionalAccounts))
      .value;
  Computed<List<AccountData>> _$accountListAllComputed;

  @override
  List<AccountData> get accountListAll => (_$accountListAllComputed ??=
          Computed<List<AccountData>>(() => super.accountListAll))
      .value;
  Computed<String> _$currentAddressComputed;

  @override
  String get currentAddress => (_$currentAddressComputed ??=
          Computed<String>(() => super.currentAddress))
      .value;

  final _$loadingAtom = Atom(name: '_AccountStore.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$txStatusAtom = Atom(name: '_AccountStore.txStatus');

  @override
  String get txStatus {
    _$txStatusAtom.context.enforceReadPolicy(_$txStatusAtom);
    _$txStatusAtom.reportObserved();
    return super.txStatus;
  }

  @override
  set txStatus(String value) {
    _$txStatusAtom.context.conditionallyRunInAction(() {
      super.txStatus = value;
      _$txStatusAtom.reportChanged();
    }, _$txStatusAtom, name: '${_$txStatusAtom.name}_set');
  }

  final _$newAccountAtom = Atom(name: '_AccountStore.newAccount');

  @override
  AccountCreate get newAccount {
    _$newAccountAtom.context.enforceReadPolicy(_$newAccountAtom);
    _$newAccountAtom.reportObserved();
    return super.newAccount;
  }

  @override
  set newAccount(AccountCreate value) {
    _$newAccountAtom.context.conditionallyRunInAction(() {
      super.newAccount = value;
      _$newAccountAtom.reportChanged();
    }, _$newAccountAtom, name: '${_$newAccountAtom.name}_set');
  }

  final _$currentAccountPubKeyAtom =
      Atom(name: '_AccountStore.currentAccountPubKey');

  @override
  String get currentAccountPubKey {
    _$currentAccountPubKeyAtom.context
        .enforceReadPolicy(_$currentAccountPubKeyAtom);
    _$currentAccountPubKeyAtom.reportObserved();
    return super.currentAccountPubKey;
  }

  @override
  set currentAccountPubKey(String value) {
    _$currentAccountPubKeyAtom.context.conditionallyRunInAction(() {
      super.currentAccountPubKey = value;
      _$currentAccountPubKeyAtom.reportChanged();
    }, _$currentAccountPubKeyAtom,
        name: '${_$currentAccountPubKeyAtom.name}_set');
  }

  final _$accountListAtom = Atom(name: '_AccountStore.accountList');

  @override
  ObservableList<AccountData> get accountList {
    _$accountListAtom.context.enforceReadPolicy(_$accountListAtom);
    _$accountListAtom.reportObserved();
    return super.accountList;
  }

  @override
  set accountList(ObservableList<AccountData> value) {
    _$accountListAtom.context.conditionallyRunInAction(() {
      super.accountList = value;
      _$accountListAtom.reportChanged();
    }, _$accountListAtom, name: '${_$accountListAtom.name}_set');
  }

  final _$accountIndexMapAtom = Atom(name: '_AccountStore.accountIndexMap');

  @override
  ObservableMap<String, Map> get accountIndexMap {
    _$accountIndexMapAtom.context.enforceReadPolicy(_$accountIndexMapAtom);
    _$accountIndexMapAtom.reportObserved();
    return super.accountIndexMap;
  }

  @override
  set accountIndexMap(ObservableMap<String, Map> value) {
    _$accountIndexMapAtom.context.conditionallyRunInAction(() {
      super.accountIndexMap = value;
      _$accountIndexMapAtom.reportChanged();
    }, _$accountIndexMapAtom, name: '${_$accountIndexMapAtom.name}_set');
  }

  final _$pubKeyBondedMapAtom = Atom(name: '_AccountStore.pubKeyBondedMap');

  @override
  ObservableMap<String, AccountBondedInfo> get pubKeyBondedMap {
    _$pubKeyBondedMapAtom.context.enforceReadPolicy(_$pubKeyBondedMapAtom);
    _$pubKeyBondedMapAtom.reportObserved();
    return super.pubKeyBondedMap;
  }

  @override
  set pubKeyBondedMap(ObservableMap<String, AccountBondedInfo> value) {
    _$pubKeyBondedMapAtom.context.conditionallyRunInAction(() {
      super.pubKeyBondedMap = value;
      _$pubKeyBondedMapAtom.reportChanged();
    }, _$pubKeyBondedMapAtom, name: '${_$pubKeyBondedMapAtom.name}_set');
  }

  final _$pubKeyAddressMapAtom = Atom(name: '_AccountStore.pubKeyAddressMap');

  @override
  ObservableMap<int, Map<String, String>> get pubKeyAddressMap {
    _$pubKeyAddressMapAtom.context.enforceReadPolicy(_$pubKeyAddressMapAtom);
    _$pubKeyAddressMapAtom.reportObserved();
    return super.pubKeyAddressMap;
  }

  @override
  set pubKeyAddressMap(ObservableMap<int, Map<String, String>> value) {
    _$pubKeyAddressMapAtom.context.conditionallyRunInAction(() {
      super.pubKeyAddressMap = value;
      _$pubKeyAddressMapAtom.reportChanged();
    }, _$pubKeyAddressMapAtom, name: '${_$pubKeyAddressMapAtom.name}_set');
  }

  final _$pubKeyIconsMapAtom = Atom(name: '_AccountStore.pubKeyIconsMap');

  @override
  ObservableMap<String, String> get pubKeyIconsMap {
    _$pubKeyIconsMapAtom.context.enforceReadPolicy(_$pubKeyIconsMapAtom);
    _$pubKeyIconsMapAtom.reportObserved();
    return super.pubKeyIconsMap;
  }

  @override
  set pubKeyIconsMap(ObservableMap<String, String> value) {
    _$pubKeyIconsMapAtom.context.conditionallyRunInAction(() {
      super.pubKeyIconsMap = value;
      _$pubKeyIconsMapAtom.reportChanged();
    }, _$pubKeyIconsMapAtom, name: '${_$pubKeyIconsMapAtom.name}_set');
  }

  final _$addressIconsMapAtom = Atom(name: '_AccountStore.addressIconsMap');

  @override
  ObservableMap<String, String> get addressIconsMap {
    _$addressIconsMapAtom.context.enforceReadPolicy(_$addressIconsMapAtom);
    _$addressIconsMapAtom.reportObserved();
    return super.addressIconsMap;
  }

  @override
  set addressIconsMap(ObservableMap<String, String> value) {
    _$addressIconsMapAtom.context.conditionallyRunInAction(() {
      super.addressIconsMap = value;
      _$addressIconsMapAtom.reportChanged();
    }, _$addressIconsMapAtom, name: '${_$addressIconsMapAtom.name}_set');
  }

  final _$recoveryInfoAtom = Atom(name: '_AccountStore.recoveryInfo');

  @override
  AccountRecoveryInfo get recoveryInfo {
    _$recoveryInfoAtom.context.enforceReadPolicy(_$recoveryInfoAtom);
    _$recoveryInfoAtom.reportObserved();
    return super.recoveryInfo;
  }

  @override
  set recoveryInfo(AccountRecoveryInfo value) {
    _$recoveryInfoAtom.context.conditionallyRunInAction(() {
      super.recoveryInfo = value;
      _$recoveryInfoAtom.reportChanged();
    }, _$recoveryInfoAtom, name: '${_$recoveryInfoAtom.name}_set');
  }

  final _$updateAccountNameAsyncAction = AsyncAction('updateAccountName');

  @override
  Future<void> updateAccountName(String name) {
    return _$updateAccountNameAsyncAction
        .run(() => super.updateAccountName(name));
  }

  final _$updateAccountAsyncAction = AsyncAction('updateAccount');

  @override
  Future<void> updateAccount(Map<String, dynamic> acc) {
    return _$updateAccountAsyncAction.run(() => super.updateAccount(acc));
  }

  final _$addAccountAsyncAction = AsyncAction('addAccount');

  @override
  Future<void> addAccount(Map<String, dynamic> acc, String password) {
    return _$addAccountAsyncAction.run(() => super.addAccount(acc, password));
  }

  final _$removeAccountAsyncAction = AsyncAction('removeAccount');

  @override
  Future<void> removeAccount(AccountData acc) {
    return _$removeAccountAsyncAction.run(() => super.removeAccount(acc));
  }

  final _$loadAccountAsyncAction = AsyncAction('loadAccount');

  @override
  Future<void> loadAccount() {
    return _$loadAccountAsyncAction.run(() => super.loadAccount());
  }

  final _$setAccountsBondedAsyncAction = AsyncAction('setAccountsBonded');

  @override
  Future<void> setAccountsBonded(List ls) {
    return _$setAccountsBondedAsyncAction
        .run(() => super.setAccountsBonded(ls));
  }

  final _$encryptSeedAsyncAction = AsyncAction('encryptSeed');

  @override
  Future<void> encryptSeed(
      String pubKey, String seed, String seedType, String password) {
    return _$encryptSeedAsyncAction
        .run(() => super.encryptSeed(pubKey, seed, seedType, password));
  }

  final _$decryptSeedAsyncAction = AsyncAction('decryptSeed');

  @override
  Future<String> decryptSeed(String pubKey, String seedType, String password) {
    return _$decryptSeedAsyncAction
        .run(() => super.decryptSeed(pubKey, seedType, password));
  }

  final _$checkSeedExistAsyncAction = AsyncAction('checkSeedExist');

  @override
  Future<bool> checkSeedExist(String seedType, String pubKey) {
    return _$checkSeedExistAsyncAction
        .run(() => super.checkSeedExist(seedType, pubKey));
  }

  final _$updateSeedAsyncAction = AsyncAction('updateSeed');

  @override
  Future<void> updateSeed(
      String pubKey, String passwordOld, String passwordNew) {
    return _$updateSeedAsyncAction
        .run(() => super.updateSeed(pubKey, passwordOld, passwordNew));
  }

  final _$deleteSeedAsyncAction = AsyncAction('deleteSeed');

  @override
  Future<void> deleteSeed(String seedType, String pubKey) {
    return _$deleteSeedAsyncAction
        .run(() => super.deleteSeed(seedType, pubKey));
  }

  final _$_AccountStoreActionController =
      ActionController(name: '_AccountStore');

  @override
  void setTxStatus(String status) {
    final _$actionInfo = _$_AccountStoreActionController.startAction();
    try {
      return super.setTxStatus(status);
    } finally {
      _$_AccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNewAccount(String name, String password) {
    final _$actionInfo = _$_AccountStoreActionController.startAction();
    try {
      return super.setNewAccount(name, password);
    } finally {
      _$_AccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNewAccountKey(String key) {
    final _$actionInfo = _$_AccountStoreActionController.startAction();
    try {
      return super.setNewAccountKey(key);
    } finally {
      _$_AccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetNewAccount() {
    final _$actionInfo = _$_AccountStoreActionController.startAction();
    try {
      return super.resetNewAccount();
    } finally {
      _$_AccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCurrentAccount(String pubKey) {
    final _$actionInfo = _$_AccountStoreActionController.startAction();
    try {
      return super.setCurrentAccount(pubKey);
    } finally {
      _$_AccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPubKeyAddressMap(Map<String, Map> data) {
    final _$actionInfo = _$_AccountStoreActionController.startAction();
    try {
      return super.setPubKeyAddressMap(data);
    } finally {
      _$_AccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPubKeyIconsMap(List list) {
    final _$actionInfo = _$_AccountStoreActionController.startAction();
    try {
      return super.setPubKeyIconsMap(list);
    } finally {
      _$_AccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAddressIconsMap(List list) {
    final _$actionInfo = _$_AccountStoreActionController.startAction();
    try {
      return super.setAddressIconsMap(list);
    } finally {
      _$_AccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAccountsIndex(List list) {
    final _$actionInfo = _$_AccountStoreActionController.startAction();
    try {
      return super.setAccountsIndex(list);
    } finally {
      _$_AccountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAccountRecoveryInfo(Map json) {
    final _$actionInfo = _$_AccountStoreActionController.startAction();
    try {
      return super.setAccountRecoveryInfo(json);
    } finally {
      _$_AccountStoreActionController.endAction(_$actionInfo);
    }
  }
}

mixin _$AccountCreate on _AccountCreate, Store {
  final _$nameAtom = Atom(name: '_AccountCreate.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$passwordAtom = Atom(name: '_AccountCreate.password');

  @override
  String get password {
    _$passwordAtom.context.enforceReadPolicy(_$passwordAtom);
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.conditionallyRunInAction(() {
      super.password = value;
      _$passwordAtom.reportChanged();
    }, _$passwordAtom, name: '${_$passwordAtom.name}_set');
  }

  final _$keyAtom = Atom(name: '_AccountCreate.key');

  @override
  String get key {
    _$keyAtom.context.enforceReadPolicy(_$keyAtom);
    _$keyAtom.reportObserved();
    return super.key;
  }

  @override
  set key(String value) {
    _$keyAtom.context.conditionallyRunInAction(() {
      super.key = value;
      _$keyAtom.reportChanged();
    }, _$keyAtom, name: '${_$keyAtom.name}_set');
  }
}
