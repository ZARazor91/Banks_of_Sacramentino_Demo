bekehrer_t:
  type: task
  debug: false
  definitions: abgabe
  script:
    - if <server.flag[bek_var].equals[1]>:
      - if <player.item_in_hand.equals[<item[paper[display_name=<script[lang].data_key[bek_item.<server.flag[lang]>].parsed>;quantity=<player.item_in_hand.quantity>]]>]> || <player.item_in_hand.equals[<item[paper[display_name=<script[lang].data_key[bek_item.<server.flag[lang]>].parsed>]]>]>:
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
        - narrate <script[lang].data_key[hat_quest.<server.flag[lang]>].parsed>
    - else:
      - chat <script[lang].data_key[gruss.<server.flag[lang]>].parsed>