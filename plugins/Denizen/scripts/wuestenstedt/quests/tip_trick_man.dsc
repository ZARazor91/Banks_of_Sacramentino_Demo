tip_in:
  type: assignment
  debug: false
  actions:
    on click:
      - if <player.item_in_hand.has_display> && <player.item_in_hand.material.equals[paper]>:
        - run bekehrer_t def:true
      - else:
        - if <server.flag[quest]>:
          - chat <script[lang].data_key[tip_start.<server.flag[lang]>].parsed>
          - wait 3

          - if <server.flag[bue_var].equals[1]>:
            - chat <script[lang].data_key[tip_buecher.<server.flag[lang]>].parsed>

          - if <server.flag[sch_var].equals[1]>:
            - chat <script[lang].data_key[tip_schwert.<server.flag[lang]>].parsed>

          - if <server.flag[ber_var].equals[1]>:
            - chat <script[lang].data_key[tip_bernd.<server.flag[lang]>].parsed>

          - if <server.flag[flo_var].equals[1]>:
            - chat <script[lang].data_key[tip_flower.<server.flag[lang]>].parsed>

          - if <server.flag[leh_var].equals[1]>:
            - chat <script[lang].data_key[tip_schwaemme.<server.flag[lang]>].parsed>

          - if <server.flag[hun_var].equals[1]>:
            - chat <script[lang].data_key[tip_hungersnot.<server.flag[lang]>].parsed>

          - if <server.flag[dea_var].equals[1]>:
            - chat <script[lang].data_key[tip_dealer.<server.flag[lang]>].parsed>

          - if <server.flag[bek_var].equals[1]>:
            - chat <script[lang].data_key[tip_bekehrer.<server.flag[lang]>].parsed>
        - else :
          - chat <script[lang].data_key[tip_hilfe.<server.flag[lang]>].parsed>