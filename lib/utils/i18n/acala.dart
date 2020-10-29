const Map<String, String> enDex = {
  'acala': 'Acala Platform',
  'airdrop': 'Airdrop',
  'dex.title': 'Swap',
  'dex.brief':
      'Decentralized token exchange with the liquid pool of the Acala platform.',
  'dex.pay': 'Payment amount',
  'dex.receive': 'Received amount',
  'dex.rate': 'Price',
  'dex.route': 'Route',
  'dex.slippage': 'Slippage',
  'dex.slippage.error': 'Valid Slippage: 0.1%~5%',
  'dex.tx.pay': 'Pay with',
  'dex.tx.receive': 'Receive',
  'loan.title': 'Self Serviced Loan',
  'loan.brief':
      'Lock your digital assets(i.e. DOT, XBTC) in Acala platform to borrow equivalent aUSD.',
  'loan.borrowed': 'My Debt',
  'loan.collateral': 'Collateral',
  'loan.borrow': 'Borrow',
  'loan.payback': 'Payback',
  'loan.deposit': 'Deposit',
  'loan.withdraw': 'Withdraw',
  'loan.withdraw.all': 'Withdraw all collateral in the meanwhile',
  'loan.create': 'Create Loan',
  'liquid.price': 'Liquidation Price',
  'liquid.ratio': 'Liquidation Ratio',
  'liquid.ratio.require': 'Required Ratio',
  'liquid.price.new': 'New Liquidation Price',
  'liquid.ratio.current': 'Current Ratio',
  'liquid.ratio.new': 'New Collateral Ratio',
  'collateral.price': 'Current Price',
  'collateral.ratio': 'Interest Rate',
  'collateral.ratio.year': 'Annual Interest Rate',
  'collateral.interest': 'Daily Interest',
  'collateral.require': 'Required',
  'borrow.able': 'Able to Borrow',
  'withdraw.able': 'Able to Withdraw',
  'loan.amount': 'Amount',
  'loan.amount.debit': 'How much would you like to borrow?',
  'loan.amount.collateral': 'How much would you deposit as collateral?',
  'loan.max': 'Max',
  'loan.txs': 'History',
  'loan.warn':
      'Debt should be greater than 1aUSD or payback all, this action will have 1aUSD debt left. Are you sure to continue?',
  'loan.warn.back': 'Back to modify',
  'txs.action': 'Action',
  'payback.small': 'The remaining debt is too small.',
  'earn.title': 'Deposit & Earn',
  'earn.brief':
      'Deposit your digital assets and stable coins into the liquid pool to earn interests and rewards',
  'earn.deposit': 'Deposit Liquidity',
  'earn.withdraw': 'Withdraw Liquidity',
  'earn.get': 'Withdraw Rewards',
  'earn.reward.year': 'Annualized Rewards',
  'earn.fee': 'Swap Fee',
  'earn.pool': 'Current Pool',
  'earn.deposit.user': 'My Deposit',
  'earn.share': 'Share',
  'earn.reward': 'Rewards',
  'earn.available': 'Available',
  'earn.stake': 'Stake',
  'earn.unStake': 'UnStake',
  'earn.staked': 'Staked',
  'earn.claim': 'Claim',
  'earn.incentive': 'Incentive',
  'earn.saving': 'Interest',
  'faucet.title': 'Faucet',
  'faucet.brief': 'Get test Tokens of Acala testnet.',
  'faucet.ok': 'Test Tokens were sent.',
  'faucet.limit': 'Exceeds limited amount.',
  'faucet.error': 'Request error, try again later.',
  'homa.title': 'Liquid DOT',
  'homa.brief':
      'Deposit DOT & Mint Liquid DOT (L-DOT). Your DOTs will be staked to earn returns, meanwhile you can use, trade and invest L-DOT balance in your wallet.',
  'homa.mint': 'Mint L-DOT',
  'homa.redeem': 'Redeem DOT',
  'homa.now': 'Redeem Now',
  'homa.era': 'Redeem in Era',
  'homa.unbond': 'Wait for Unbounding',
  'homa.pool': 'Staking Pool',
  'homa.pool.total': 'Total',
  'homa.pool.bonded': 'Total Bonded',
  'homa.pool.free': 'Total Free',
  'homa.pool.unbonding': 'Unbonding',
  'homa.pool.ratio': 'Bond Ratio',
  'homa.pool.low': 'Insufficient pool balance',
  'homa.user': 'My DOT Redeem',
  'homa.user.unbonding': 'Unbonding',
  'homa.user.time': 'Unlock Time',
  'homa.user.blocks': 'Blocks',
  'homa.user.redeemable': 'Redeemable',
  'homa.mint.profit': 'Estimated Profit / Era',
  'homa.redeem.fee': 'Claim Fee',
  'homa.redeem.era': 'Current Era',
  'homa.redeem.period': 'Unbonding Period',
  'homa.redeem.day': 'Days',
  'homa.redeem.free': 'Pool',
  'tx.fee.or': 'or equivalent in other tokens',
  'nft.title': 'NFTs',
  'nft.brief': 'NFTs on Acala network.',
  'nft.testnet-2': 'Mandala TC2 badge',
  'nft.testnet-3': 'Mandala TC3 badge',
  'nft.testnet-4': 'Mandala TC4 badge',
};

