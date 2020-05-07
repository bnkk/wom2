summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["dc_tpCloud"]}
execute as @e[sort=nearest,tag=dc_tpCloud] run function death_coords:tp_coords_cloud