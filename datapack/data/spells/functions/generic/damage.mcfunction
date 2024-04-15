tag @s add damaging

execute at @e[type=#spells:enemy,distance=..1.35,tag=!damaging] run function spells:generic/indicator

execute as @e[type=#spells:enemy,distance=..1.35,tag=!damaging] store result score @s health run data get entity @s Health
scoreboard players operation @e[type=#spells:enemy,distance=..1.35,tag=!damaging] health -= @s damage

execute as @e[type=#spells:enemy,distance=..1.35,tag=!damaging] store result entity @s Health float 1 run scoreboard players get @s health

tag @s remove damaging