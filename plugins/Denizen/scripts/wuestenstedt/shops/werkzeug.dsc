werkzeughaendler_dorf_a:
  type: assignment
  debug: false
  actions:
    on click:
      - inject bekehrer_t
      - chat <script[lang].data_key[gruss.<server.flag[lang]>].parsed>
      - inventory open d:werkzeughaendler_dorf_i

werkzeughaendler_dorf_i:
  type: inventory
  inventory: chest
  title: <script[lang].data_key[shop.<server.flag[lang]>].parsed>
  size: 18
  gui: true
  slots:
  - [s_string] [s_glass_bottle] [s_compass] [s_fishing_rod] [s_iron_hoe] [s_shears] [s_lead] [s_writable_book] []

werkzeughaendler_dorf_h:
  type: world
  debug: false
  events:
    on player clicks item in werkzeughaendler_dorf_i:
      - if <context.item.has_flag[price]>:
        - run kaufen_t def:<context.item.flag[price]>|<context.item.material>|<player.target.name>