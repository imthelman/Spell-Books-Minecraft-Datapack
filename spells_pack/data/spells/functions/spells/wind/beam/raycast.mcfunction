tag @s add got

particle crit ~ ~ ~ 0.01 0.01 0.01 0 1 force

execute positioned ~ ~-0.7 ~ if entity @e[type=#spells:enemy,distance=..1.35,tag=!got] run execute as @e[type=#spells:enemy,distance=..1.35,tag=!got] run tag @s add launch_wind
execute as @e[type=#spells:enemy,tag=launch_wind] run function spells:generic/launch_wind
execute as @e[type=#spells:enemy,tag=launch_wind] run tag @e[type=#spells:enemy,tag=launch_wind] remove launch_wind

execute if block ~ ~ ~ #minecraft:my_air positioned ~ ~-0.7 ~ unless entity @e[type=#spells:enemy,distance=..1.35,tag=!got] positioned ~ ~0.7 ~ positioned ^ ^ ^1 run function spells:spells/wind/beam/raycast

tag @s remove got