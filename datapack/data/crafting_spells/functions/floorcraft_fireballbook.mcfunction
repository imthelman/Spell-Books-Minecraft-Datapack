#Summon the spellbook
execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",tag:{fire_magic_shard:1b}}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:book",Count:10b}},distance=0..1,limit=1,sort=nearest] at @s run summon item ~ ~ ~ {Tags:["fresh_craft"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Fireball Spellbook","color":"red","bold":true,"italic":false}',Lore:['{"text":"Spellbook that launches fireballs"}']},HideFlags:7,Unbreakable:1b,CustomModelData:10002,element:1,spell_id:1,Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}}}

#Kill the crafted_items
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",tag:{fire_magic_shard:1b}}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:book",Count:10b}},limit=1,sort=nearest]

#Make it look pretty
execute as @e[tag=fresh_craft] at @s run playsound minecraft:entity.ghast.shoot master @a
execute as @e[tag=fresh_craft] at @s run playsound minecraft:block.lava.extinguish master @a
execute as @e[tag=fresh_craft] at @s run playsound minecraft:entity.blaze.burn master @a
execute as @e[tag=fresh_craft] at @s run playsound minecraft:entity.blaze.hurt master @a
execute as @e[tag=fresh_craft] at @s run playsound minecraft:entity.firework_rocket.blast_far master @a

#Take away the tag
execute as @e[tag=fresh_craft] run tag @s remove fresh_craft