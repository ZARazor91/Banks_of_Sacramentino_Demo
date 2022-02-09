wahl_t:
  type: task
  debug: false
  definitions: var|wert1|wert2|frage
  script:
    - narrate "<&nl><script[lang].data_key[<[frage]>.<server.flag[lang]>].parsed> <script[lang].data_key[auswahl.<server.flag[lang]>].parsed>"
    - flag server nah:true
    - waituntil !<server.flag[nah]> || <server.flag[wahl]> != 0
    - if <server.flag[wahl]> == 1 :
      - flag server <[var]>:<[wert1]>
      - flag server wahl:0
      - flag server nah:false
    - else :
      - flag server <[var]>:<[wert2]>
      - flag server wahl:0
      - flag server nah:false

wahl_c:
  type: command
  debug: false
  name: wahl
  description: Not for normal use
  usage: /wahl
  script:
    - if <server.flag[nah]>:
      - if <context.args> == <list[a6105c0a611b41b08f1209506350279e]>:
        - flag server wahl:1
      - else if <context.args> == <list[7fa3b767c460b54a2be4d49030b349c7]>:
        - flag server wahl:2