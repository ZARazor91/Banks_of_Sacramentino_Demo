dealer_in:
  type: assignment
  debug: false
  actions:
    on click:
      - inject bekehrer_t
      - if <npc.id.equals[17]>:
        - choose <server.flag[dea_var]>:
          - case 0:
            - if !<server.flag[nah]>:
              - if !<server.flag[quest]>:
                - chat <script[lang].data_key[dea_start.<server.flag[lang]>].parsed>
                - run wahl_t def:dea_var|1|0|quest_frage
                - waituntil !<server.flag[nah]>
                - if <server.flag[dea_var].equals[1]>:
                  - narrate "<script[lang].data_key[quest_gestartet.<server.flag[lang]>].parsed> <script[lang].data_key[dea_name.<server.flag[lang]>].parsed>"
                  - chat <script[lang].data_key[dea_annahme.<server.flag[lang]>].parsed>
                  - give money quantity:30
                  - flag server curNPC:<npc.id>
                  - flag server quest:true
                  - adjust <npc[17]> hologram_lines:<list[]>
                  - adjust <npc[18]> hologram_line_height:0.25
                  - run 17_task
                - else:
                  - chat <script[lang].data_key[dea_ablehnung.<server.flag[lang]>].parsed>
              - else:
                - narrate <script[lang].data_key[hat_quest.<server.flag[lang]>].parsed>

          - case 1:
            - if <server.flag[dea_d]>:
              - chat <script[lang].data_key[dea_abgabe.<server.flag[lang]>].parsed>
              - toast <script[lang].data_key[quest_beendet.<server.flag[lang]>].parsed><script[lang].data_key[dea_name.<server.flag[lang]>].parsed> icon:nether_star frame:goal
              - flag server dea_var:2
              - flag server quest:false
            - else:
              - chat <script[lang].data_key[dea_frage.<server.flag[lang]>].parsed>

          - case 2:
            - chat <script[lang].data_key[gruss.<server.flag[lang]>].parsed>
      - else if <player.inventory.contains_item[grass].quantity[30]> && <player.item_in_hand.material.equals[<material[grass]>]> && <server.flag[dea_var].equals[1]> && !<server.has_flag[dea_d]>:
        - chat <script[lang].data_key[dea_lieferung.<server.flag[lang]>].parsed>
        - take item:grass quantity:30
        - flag server dea_d:true

    on exit proximity:
      - flag server nah:false

17_task:
  type: task
  debug: false
  script:
  - sidebar set title:<script[lang].data_key[sidebar_quest.<server.flag[lang]>].parsed>
  - flag server side_changed:true
  - while !<server.has_flag[dea_d]>:
    - if <player.inventory.contains_item[grass].quantity[30]>:
      - sidebar set_line scores:2 values:<script[lang].data_key[dea_sidebar_ch.<server.flag[lang]>].parsed>
      - if !<server.flag[side_changed]>:
        - adjust <npc[18]> "hologram_lines:<list[[ <yellow>? <white>]]>"
        - flag server side_changed:true
    - else:
      - sidebar set_line scores:2 values:<script[lang].data_key[dea_sidebar_un.<server.flag[lang]>].parsed>
      - if <server.flag[side_changed]>:
        - adjust <npc[18]> "hologram_lines:<list[[ <gray>? <white>]]>"
        - flag server side_changed:false
    - wait 0.01s
  - adjust <npc[18]> hologram_lines:<list[]>
  - adjust <npc[17]> "hologram_lines:<list[[ <yellow>? <white>]]>"
  - sidebar set_line scores:2 values:<script[lang].data_key[dea_sidebar2_un.<server.flag[lang]>].parsed>
  - waituntil <server.flag[dea_var].equals[2]>
  - sidebar remove
  - flag server side_changed:!
  - adjust <npc[17]> hologram_lines:<list[]>