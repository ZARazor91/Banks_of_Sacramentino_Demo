lwc_w:
  type: world
  debug: false
  events:
    on player right clicks chest in:chest_*:
      - determine passively cancelled
      - actionbar <script[lang].data_key[d_chest_locked.<server.flag[lang]>].parsed>

    on player right clicks *_fence_gate in:gate_*:
      - determine passively cancelled
      - actionbar <script[lang].data_key[d_gate_locked.<server.flag[lang]>].parsed>

    on player right clicks *_door in:door_*:
      - determine passively cancelled
      - actionbar <script[lang].data_key[d_door_locked.<server.flag[lang]>].parsed>

    on player right clicks dispenser in:dispenser_*:
      - determine cancelled

    on player right clicks oak_door ignorecancelled:false priority:1:
      - foreach <context.location.find_blocks[oak_door].within[3].exclude[<context.location>]>:
        - adjustblock <[value]> switched:<context.location.switched.not>

    on player right clicks oak_door in:shop_*:
        - define cube <cuboid[<context.location.cuboids.filter_tag[<list[<cuboid[shop_magier]>|<cuboid[shop_juwelier]>|<cuboid[shop_kassierer]>|<cuboid[shop_werkzeug]>].contains[<[filter_value]>]>].get[1].after[@]>]>
        - if <player.world.time> < <[cube].flag[time1]> || <player.world.time> > <[cube].flag[time2]>:
          - determine passively cancelled
          - actionbar <script[lang].data_key[d_store_closed.<server.flag[lang]>].parsed>
        - else:
          - wait 1.5s
          - if <context.location.switched>:
            - adjustblock <context.location> switched:false
            - foreach <context.location.find_blocks[oak_door].within[3].exclude[<context.location>]>:
              - adjustblock <[value]> switched:false
            - playsound <context.location> sound:BLOCK_WOODEN_DOOR_CLOSE