schmied_dorf_a:
  type: assignment
  debug: false
  actions:
    on click:
      - if <server.flag[bek_var].equals[1]> && <player.item_in_hand.material.equals[<material[paper[display=<script[lang].data_key[bek_item.<server.flag[lang]>]>]]>]>:
        - run bekehrer_t def:false
      - else:
        - chat <script[lang].data_key[gruss.<server.flag[lang]>].parsed>
        - inventory open d:schmied_dorf_i

schmied_dorf_i:
  type: inventory
  inventory: chest
  title: <script[lang].data_key[shop.<server.flag[lang]>].parsed>
  size: 18
  gui: true
  slots:
  - [s_leather_helmet] [s_leather_chestplate] [s_iron_helmet] [s_iron_chestplate] [s_chainmail_helmet] [s_chainmail_chestplate] [s_bow] [s_iron_sword] [s_diamond_sword]
  - [s_leather_leggings] [s_leather_boots] [s_iron_leggings] [s_iron_boots] [s_chainmail_leggings] [s_chainmail_boots] [s_arrow] [] []

schmied_dorf_h:
  type: world
  debug: false
  events:
    on player clicks item in schmied_dorf_i:
      - if <context.item.has_flag[price]>:
        - run kaufen_t def:<context.item.flag[price]>|<context.item.material>|<player.target.name>