const Map<String, String> zhDex = {
  'acala': 'Acala 稳定币平台',
  'airdrop': '空投',
  'dex.title': '兑换',
  'dex.brief': '与 Acala 平台的流动性池进行去中心化 Token 交易.',
  'dex.pay': '支付数量',
  'dex.receive': '收到数量',
  'dex.rate': '价格',
  'dex.route': '兑换路径',
  'dex.slippage': '滑点',
  'dex.slippage.error': '允许的滑点范围：0.1%～5%',
  'dex.tx.pay': '支付',
  'dex.tx.receive': '收到',
  'loan.title': '自助借贷',
  'loan.brief': '将您的数字资产（如：DOT、XBTC）锁定在 Acala 平台作为质押，可以借出相应数量的 aUSD。',
  'loan.borrowed': '债务',
  'loan.collateral': '质押',
  'loan.borrow': '借贷',
  'loan.payback': '还贷',
  'loan.deposit': '存入',
  'loan.withdraw': '取出',
  'loan.withdraw.all': '同时取出所有质押物',
  'loan.create': '创建质押借贷',
  'liquid.price': '清算价格',
  'liquid.ratio': '清算质押率',
  'liquid.ratio.require': '安全质押率',
  'liquid.price.new': '新的清算价格',
  'liquid.ratio.current': '当前质押率',
  'liquid.ratio.new': '新的质押率',
  'collateral.price': '当前价格',
  'collateral.ratio': '日利率',
  'collateral.ratio.year': '年利率',
  'collateral.interest': '日利息',
  'collateral.require': '安全质押数量',
  'borrow.able': '可借',
  'withdraw.able': '可取',
  'loan.amount': '数量',
  'loan.amount.debit': '您要借出多少稳定币？',
  'loan.amount.collateral': '您要存入多少质押物？',
  'loan.max': '最大值',
  'loan.txs': '交易记录',
  'loan.warn': '借款未还清时，余额不能小于 1aUSD，本次操作还款后将剩余 1aUSD 的债务。确认继续吗？',
  'loan.warn.back': '返回修改',
  'txs.action': '操作类型',
  'payback.small': '剩余债务过小',
  'earn.title': '存款盈利',
  'earn.brief': '将你的数字资产和稳定币存入流动性池，并获取交易费收益和系统奖励。',
  'earn.deposit': '存入流动性',
  'earn.withdraw': '提取流动性',
  'earn.get': '领取奖励',
  'earn.reward.year': '年化奖励',
  'earn.fee': '交易费率',
  'earn.pool': '当前资金池',
  'earn.deposit.user': '我的存款',
  'earn.share': '份额',
  'earn.reward': '收益',
  'earn.available': '可用',
  'earn.stake': '质押',
  'earn.unStake': '提取',
  'earn.staked': '已质押',
  'earn.claim': '领取收益',
  'earn.incentive': '系统奖励',
  'earn.saving': '存款利息',
  'faucet.title': '水龙头',
  'faucet.brief': '领取 Acala 测试网使用的测试 Token.',
  'faucet.ok': '领取成功。',
  'faucet.limit': '超过领取次数了哦。',
  'faucet.error': '可能领取姿势不太对，等会儿再试试吧。',
  'homa.title': 'L-DOT 质押/提取',
  'homa.brief':
      '存入 DOT 并生成 Liquid DOT (L-DOT). 你存入的 DOT 将用于 Staking 获取收益, 同时你可以使用你钱包中的 L-DOT 进行日常交易和投资.',
  'homa.mint': '生成 L-DOT',
  'homa.redeem': '提取 DOT',
  'homa.now': '立即取回',
  'homa.era': '指定 Era',
  'homa.unbond': '等待 DOT 解锁',
  'homa.pool': '质押资金池',
  'homa.pool.total': '总量',
  'homa.pool.bonded': '绑定数量',
  'homa.pool.free': '流动数量',
  'homa.pool.unbonding': '解绑中',
  'homa.pool.ratio': '质押率',
  'homa.pool.low': '资金池余额不足',
  'homa.user': '我的 DOT 提取',
  'homa.user.unbonding': '解绑中',
  'homa.user.time': '解锁时间',
  'homa.user.blocks': '区块',
  'homa.user.redeemable': '可取回',
  'homa.mint.profit': '预估收益（每Era）',
  'homa.redeem.fee': '手续费',
  'homa.redeem.era': '当前 Era',
  'homa.redeem.period': '解锁周期',
  'homa.redeem.day': '天',
  'homa.redeem.free': '资金池',
  'tx.fee.or': '或等额其他代币',
  'nft.title': 'NFTs',
  'nft.brief': 'Acala 网络上的 NFT.',
  'nft.testnet-2': 'Mandala TC2 徽章',
  'nft.testnet-3': 'Mandala TC3 徽章',
  'nft.testnet-4': 'Mandala TC4 徽章',
};
