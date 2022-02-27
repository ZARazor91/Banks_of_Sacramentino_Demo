kassierer_dorf_a:
  type: assignment
  debug: false
  actions:
    on click:
      - if <player.item_in_hand.has_display> && <player.item_in_hand.material.equals[<material[paper]>]>:
        - run bekehrer_t def:true
      - else :
        - chat <script[lang].data_key[gruss.<server.flag[lang]>].parsed>
        - inventory open d:kassierer_dorf_i

kassierer_dorf_i:
  type: inventory
  inventory: chest
  title: <script[lang].data_key[shop.<server.flag[lang]>].parsed>
  size: 18
  gui: true
  slots:
  - [s_chicken] [s_salmon] [s_apple] [s_bread] [s_carrot] [s_potato] [s_brown_mushroom] [s_red_mushroom] [s_beef]
  - [s_porkchop] [s_melon] [s_cake] [s_cookie] [s_egg] [s_mushroom_stew] [] [] []

kassierer_dorf_h:
  type: world
  debug: false
  events:
    on player left clicks item in kassierer_dorf_i:
      - if <context.item.has_flag[price]>:
        - run kaufen_t def:<context.item.flag[price]>|<context.item.material>|<player.target.name>