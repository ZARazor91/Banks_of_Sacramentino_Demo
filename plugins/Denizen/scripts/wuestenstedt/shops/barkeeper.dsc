barkeeper_dorf_a:
  type: assignment
  debug: false
  actions:
    on click:
      - if <server.flag[bek_var].equals[1]> && <player.item_in_hand.material.equals[<material[paper[display=<script[lang].data_key[bek_item.<server.flag[lang]>]>]]>]>:
        - run bekehrer_t def:true
      - else:
        - chat <script[lang].data_key[gruss.<server.flag[lang]>].parsed>
        - inventory open d:barkeeper_dorf_i

barkeeper_dorf_i:
  type: inventory
  inventory: chest
  title: <script[lang].data_key[shop.<server.flag[lang]>].parsed>
  size: 18
  gui: true
  slots:
  - [s_cooked_salmon] [s_beer] [] [] [] [] [] [] []

barkeeper_dorf_h:
  type: world
  debug: false
  events:
    on player left clicks item in barkeeper_dorf_i:
      - if <context.item.has_flag[price]>:
        - run kaufen_t def:<context.item.flag[price]>|<context.item.material>|<player.target.name>