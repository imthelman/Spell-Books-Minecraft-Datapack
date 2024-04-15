execute at @s run setblock ~ 150 ~ oak_sign{Text1:"[\"\",{\"text\":\"-\",\"color\":\"red\"},{\"score\":{\"name\":\"@p[tag=damaging]\",\"objective\":\"damage\"},\"color\":\"red\"}]"}

execute at @e[type=#spells:enemy,distance=..0.1,limit=1,tag=!damaging] run summon item ~ ~1.75 ~ {CustomName:"{\"text\":\"null\",\"color\":\"red\"}",CustomNameVisible:1,Tags:["damage_indicator","item"],Motion:[0.0,0.15,0.0],Item:{id:"minecraft:stone_button",Count:1b},Age:5990,PickupDelay:40}

execute at @s run data modify entity @e[tag=damage_indicator,limit=1,tag=!set] CustomName set from block ~ 150 ~ Text1
tag @e[tag=damage_indicator,limit=1,sort=nearest,tag=!set] add set

execute at @s run setblock ~ 150 ~ air