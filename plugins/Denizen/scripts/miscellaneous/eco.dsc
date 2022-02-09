eco_script:
  type: economy
  debug: true

  priority: highest
  name single: Thaler
  name plural: Thalers
  digits: 2
  format: T<[amount]>
  balance: <server.flag[money]>
  has: <server.flag[money].is[or_more].than[<[amount]>]>
  withdraw:
  - flag server money:-:<[amount]>
  deposit:
  - flag server money:+:<[amount]>