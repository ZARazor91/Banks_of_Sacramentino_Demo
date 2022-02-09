schwaemme_in:
  type: assignment
  debug: false
  actions:
    on click:
      - if <server.flag[bek_var].equals[1]> && <player.item_in_hand.material.equals[<material[paper[display=<script[lang].data_key[bek_item.<server.flag[lang]>]>]]>]>:
        - run bekehrer_t def:true
      - else:
        - choose <server.flag[leh_var]>:
          - case 0:
            - if !<server.flag[nah]>:
              - if !<server.flag[quest]>:
                - chat <script[lang].data_key[leh_start.<server.flag[lang]>].parsed>
                - run wahl_t def:leh_var|1|0|quest_frage
                - waituntil !<server.flag[nah]>
                - if <server.flag[leh_var].equals[1]>:
                  - narrate "<script[lang].data_key[quest_gestartet.<server.flag[lang]>].parsed> <script[lang].data_key[leh_name.<server.flag[lang]>].parsed>"
                  - chat <script[lang].data_key[leh_annahme.<server.flag[lang]>].parsed>
                  - flag server curNPC:<npc.name>
                  - flag server quest:true
                  - run schwaemme_task
                - else:
                  - chat <script[lang].data_key[leh_ablehnung.<server.flag[lang]>].parsed>
              - else:
                - narrate <script[lang].data_key[hat_quest.<server.flag[lang]>].parsed>

          - case 1:
            - if <player.inventory.contains_item[sponge].quantity[8]> && <player.item_in_hand.material.equals[<material[sponge]>]>:
              - chat <script[lang].data_key[leh_abgabe.<server.flag[lang]>].parsed>
              - toast <script[lang].data_key[quest_beendet.<server.flag[lang]>].parsed><script[lang].data_key[leh_name.<server.flag[lang]>].parsed> icon:nether_star frame:goal
              - narrate <script[lang].data_key[leh_lohn.<server.flag[lang]>].parsed>
              - take item:sponge quantity:8
              - give item:glowstone_dust quantity:1
              - flag server leh_var:2
              - flag server quest:false
            - else:
              - chat <script[lang].data_key[leh_frage.<server.flag[lang]>].parsed>

          - case 2:
            - chat <script[lang].data_key[gruss.<server.flag[lang]>].parsed>

    on exit proximity:
      - flag server nah:false

schwaemme_task:
  type: task
  debug: false
  script:
  - sidebar set title:<script[lang].data_key[sidebar_quest.<server.flag[lang]>].parsed>
  - flag server side_changed:true
  - while <server.flag[quest]>:
    - if <player.inventory.contains_item[sponge].quantity[8]>:
      - sidebar set_line scores:2 values:<script[lang].data_key[leh_sidebar_ch.<server.flag[lang]>].parsed>
      - if !<server.flag[side_changed]>:
        - adjust <npc[1]> "hologram_lines:<list[[ <yellow>? <white>]]>"
        - flag server side_changed:true
    - else:
      - sidebar set_line scores:2 values:<script[lang].data_key[leh_sidebar_un.<server.flag[lang]>].parsed>
      - if <server.flag[side_changed]>:
        - adjust <npc[1]> "hologram_lines:<list[[ <gray>? <white>]]>"
        - flag server side_changed:false
    - wait 0.01s
  - sidebar remove
  - flag server side_changed:!
  - adjust <npc[1]> hologram_lines:<list[]>