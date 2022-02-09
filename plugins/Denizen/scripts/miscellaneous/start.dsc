lang_Inventory:
  type: inventory
  debug: false
  inventory: chest
  title: Sprache / Language
  size: 9
  gui: true
  slots:
  - [] [] [] [l_ger] [] [l_eng] [] [] []

language_Handler:
  type: world
  debug: true
  events:
    on player joins:
      - wait 0.1s
      - adjust <player> "send_server_brand:<green>Banks of Sacramentino <yellow>1.18.1 <red>DEMO<white>"
      - if !<list[ZARazor91|D0N_H_].contains[<player.name>]> && <server.online_players.size.is_more_than[1]>:
        - adjust <player> gamemode:spectator
        - stop
      - if !<server.has_flag[init]>:
        - teleport <player> <location[445.5,64,98.5,0,180,world]>
        - time 0t
        - flag server nah:false
        - flag server quest:false
        - flag server checked:☒
        - flag server unchecked:☐
        - foreach <list[wahl|sch_var|bek_var|bue_var|ber_var|rei_var|leh_var|hun_var|dea_var|flo_var|money]>:
          - flag server <[value]>:0
        - foreach <list[0|1|6|8|10|13|14|17]>:
          - adjust <npc[<[value]>]> hologram_line_height:0.25
          - adjust <npc[<[value]>]> "hologram_lines:<list[[ <yellow>! <white>]]>"
        - money set quantity:0
        - flag server init:true

      - if !<server.has_flag[lang]>:
        - title "title:Banks of Sacramentino <red>DEMO" "subtitle:<green>A MC-Adventure by ZARazor91 & D0N_H_"
        - wait 5.5s
        - inventory open d:lang_Inventory

    on player clicks l_* in lang_Inventory:
      - flag server lang:<context.item.after[_].before[<&rb>]>
      - actionbar <script[lang].data_key[d_sprache.<server.flag[lang]>].parsed>
      - run <context.item.after[_].before[<&rb>]>_i
      - inventory close

    on player closes lang_Inventory:
      - if !<server.has_flag[lang]>:
        - wait 0.001s
        - inventory open d:lang_Inventory