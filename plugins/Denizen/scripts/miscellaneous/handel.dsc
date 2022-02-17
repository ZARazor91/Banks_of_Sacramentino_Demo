kaufen_t:
  type: task
  debug: false
  definitions: summe|item|npc
  script:
    - if <player.money.is_more_than_or_equal_to[<[summe]>]>:
      - narrate "<gold><[npc]>:<white> <script[lang].data_key[item_gekauft.<server.flag[lang]>].parsed>"
      - take money quantity:<[summe]>
      - if <definition[item].equals[potion]>:
        - give item:potion[potion_effects=FIRE_RESISTANCE,false,false;display_name=<&r><script[lang].data_key[bier.<server.flag[lang]>].parsed>]
      - else:
        - give item:<[item].after[@]>
    - else:
      - narrate "<gold><[npc]>:<white> <script[lang].data_key[item_geld_fehlt.<server.flag[lang]>].parsed>"

verkaufen_t:
  type: task
  debug: false
  definitions: summe|item|npc
  script:
    - if <player.inventory.contains_item[<[item].after[@]>]>:
      - narrate "<gold><[npc]>:<white> <script[lang].data_key[item_verkauft.<server.flag[lang]>].parsed>"
      - give money quantity:<[summe]>
      - take item:<[item].after[@]>
    - else :
      - narrate "<gold><[npc]>:<white> <script[lang].data_key[item_item_fehlt.<server.flag[lang]>].parsed>"