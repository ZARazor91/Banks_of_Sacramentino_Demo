hunger_in:
  type: assignment
  debug: false
  actions:
    on click:
      - if <player.item_in_hand.has_display> && <player.item_in_hand.material.equals[<material[paper]>]>:
        - run bekehrer_t def:true
      - else :
        - choose <server.flag[hun_var]>:
          - case 0:
            - if !<server.flag[nah]>:
              - if !<server.flag[quest]>:
                - chat <script[lang].data_key[hun_start.<server.flag[lang]>].parsed>
                - run wahl_t def:hun_var|1|0|quest_frage
                - waituntil !<server.flag[nah]>
                - if <server.flag[hun_var].equals[1]>:
                  - narrate "<script[lang].data_key[quest_gestartet.<server.flag[lang]>].parsed> <script[lang].data_key[hun_name.<server.flag[lang]>].parsed>"
                  - chat <script[lang].data_key[hun_annahme.<server.flag[lang]>].parsed>
                  - flag server curNPC:<npc.id>
                  - flag server quest:true
                  - run 13_task
                - else:
                  - chat <script[lang].data_key[hun_ablehnung.<server.flag[lang]>].parsed>
              - else:
                - narrate <script[lang].data_key[hat_quest.<server.flag[lang]>].parsed>

          - case 1:
            - if <player.inventory.contains_item[cooked_beef].quantity[20]> && <player.inventory.contains_item[egg].quantity[10]> && <player.inventory.contains_item[bread].quantity[10]>:
              - chat <script[lang].data_key[hun_abgabe.<server.flag[lang]>].parsed>
              - toast <script[lang].data_key[quest_beendet.<server.flag[lang]>].parsed><script[lang].data_key[hun_name.<server.flag[lang]>].parsed> icon:nether_star frame:goal
              - narrate <green>250<script[lang].data_key[summe_erhalten.<server.flag[lang]>].parsed>
              - narrate <script[lang].data_key[hun_lohn.<server.flag[lang]>].parsed>
              - take item:egg quantity:10
              - take item:bread quantity:10
              - take item:cooked_beef quantity:20
              - give money quantity:250
              - give item:enchanted_golden_apple quantity:1
              - flag server hun_var:2
              - flag server quest:false
            - else:
              - chat <script[lang].data_key[hun_frage.<server.flag[lang]>].parsed>

          - case 2:
            - chat <script[lang].data_key[gruss.<server.flag[lang]>].parsed>

    on exit proximity:
      - flag server nah:false

13_task:
  type: task
  debug: false
  script:
  - sidebar set title:<script[lang].data_key[sidebar_quest.<server.flag[lang]>].parsed>
  - foreach <list[side_changed1|side_changed2|side_changed3]>:
    - flag server <[value]>:true
  - while <server.flag[quest]>:
    - if <player.inventory.contains_item[cooked_beef].quantity[20]>:
      - sidebar set_line scores:2 values:<script[lang].data_key[hun_sidebar1_ch.<server.flag[lang]>].parsed>
      - if !<server.flag[side_changed1]>:
        - adjust <npc[13]> "hologram_lines:<list[[ <yellow>? <white>]]>"
        - flag server side_changed1:true
    - else:
      - sidebar set_line scores:2 values:<script[lang].data_key[hun_sidebar1_un.<server.flag[lang]>].parsed>
      - if <server.flag[side_changed1]>:
        - adjust <npc[13]> "hologram_lines:<list[[ <gray>? <white>]]>"
        - flag server side_changed1:false

    - if <player.inventory.contains_item[egg].quantity[10]>:
      - sidebar set_line scores:3 values:<script[lang].data_key[hun_sidebar2_ch.<server.flag[lang]>].parsed>
      - if !<server.flag[side_changed2]>:
        - adjust <npc[13]> "hologram_lines:<list[[ <yellow>? <white>]]>"
        - flag server side_changed2:true
    - else:
      - sidebar set_line scores:3 values:<script[lang].data_key[hun_sidebar2_un.<server.flag[lang]>].parsed>
      - if <server.flag[side_changed2]>:
        - adjust <npc[13]> "hologram_lines:<list[[ <gray>? <white>]]>"
        - flag server side_changed2:false

    - if <player.inventory.contains_item[bread].quantity[10]>:
      - sidebar set_line scores:4 values:<script[lang].data_key[hun_sidebar3_ch.<server.flag[lang]>].parsed>
      - if !<server.flag[side_changed3]>:
        - adjust <npc[13]> "hologram_lines:<list[[ <yellow>? <white>]]>"
        - flag server side_changed3:true
    - else:
      - sidebar set_line scores:4 values:<script[lang].data_key[hun_sidebar3_un.<server.flag[lang]>].parsed>
      - if <server.flag[side_changed3]>:
        - adjust <npc[13]> "hologram_lines:<list[[ <gray>? <white>]]>"
        - flag server side_changed3:false
    - wait 0.01s
  - sidebar remove
  - foreach <list[side_changed1|side_changed2|side_changed3]>:
    - flag server <[value]>:!
  - adjust <npc[13]> hologram_lines:<list[]>