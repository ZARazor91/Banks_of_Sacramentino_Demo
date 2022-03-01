reisende_in:
  type: assignment
  debug: false
  actions:
    on click:
      - inject bekehrer_t
      - choose <server.flag[rei_var]>:
        - case 0:
          - chat <script[lang].data_key[rei_start.<server.flag[lang]>].parsed>
          - flag server rei_var:1

        - case 1:
          - if <player.inventory.list_contents.filter[potion_base.equals[instant_heal,2,false,false]].any> && <player.inventory.contains_item[enchanted_golden_apple]>:
            - chat <script[lang].data_key[rei_abgabe.<server.flag[lang]>].parsed>
            - narrate <green>2000<script[lang].data_key[summe_erhalten.<server.flag[lang]>].parsed>
            - narrate <script[lang].data_key[rei_lohn.<server.flag[lang]>].parsed>
            - flag server cycle_d:false
            - repeat 36:
              - if <player.inventory.slot[<[value].sub[1]>].equals[<item[potion[potion_effects=<list[<map[type=INSTANT_HEAL;upgraded=true;extended=false]>]>]]>]>:
                - take slot:<[value].sub[1]>
                - repeat stop
            - take item:enchanted_golden_apple
            - equip npc hand:air
            - give money quantity:2000
            - give minecart quantity:1
            - flag server rei_var:2
          - else:
            - chat <script[lang].data_key[rei_frage.<server.flag[lang]>].parsed>
        - case 2:
          - chat <script[lang].data_key[gruss.<server.flag[lang]>].parsed>