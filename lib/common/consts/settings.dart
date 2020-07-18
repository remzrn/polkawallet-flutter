import 'package:polka_wallet/store/settings.dart';

EndpointData networkEndpointPolkadot = EndpointData.fromJson(const {
  'info': 'polkadot',
  'ss58': 0,
  'text': 'Polkadot (Live, hosted by Parity)',
  'value': 'wss://rpc.polkadot.io',
});

EndpointData networkEndpointKusama = EndpointData.fromJson(const {
  'info': 'kusama',
  'ss58': 2,
  'text': 'Kusama (Polkadot Canary, hosted by Polkawallet)',
  'value': 'ws://mandala-01.acala.network:9954/',
});

EndpointData networkEndpointAcala = EndpointData.fromJson(const {
  'info': 'acala-mandala',
  'ss58': 42,
  'text': 'Acala Mandala (Hosted by Polkawallet)',
  'value': 'wss://39.99.168.67/wss',
});

EndpointData networkEndpointEdgeware = EndpointData.fromJson(const {
  'info': 'edgeware',
  'ss58': 7,
  'text': 'Edgeware Mainnet #1 (hosted by Commonwealth Labs)',
  'value': 'wss://mainnet1.edgewa.re/',
});

List<EndpointData> networkEndpoints = [
  networkEndpointPolkadot,
  EndpointData.fromJson(const {
    'info': 'polkadot',
    'ss58': 0,
    'text': 'Polkadot (Live, hosted by Web3 Foundation)',
    'value': 'wss://cc1-1.polkadot.network',
  }),
  EndpointData.fromJson(const {
    'info': 'polkadot',
    'ss58': 0,
    'text': 'Polkadot (Live, hosted by Polkawallet)',
    'value': 'ws://62.171.154.98:9944',
  }),
  networkEndpointKusama,
  EndpointData.fromJson(const {
    'info': 'kusama',
    'ss58': 2,
    'text': 'Kusama (Polkadot Canary, hosted by Parity)',
    'value': 'wss://kusama-rpc.polkadot.io/',
  }),
  EndpointData.fromJson(const {
    'info': 'kusama',
    'ss58': 2,
    'text': 'Kusama (Polkadot Canary, hosted by Web3 Foundation)',
    'value': 'wss://cc3-5.kusama.network/',
  }),
//  networkEndpointAcala,
  EndpointData.fromJson(const {
    'info': 'acala-mandala',
    'ss58': 42,
    'text': 'Mandala TC3 Node 1 (Hosted by OnFinality)',
    'value':
        'wss://node-6680668387259867136.jm.onfinality.io/ws?apikey=a382f87e-cf1d-4d64-ad0d-8d0869f12bfb'
  }),
//  EndpointData.fromJson(const {
//    'info': 'acala-mandala',
//    'ss58': 42,
//    'text': 'Mandala TC3 Node 2 (Hosted by OnFinality)',
//    'value': 'wss://node-6661046769218965504.rz.onfinality.io/ws'
//  }),
//  EndpointData.fromJson(const {
//    'info': 'acala-mandala',
//    'ss58': 42,
//    'text': 'Acala Mandala (Hosted by Acala Network)',
//    'value': 'wss://testnet-node-1.acala.laminar.one/ws',
//  }),
  networkEndpointEdgeware,
  EndpointData.fromJson(const {
    'info': 'edgeware',
    'ss58': 7,
    'text': 'Edgeware Mainnet #2 (hosted by Commonwealth Labs)',
    'value': 'wss://mainnet2.edgewa.re/',
  }),
  EndpointData.fromJson(const {
    'info': 'edgeware',
    'ss58': 7,
    'text': 'Edgeware Mainnet #3 (hosted by Commonwealth Labs)',
    'value': 'wss://mainnet3.edgewa.re/',
  }),
  EndpointData.fromJson(const {
    'info': 'edgeware',
    'ss58': 7,
    'text': 'Edgeware Mainnet #4 (hosted by Commonwealth Labs)',
    'value': 'wss://mainnet4.edgewa.re/',
  }),
  EndpointData.fromJson(const {
    'info': 'edgeware',
    'ss58': 7,
    'text': 'Edgeware Mainnet #5 (hosted by Commonwealth Labs)',
    'value': 'wss://mainnet5.edgewa.re/',
  }),
];

const network_ss58_map = {
  'acala': 42,
  'kusama': 2,
  'substrate': 42,
  'polkadot': 0,
  'edgeware': 7,
};

const int acala_token_decimals = 18;

const int SECONDS_OF_DAY = 24 * 60 * 60; // seconds of one day
const int SECONDS_OF_YEAR = 365 * 24 * 60 * 60; // seconds of one year

const String acala_stable_coin = 'AUSD';
const String acala_stable_coin_view = 'aUSD';

/// test app versions
const String app_beta_version = '0.7.7-beta.4';
