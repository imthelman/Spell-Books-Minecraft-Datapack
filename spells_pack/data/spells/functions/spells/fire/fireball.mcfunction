execute as @p positioned ~ ~1.35 ~ run summon fireball ^ ^ ^0.005 {ExplosionPower:2,direction:[0,0,0],Tags:["launch"]}

execute as @e[type=minecraft:fireball,tag=launch,limit=1,sort=nearest] run execute store result score @s FB_x1 run data get entity @s Pos[0] 1000000000000
execute as @e[type=minecraft:fireball,tag=launch,limit=1,sort=nearest] run execute store result score @s FB_y1 run data get entity @s Pos[1] 1000000000000
execute as @e[type=minecraft:fireball,tag=launch,limit=1,sort=nearest] run execute store result score @s FB_z1 run data get entity @s Pos[2] 1000000000000

execute as @e[type=minecraft:fireball,tag=launch,limit=1,sort=nearest] run tp @s ^ ^ ^0.00001

execute as @e[type=minecraft:fireball,tag=launch,limit=1,sort=nearest] run execute store result score @s FB_x2 run data get entity @s Pos[0] 1000000000000
execute as @e[type=minecraft:fireball,tag=launch,limit=1,sort=nearest] run execute store result score @s FB_y2 run data get entity @s Pos[1] 1000000000000
execute as @e[type=minecraft:fireball,tag=launch,limit=1,sort=nearest] run execute store result score @s FB_z2 run data get entity @s Pos[2] 1000000000000

execute as @e[type=minecraft:fireball,tag=launch,limit=1,sort=nearest] run scoreboard players operation @s FB_x2 -= @s FB_x1
execute as @e[type=minecraft:fireball,tag=launch,limit=1,sort=nearest] run scoreboard players operation @s FB_y2 -= @s FB_y1
execute as @e[type=minecraft:fireball,tag=launch,limit=1,sort=nearest] run scoreboard players operation @s FB_z2 -= @s FB_z1

execute as @e[type=minecraft:fireball,tag=launch,limit=1,sort=nearest] run execute store result entity @s Motion[0] double 0.0000000000005 run scoreboard players get @s FB_x2
execute as @e[type=minecraft:fireball,tag=launch,limit=1,sort=nearest] run execute store result entity @s Motion[1] double 0.0000000000005 run scoreboard players get @s FB_y2
execute as @e[type=minecraft:fireball,tag=launch,limit=1,sort=nearest] run execute store result entity @s Motion[2] double 0.0000000000005 run scoreboard players get @s FB_z2

execute as @e[type=minecraft:fireball,tag=launch,limit=1,sort=nearest] run execute store result entity @s power[0] double 0.000000000000008 run scoreboard players get @s FB_x2
execute as @e[type=minecraft:fireball,tag=launch,limit=1,sort=nearest] run execute store result entity @s power[1] double 0.000000000000008 run scoreboard players get @s FB_y2
execute as @e[type=minecraft:fireball,tag=launch,limit=1,sort=nearest] run execute store result entity @s power[2] double 0.000000000000008 run scoreboard players get @s FB_z2

#execute as @e[tag=launch,limit=1,sort=nearest] at @s rotated as @p run function spells:generic/launch