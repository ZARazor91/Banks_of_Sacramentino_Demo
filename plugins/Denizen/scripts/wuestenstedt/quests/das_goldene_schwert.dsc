schwert_in:
  type: assignment
  debug: false
  actions:
    on click:
      - if <player.item_in_hand.has_display> && <player.item_in_hand.display.equals[<script[lang].data_key[bek_item.<server.flag[lang]>]>]>:
        - run bekehrer_t def:false
      - else:
        - choose <server.flag[sch_var]>:
          - case 0:
            - if !<server.flag[nah]>:
              - if !<server.flag[quest]>:
                - chat <script[lang].data_key[sch_start.<server.flag[lang]>].parsed>
                - run wahl_t def:sch_var|1|0|quest_frage
                - waituntil !<server.flag[nah]>
                - if <server.flag[sch_var].equals[1]>:
                  - narrate "<script[lang].data_key[quest_gestartet.<server.flag[lang]>].parsed> <script[lang].data_key[sch_name.<server.flag[lang]>].parsed>"
                  - chat <script[lang].data_key[sch_annahme.<server.flag[lang]>].parsed>
                  - flag server curNPC:<npc.id>
                  - flag server quest:true
                  - run 8_task
                - else:
                  - chat <script[lang].data_key[sch_ablehnung.<server.flag[lang]>].parsed>
              - else:
                - narrate <script[lang].data_key[hat_quest.<server.flag[lang]>].parsed>

          - case 1:
            - if <player.item_in_hand.contains_all_text[golden_sword]>:
              - chat <script[lang].data_key[sch_abgabe.<server.flag[lang]>].parsed>
              - toast <script[lang].data_key[quest_beendet.<server.flag[lang]>].parsed><script[lang].data_key[sch_name.<server.flag[lang]>].parsed> icon:nether_star frame:goal
              - narrate <script[lang].data_key[sch_lohn.<server.flag[lang]>].parsed>
              - flag server quest:false
              - take item:golden_sword quantity:1
              - give potion[potion_effects=<list[SPEED,true,false]>] quantity:1
              - flag server sch_var:2
            - else:
              - chat <script[lang].data_key[sch_frage.<server.flag[lang]>].parsed>

          - case 2:
            - chat <script[lang].data_key[gruss.<server.flag[lang]>].parsed>

    on exit proximity:
      - flag server nah:false

8_task:
  type: task
  debug: false
  script:
  - sidebar set title:<script[lang].data_key[sidebar_quest.<server.flag[lang]>].parsed>
  - flag server side_changed:true
  - while <server.flag[quest]>:
    - if <player.inventory.contains_item[golden_sword]>:
      - sidebar set_line scores:2 values:<script[lang].data_key[sch_sidebar_ch.<server.flag[lang]>].parsed>
      - if !<server.flag[side_changed]>:
        - adjust <npc[8]> "hologram_lines:<list[[ <yellow>? <white>]]>"
        - flag server side_changed:true
    - else:
      - sidebar set_line scores:2 values:<script[lang].data_key[sch_sidebar_un.<server.flag[lang]>].parsed>
      - if <server.flag[side_changed]>:
        - adjust <npc[8]> "hologram_lines:<list[[ <gray>? <white>]]>"
        - flag server side_changed:false
    - wait 0.01s
  - sidebar remove
  - flag server side_changed:!
  - adjust <npc[8]> hologram_lines:<list[]>