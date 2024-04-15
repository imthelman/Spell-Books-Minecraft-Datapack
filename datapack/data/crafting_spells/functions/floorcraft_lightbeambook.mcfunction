#Summon the spellbook
execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",tag:{light_magic_shard:1b}}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:book",Count:10b}},distance=0..1,limit=1,sort=nearest] at @s run summon item ~ ~ ~ {Tags:["fresh_craft"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Lightbeam Spellbook","color":"red","bold":true,"italic":false}',Lore:['{"text":"Spellbook that shoots light beams"}']},HideFlags:7,Unbreakable:1b,CustomModelData:10002,element:3,spell_id:1,Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}}}

#Kill the crafted_items
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",tag:{light_magic_shard:1b}}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:book",Count:10b}},limit=1,sort=nearest]

#Make it look pretty
execute as @e[tag=fresh_craft] at @s run playsound minecraft:block.anvil.fall master @a
execute as @e[tag=fresh_craft] at @s run playsound minecraft:block.anvil.use master @a
execute as @e[tag=fresh_craft] at @s run playsound minecraft:enchant.thorns.hit master @a
execute as @e[tag=fresh_craft] at @s run playsound minecraft:block.beacon.activate master @a
execute as @e[tag=fresh_craft] at @s run playsound minecraft:block.anvil.destroy master @a
execute as @e[tag=fresh_craft] at @s run particle minecraft:flash ~ ~ ~ ~0.01 ~0.01 ~0.01 0.01 0 force
execute as @e[tag=fresh_craft] at @s run particle minecraft:flash ~ ~ ~ ~0.01 ~0.01 ~0.01 0.01 0 force
execute as @e[tag=fresh_craft] at @s run particle minecraft:flash ~ ~ ~ ~0.01 ~0.01 ~0.01 0.01 0 force
execute as @e[tag=fresh_craft] at @s run particle minecraft:flash ~ ~ ~ ~0.01 ~0.01 ~0.01 0.01 0 force
execute as @e[tag=fresh_craft] at @s run particle minecraft:flash ~ ~ ~ ~0.01 ~0.01 ~0.01 0.01 0 force
execute as @e[tag=fresh_craft] at @s run summon area_effect_cloud ~ ~ ~ {Color:14606847}
execute as @e[tag=fresh_craft] at @s run summon area_effect_cloud ~ ~ ~ {Color:14606847}
execute as @e[tag=fresh_craft] at @s run summon area_effect_cloud ~ ~ ~ {Color:14606847}
execute as @e[tag=fresh_craft] at @s run summon area_effect_cloud ~ ~ ~ {Color:14606847}
execute as @e[tag=fresh_craft] at @s run summon area_effect_cloud ~ ~ ~ {Color:14606847}

#Take away the tag
execute as @e[tag=fresh_craft] run tag @s remove fresh_craft