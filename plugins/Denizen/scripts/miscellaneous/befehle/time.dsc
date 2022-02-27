time_cmd:
  type: command
  debug: false
  name: time
  usage: /time
  description: Time
  script:
    - define hour <player.world.time.div[1000].add[6].truncate>
    - define minute <player.world.time.div[1000].add[6].sub[<[hour]>].mul[0.6].mul[100].truncate>
    - if <[minute].is_less_than_or_equal_to[9]>:
      - define minute 0<[minute]>
    - if <server.flag[lang].equals[ger]>:
      - define hour <player.world.time.div[1000].add[6].truncate>
      - if <player.world.time.div[1000].add[6].is_more_than_or_equal_to[24]>:
        - define hour <[hour].sub[24]>
      - if <[hour].is_less_than_or_equal_to[9]>:
        - define hour 0<[hour]>
    - else:
      - if <player.world.time.div[1000].add[6].is_more_than[24]>:
        - define hour <[hour].sub[24]>
      - if <[hour].is_less_than[12]> || <[hour].equals[24]>:
        - define app AM
        - if <[hour].equals[0]> || <[hour].equals[24]>:
          - define hour 12
      - else:
        - define app PM
        - if !<[hour].equals[12]>:
          - define hour <[hour].sub[12]>
      - if <[hour].is_less_than_or_equal_to[9]>:
        - define hour 0<[hour]>
    - narrate <script[lang].data_key[d_time.<server.flag[lang]>].parsed>