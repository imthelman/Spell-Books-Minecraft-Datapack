execute as @a[scores={cast=1..}] at @s run function spells:spells/directory

execute as @e[type=fireball,tag=player,tag=!motion] at @s rotated as @p run function spells:spells/fire/motion