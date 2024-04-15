#Summon the spellbook
execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",tag:{lightning_magic_shard:1b}}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:book",Count:10b}},distance=0..1,limit=1,sort=nearest] at @s run summon item ~ ~ ~ {Tags:["fresh_craft"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Lightningbolt Spellbook","color":"red","bold":true,"italic":false}',Lore:['{"text":"Spellbook that summons lightning bolts"}']},HideFlags:7,Unbreakable:1b,CustomModelData:10002,element:2,spell_id:1,Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}}}

#Kill the crafted_items
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",tag:{lightning_magic_shard:1b}}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:book",Count:10b}},limit=1,sort=nearest]

#Make it look pretty
execute as @e[tag=fresh_craft] at @s run playsound minecraft:entity.lightning_bolt.impact master @a
execute as @e[tag=fresh_craft] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a
execute as @e[tag=fresh_craft] at @s run playsound minecraft:enchant.thorns.hit master @a
execute as @e[tag=fresh_craft] at @s run playsound minecraft:block.beacon.activate master @a

#Take away the tag
execute as @e[tag=fresh_craft] run tag @s remove fresh_craft