wg_w:
  type: world
  debug: false
  events:
    on player exits play_area:
      - determine passively cancelled
      - actionbar <script[lang].data_key[d_play_area.<server.flag[lang]>].parsed>

    on mob spawns priority:1:
      - determine cancelled

    on cow|chicken|pig spawns in:farm_1 priority:2 ignorecancelled:true:
      - determine cancelled:false