tag @s add got

particle flame ~ ~ ~ 0.01 0.01 0.01 0 1 force

execute positioned ~ ~-0.7 ~ if entity @e[type=#spells:enemy,distance=..1.35,tag=!got] run execute as @e[type=#spells:enemy,distance=..1.35,tag=!got] at @s run summon small_fireball ~ ~1 ~ {power:[0.0,-10000.0,0.0]}
execute positioned ~ ~-0.7 ~ if entity @e[type=#spells:enemy,distance=..1.35,tag=!got] run function spells:generic/damage

execute if block ~ ~ ~ #minecraft:my_air positioned ~ ~-0.7 ~ unless entity @e[type=#spells:enemy,distance=..1.35,tag=!got] positioned ~ ~0.7 ~ positioned ^ ^ ^1 run function spells:spells/fire/beam/raycast

tag @s remove got