bekehrer_in:
  type: assignment
  actions:
    on click:
      - if <player.item_in_hand.has_display> && <player.item_in_hand.display.equals[<script[lang].data_key[bek_item.<server.flag[lang]>]>]>:
        - run bekehrer_t def:true
      - else:
        - choose <server.flag[bek_var]>:
          - case 0:
            - if !<server.flag[nah]>:
              - if !<server.flag[quest]>:
                - chat <script[lang].data_key[bek_start.<server.flag[lang]>].parsed>
                - run wahl_t def:bek_var|1|0|quest_frage
                - waituntil !<server.flag[nah]>
                - if <server.flag[bek_var].equals[1]>:
                  - narrate "<script[lang].data_key[quest_gestartet.<server.flag[lang]>].parsed> <script[lang].data_key[bek_name.<server.flag[lang]>].parsed>"
                  - chat <script[lang].data_key[bek_annahme.<server.flag[lang]>].parsed>
                  - give item:<item[paper[display_name=<script[lang].data_key[bek_item.<server.flag[lang]>].parsed>]]> quantity:10
                  - flag server curNPC:<npc.id>
                  - flag server quest:true
                  - flag server bek_c_var:0
                  - flag server bek_d:<list[]>
                  - run 10_task
                - else:
                  - chat <script[lang].data_key[bek_ablehnung.<server.flag[lang]>].parsed>
              - else:
                - narrate <script[lang].data_key[hat_quest.<server.flag[lang]>].parsed>

          - case 1:
            - if <server.flag[bek_c_var].equals[10]>:
              - chat <script[lang].data_key[bek_abgabe.<server.flag[lang]>].parsed>
              - toast <script[lang].data_key[quest_beendet.<server.flag[lang]>].parsed><script[lang].data_key[bek_name.<server.flag[lang]>].parsed> icon:nether_star frame:goal
              - narrate <green>100<script[lang].data_key[summe_erhalten.<server.flag[lang]>].parsed>
              - give money quantity:100
              - flag server bek_var:2
              - flag server bek_c_var:!
              - flag server quest:false
            - else:
              - chat <script[lang].data_key[bek_frage.<server.flag[lang]>].parsed>

          - case 2:
            - chat <script[lang].data_key[gruss.<server.flag[lang]>].parsed>

    on exit proximity:
      - flag server nah:false

10_task:
  type: task
  debug: false
  script:
  - sidebar set title:<script[lang].data_key[sidebar_quest.<server.flag[lang]>].parsed>
  - sidebar set_line scores:2 values:<script[lang].data_key[bek_sidebar_un.<server.flag[lang]>].parsed>
  - adjust <npc[10]> "hologram_lines:<list[[ <gray>? <white>]]>"
  - waituntil <server.flag[bek_c_var].equals[10]>
  - sidebar set_line scores:2 values:<script[lang].data_key[bek_sidebar_ch.<server.flag[lang]>].parsed>
  - adjust <npc[10]> "hologram_lines:<list[[ <yellow>? <white>]]>"
  - waituntil !<server.flag[quest]>
  - sidebar remove
  - adjust <npc[10]> hologram_lines:<list[]>