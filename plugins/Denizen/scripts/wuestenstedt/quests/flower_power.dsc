flower_in:
  type: assignment
  debug: false
  actions:
    on click:
      - if <player.item_in_hand.has_display> && <player.item_in_hand.material.equals[paper]>:
        - run bekehrer_t def:false
      - else:
        - choose <server.flag[flo_var]>:
          - case 0:
            - if !<server.flag[nah]>:
              - if !<server.flag[quest]>:
                - chat <script[lang].data_key[flo_start.<server.flag[lang]>].parsed>
                - run wahl_t def:flo_var|1|0|quest_frage
                - waituntil !<server.flag[nah]>
                - if <server.flag[flo_var].equals[1]>:
                  - narrate "<script[lang].data_key[quest_gestartet.<server.flag[lang]>].parsed> <script[lang].data_key[flo_name.<server.flag[lang]>].parsed>"
                  - chat <script[lang].data_key[flo_annahme.<server.flag[lang]>].parsed>
                  - flag server curNPC:<npc.id>
                  - flag server quest:true
                  - run 14_task
                - else:
                  - chat <script[lang].data_key[flo_ablehnung.<server.flag[lang]>].parsed>
              - else:
                - narrate <script[lang].data_key[hat_quest.<server.flag[lang]>].parsed>

          - case 1:
            - if <player.inventory.contains_item[bone_meal].quantity[12]> && <player.item_in_hand.material.equals[<material[bone_meal]>]>:
              - chat <script[lang].data_key[flo_abgabe.<server.flag[lang]>].parsed>
              - toast <script[lang].data_key[quest_beendet.<server.flag[lang]>].parsed><script[lang].data_key[flo_name.<server.flag[lang]>].parsed> icon:nether_star frame:goal
              - narrate <green>150<script[lang].data_key[summe_erhalten.<server.flag[lang]>].parsed>
              - take item:bone_meal quantity:12
              - give money quantity:150
              - flag server flo_var:2
              - flag server quest:false
              - adjust <npc[16]> hologram_line_height:0.25
              - adjust <npc[16]> "hologram_lines:<list[[ <yellow>! <white>]]>"
            - else:
              - chat <script[lang].data_key[flo_frage.<server.flag[lang]>].parsed>

          - case 2:
            - chat <script[lang].data_key[gruss.<server.flag[lang]>].parsed>

    on exit proximity:
      - flag server nah:false

14_task:
  type: task
  debug: false
  script:
  - sidebar set title:<script[lang].data_key[sidebar_quest.<server.flag[lang]>].parsed>
  - flag server side_changed:true
  - while <server.flag[quest]>:
    - if <player.inventory.contains_item[bone_meal].quantity[12]>:
      - sidebar set_line scores:2 values:<script[lang].data_key[flo_sidebar_ch.<server.flag[lang]>].parsed>
      - if !<server.flag[side_changed]>:
        - adjust <npc[14]> "hologram_lines:<list[[ <yellow>? <white>]]>"
        - flag server side_changed:true
    - else:
      - sidebar set_line scores:2 values:<script[lang].data_key[flo_sidebar_un.<server.flag[lang]>].parsed>
      - if <server.flag[side_changed]>:
        - adjust <npc[14]> "hologram_lines:<list[[ <gray>? <white>]]>"
        - flag server side_changed:false
    - wait 0.01s
  - sidebar remove
  - flag server side_changed:!
  - adjust <npc[14]> hologram_lines:<list[]>