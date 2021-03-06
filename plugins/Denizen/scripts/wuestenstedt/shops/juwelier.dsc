juwelier_dorf_a:
  type: assignment
  debug: false
  actions:
    on click:
      - inject bekehrer_t
      - chat <script[lang].data_key[gruss.<server.flag[lang]>].parsed>
      - if <player.is_sneaking>:
        - inventory open d:juwelier_dorf_buy_i
      - else :
        - inventory open d:juwelier_dorf_sell_i

juwelier_dorf_sell_i:
  type: inventory
  inventory: chest
  title: <script[lang].data_key[shop.<server.flag[lang]>].parsed>
  size: 18
  gui: true
  slots:
  - [s_gold_nugget] [s_ender_pearl] [s_diamond] [s_golden_apple] [s_emerald] [s_golden_helmet] [s_clock] [] []

juwelier_dorf_buy_i:
  type: inventory
  inventory: chest
  title: <script[lang].data_key[shop.<server.flag[lang]>].parsed>
  size: 18
  gui: true
  slots:
  - [b_emerald] [b_gold_nugget] [b_diamond] [b_clock] [] [] [] [] []

juwelier_dorf_h:
  type: world
  debug: false
  events:
    on player left clicks item in juwelier_dorf_sell_i:
      - if <context.item.has_flag[price]>:
        - run kaufen_t def:<context.item.flag[price]>|<context.item.material>|<player.target.name>

    on player left clicks item in juwelier_dorf_buy_i:
      - if <context.item.has_flag[price]>:
        - run verkaufen_t def:<context.item.flag[price]>|<context.item.material>|<player.target.name>