bernd_in:
  type: assignment
  debug: false
  actions:
    on click:
      - inject bekehrer_t
      - choose <server.flag[ber_var]>:
        - case 0:
          - if !<server.flag[nah]> && <server.flag[flo_var].equals[2]>:
            - if !<server.flag[quest]>:
              - chat <script[lang].data_key[ber_start.<server.flag[lang]>].parsed>
              - run wahl_t def:ber_var|1|0|quest_frage
              - waituntil !<server.flag[nah]>
              - if <server.flag[ber_var].equals[1]>:
                - narrate "<script[lang].data_key[quest_gestartet.<server.flag[lang]>].parsed> <script[lang].data_key[ber_name.<server.flag[lang]>].parsed>"
                - chat <script[lang].data_key[ber_annahme.<server.flag[lang]>].parsed>
                - modifyblock bernd_button stone_button
                - flag server curNPC:<npc.id>
                - flag server quest:true
                - run 16_task
              - else:
                - chat <script[lang].data_key[bue_ablehnung.<server.flag[lang]>].parsed>
            - else:
              - narrate <script[lang].data_key[hat_quest.<server.flag[lang]>].parsed>

        - case 1:
          - if <player.inventory.contains_item[bone_meal].quantity[12]> && <player.item_in_hand.material.equals[<material[bone_meal]>]>:
            - chat <script[lang].data_key[ber_abgabe.<server.flag[lang]>].parsed>
            - toast <script[lang].data_key[quest_beendet.<server.flag[lang]>].parsed><script[lang].data_key[ber_name.<server.flag[lang]>].parsed> icon:nether_star frame:goal
            - narrate "<green>120 <script[lang].data_key[summe_erhalten.<server.flag[lang]>].parsed>"
            - take item:bone_meal quantity:12
            - give money quantity:120
            - flag server ber_var:2
            - flag server quest:false
          - else:
            - chat <script[lang].data_key[ber_frage.<server.flag[lang]>].parsed>

        - case 2:
          - chat <script[lang].data_key[gruss.<server.flag[lang]>].parsed>

    on exit proximity:
      - flag server nah:false

16_task:
  type: task
  debug: false
  script:
  - sidebar set title:<script[lang].data_key[sidebar_quest.<server.flag[lang]>].parsed>
  - flag server side_changed:true
  - while <server.flag[quest]>:
    - if <player.inventory.contains_item[bone_meal].quantity[12]>:
      - sidebar set_line scores:2 values:<script[lang].data_key[ber_sidebar_ch.<server.flag[lang]>].parsed>
      - if !<server.flag[side_changed]>:
        - adjust <npc[16]> "hologram_lines:<list[[ <yellow>? <white>]]>"
        - flag server side_changed:true
    - else:
      - sidebar set_line scores:2 values:<script[lang].data_key[ber_sidebar_un.<server.flag[lang]>].parsed>
      - if <server.flag[side_changed]>:
        - adjust <npc[16]> "hologram_lines:<list[[ <gray>? <white>]]>"
        - flag server side_changed:false
    - wait 0.01s
  - sidebar remove
  - flag server side_changed:!
  - adjust <npc[16]> hologram_lines:<list[]>