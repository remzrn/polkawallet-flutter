// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkState _$NetworkStateFromJson(Map<String, dynamic> json) {
  return NetworkState()
    ..endpoint = json['endpoint'] as String
    ..ss58Format = json['ss58Format'] as int
    ..tokenDecimals = json['tokenDecimals'] as int
    ..tokenSymbol = json['tokenSymbol'] as String;
}

Map<String, dynamic> _$NetworkStateToJson(NetworkState instance) =>
    <String, dynamic>{
      'endpoint': instance.endpoint,
      'ss58Format': instance.ss58Format,
      'tokenDecimals': instance.tokenDecimals,
      'tokenSymbol': instance.tokenSymbol,
    };

EndpointData _$EndpointDataFromJson(Map<String, dynamic> json) {
  return EndpointData()
    ..info = json['info'] as String
    ..ss58 = json['ss58'] as int
    ..text = json['text'] as String
    ..value = json['value'] as String;
}

Map<String, dynamic> _$EndpointDataToJson(EndpointData instance) =>
    <String, dynamic>{
      'info': instance.info,
      'ss58': instance.ss58,
      'text': instance.text,
      'value': instance.value,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SettingsStore on _SettingsStore, Store {
  Computed<List<EndpointData>> _$endpointListComputed;

  @override
  List<EndpointData> get endpointList => (_$endpointListComputed ??=
          Computed<List<EndpointData>>(() => super.endpointList))
      .value;
  Computed<List<AccountData>> _$contactListAllComputed;

  @override
  List<AccountData> get contactListAll => (_$contactListAllComputed ??=
          Computed<List<AccountData>>(() => super.contactListAll))
      .value;
  Computed<String> _$existentialDepositComputed;

  @override
  String get existentialDeposit => (_$existentialDepositComputed ??=
          Computed<String>(() => super.existentialDeposit))
      .value;
  Computed<String> _$transactionBaseFeeComputed;

  @override
  String get transactionBaseFee => (_$transactionBaseFeeComputed ??=
          Computed<String>(() => super.transactionBaseFee))
      .value;
  Computed<String> _$transactionByteFeeComputed;

  @override
  String get transactionByteFee => (_$transactionByteFeeComputed ??=
          Computed<String>(() => super.transactionByteFee))
      .value;

  final _$loadingAtom = Atom(name: '_SettingsStore.loading');

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

  final _$localeCodeAtom = Atom(name: '_SettingsStore.localeCode');

  @override
  String get localeCode {
    _$localeCodeAtom.context.enforceReadPolicy(_$localeCodeAtom);
    _$localeCodeAtom.reportObserved();
    return super.localeCode;
  }

  @override
  set localeCode(String value) {
    _$localeCodeAtom.context.conditionallyRunInAction(() {
      super.localeCode = value;
      _$localeCodeAtom.reportChanged();
    }, _$localeCodeAtom, name: '${_$localeCodeAtom.name}_set');
  }

  final _$endpointAtom = Atom(name: '_SettingsStore.endpoint');

  @override
  EndpointData get endpoint {
    _$endpointAtom.context.enforceReadPolicy(_$endpointAtom);
    _$endpointAtom.reportObserved();
    return super.endpoint;
  }

  @override
  set endpoint(EndpointData value) {
    _$endpointAtom.context.conditionallyRunInAction(() {
      super.endpoint = value;
      _$endpointAtom.reportChanged();
    }, _$endpointAtom, name: '${_$endpointAtom.name}_set');
  }

  final _$customSS58FormatAtom = Atom(name: '_SettingsStore.customSS58Format');

  @override
  Map<String, dynamic> get customSS58Format {
    _$customSS58FormatAtom.context.enforceReadPolicy(_$customSS58FormatAtom);
    _$customSS58FormatAtom.reportObserved();
    return super.customSS58Format;
  }

  @override
  set customSS58Format(Map<String, dynamic> value) {
    _$customSS58FormatAtom.context.conditionallyRunInAction(() {
      super.customSS58Format = value;
      _$customSS58FormatAtom.reportChanged();
    }, _$customSS58FormatAtom, name: '${_$customSS58FormatAtom.name}_set');
  }

  final _$networkNameAtom = Atom(name: '_SettingsStore.networkName');

  @override
  String get networkName {
    _$networkNameAtom.context.enforceReadPolicy(_$networkNameAtom);
    _$networkNameAtom.reportObserved();
    return super.networkName;
  }

  @override
  set networkName(String value) {
    _$networkNameAtom.context.conditionallyRunInAction(() {
      super.networkName = value;
      _$networkNameAtom.reportChanged();
    }, _$networkNameAtom, name: '${_$networkNameAtom.name}_set');
  }

  final _$networkStateAtom = Atom(name: '_SettingsStore.networkState');

  @override
  NetworkState get networkState {
    _$networkStateAtom.context.enforceReadPolicy(_$networkStateAtom);
    _$networkStateAtom.reportObserved();
    return super.networkState;
  }

  @override
  set networkState(NetworkState value) {
    _$networkStateAtom.context.conditionallyRunInAction(() {
      super.networkState = value;
      _$networkStateAtom.reportChanged();
    }, _$networkStateAtom, name: '${_$networkStateAtom.name}_set');
  }

  final _$networkConstAtom = Atom(name: '_SettingsStore.networkConst');

  @override
  Map get networkConst {
    _$networkConstAtom.context.enforceReadPolicy(_$networkConstAtom);
    _$networkConstAtom.reportObserved();
    return super.networkConst;
  }

  @override
  set networkConst(Map value) {
    _$networkConstAtom.context.conditionallyRunInAction(() {
      super.networkConst = value;
      _$networkConstAtom.reportChanged();
    }, _$networkConstAtom, name: '${_$networkConstAtom.name}_set');
  }

  final _$contactListAtom = Atom(name: '_SettingsStore.contactList');

  @override
  ObservableList<AccountData> get contactList {
    _$contactListAtom.context.enforceReadPolicy(_$contactListAtom);
    _$contactListAtom.reportObserved();
    return super.contactList;
  }

  @override
  set contactList(ObservableList<AccountData> value) {
    _$contactListAtom.context.conditionallyRunInAction(() {
      super.contactList = value;
      _$contactListAtom.reportChanged();
    }, _$contactListAtom, name: '${_$contactListAtom.name}_set');
  }

  final _$initAsyncAction = AsyncAction('init');

  @override
  Future<void> init(String sysLocaleCode) {
    return _$initAsyncAction.run(() => super.init(sysLocaleCode));
  }

  final _$setLocalCodeAsyncAction = AsyncAction('setLocalCode');

  @override
  Future<void> setLocalCode(String code) {
    return _$setLocalCodeAsyncAction.run(() => super.setLocalCode(code));
  }

  final _$loadLocalCodeAsyncAction = AsyncAction('loadLocalCode');

  @override
  Future<void> loadLocalCode() {
    return _$loadLocalCodeAsyncAction.run(() => super.loadLocalCode());
  }

  final _$setNetworkStateAsyncAction = AsyncAction('setNetworkState');

  @override
  Future<void> setNetworkState(Map<String, dynamic> data) {
    return _$setNetworkStateAsyncAction.run(() => super.setNetworkState(data));
  }

  final _$loadNetworkStateCacheAsyncAction =
      AsyncAction('loadNetworkStateCache');

  @override
  Future<void> loadNetworkStateCache() {
    return _$loadNetworkStateCacheAsyncAction
        .run(() => super.loadNetworkStateCache());
  }

  final _$setNetworkConstAsyncAction = AsyncAction('setNetworkConst');

  @override
  Future<void> setNetworkConst(Map<String, dynamic> data) {
    return _$setNetworkConstAsyncAction.run(() => super.setNetworkConst(data));
  }

  final _$loadContactsAsyncAction = AsyncAction('loadContacts');

  @override
  Future<void> loadContacts() {
    return _$loadContactsAsyncAction.run(() => super.loadContacts());
  }

  final _$addContactAsyncAction = AsyncAction('addContact');

  @override
  Future<void> addContact(Map<String, dynamic> con) {
    return _$addContactAsyncAction.run(() => super.addContact(con));
  }

  final _$removeContactAsyncAction = AsyncAction('removeContact');

  @override
  Future<void> removeContact(AccountData con) {
    return _$removeContactAsyncAction.run(() => super.removeContact(con));
  }

  final _$updateContactAsyncAction = AsyncAction('updateContact');

  @override
  Future<void> updateContact(Map<String, dynamic> con) {
    return _$updateContactAsyncAction.run(() => super.updateContact(con));
  }

  final _$loadEndpointAsyncAction = AsyncAction('loadEndpoint');

  @override
  Future<void> loadEndpoint(String sysLocaleCode) {
    return _$loadEndpointAsyncAction
        .run(() => super.loadEndpoint(sysLocaleCode));
  }

  final _$loadCustomSS58FormatAsyncAction = AsyncAction('loadCustomSS58Format');

  @override
  Future<void> loadCustomSS58Format() {
    return _$loadCustomSS58FormatAsyncAction
        .run(() => super.loadCustomSS58Format());
  }

  final _$_SettingsStoreActionController =
      ActionController(name: '_SettingsStore');

  @override
  void setNetworkLoading(bool isLoading) {
    final _$actionInfo = _$_SettingsStoreActionController.startAction();
    try {
      return super.setNetworkLoading(isLoading);
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNetworkName(String name) {
    final _$actionInfo = _$_SettingsStoreActionController.startAction();
    try {
      return super.setNetworkName(name);
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEndpoint(EndpointData value) {
    final _$actionInfo = _$_SettingsStoreActionController.startAction();
    try {
      return super.setEndpoint(value);
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCustomSS58Format(Map<String, dynamic> value) {
    final _$actionInfo = _$_SettingsStoreActionController.startAction();
    try {
      return super.setCustomSS58Format(value);
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }
}
