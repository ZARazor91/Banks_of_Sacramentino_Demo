start_c:
  type: command
  debug: false
  name: bos
  description: BoS
  usage: /bos
  script:
    - choose <context.args.get[1]>:
      - case about:
        - narrate <script[lang].data_key[d_bos_about.<server.flag[lang]>].parsed>

      - case help:
        - narrate <script[lang].data_key[d_bos_help.<server.flag[lang]>].parsed>

      - case quest:
        - narrate <script[lang].data_key[d_bos_quest.<server.flag[lang]>].parsed>

      - case trade:
        - narrate <script[lang].data_key[d_bos_trade.<server.flag[lang]>].parsed>

      - case hints:
        - narrate <script[lang].data_key[d_bos_hints.<server.flag[lang]>].parsed>

      - default:
        - narrate <script[lang].data_key[d_bos_start.<server.flag[lang]>].parsed>
    - narrate <script[lang].data_key[d_bos_menu.<server.flag[lang]>].parsed>