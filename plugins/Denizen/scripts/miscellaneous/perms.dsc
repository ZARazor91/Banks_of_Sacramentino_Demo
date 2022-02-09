perms_w:
  type: world
  debug: false
  events:
    on player right clicks potted_*|flower_pot|item_frame:
      - determine cancelled

    on player breaks hanging:
      - determine cancelled

    on player places hanging:
      - determine cancelled

    on player breaks block:
      - if !<list[melon|vine|*_mushroom|fire|cactus|sugar_cane|pumpkin|cocoa|attached_melon_stem|melon_stem|attached_pumpkin_stem|pumpkin_stem|*_flower|*_sapling|sponge|grass|tall_grass|tripwire_hook|vine|lily_pad|cobweb|wheat].contains[<context.material.after[@].before[<&lb>]>]>:
        - if <context.location.is_within[bett_idiotus]> && <server.flag[rei_var].equals[2]>:
          - stop
        - determine cancelled

    on player places item:
      - if !<list[*_mushroom|cactus|sugar_cane|cocoa|attached_melon_stem|melon_stem|*_flower|*_sapling|grass|tall_grass|tripwire_hook|vine|lily_pad|cobweb|wheat|farmland].contains[<context.material.after[@].before[<&lb>]>]>:
        - determine cancelled

    on player damages item_frame:
      - determine cancelled

    on player fills bucket:
      - determine cancelled

    on player empties bucket:
      - determine cancelled

    on command:
      - if !<list[bos|help|money|time|wahl].contains[<context.command>]> && <context.source_type.equals[PLAYER]>:
        - narrate <script[lang].data_key[d_cmd_unknown.<server.flag[lang]>].parsed>
        - determine cancelled

    on player receives commands:
      - determine <list[bos|help|money|time]>
