bekehrer_t:
  type: task
  debug: false
  definitions: abgabe
  script:
    - if <player.item_in_hand.has_display> && <player.item_in_hand.material.equals[<material[paper]>]>:
      - if <[abgabe]>:
        - if !<server.flag[bek_d].contains[<npc.id>]>:
          - chat <script[lang].data_key[bek_ja.<server.flag[lang]>].parsed>
          - take item:paper quantity:1
          - flag server bek_d:->:<npc.id>
          - flag server bek_c_var:++
        - else:
          - chat <script[lang].data_key[bek_hat.<server.flag[lang]>].parsed>
      - else:
        - chat <script[lang].data_key[bek_nein.<server.flag[lang]>].parsed>
    - else:
      - if <npc.id.equals[7]>:
        - chat <script[lang].data_key[gruss.<server.flag[lang]>].parsed>