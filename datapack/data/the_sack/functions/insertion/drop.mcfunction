summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["rav.rummban","global.ignore","global.ignore.kill"]}
tag @e[type=item,limit=1,sort=nearest,tag=!rav.rummdrop,tag=!global.ignore,tag=!global.ignore.kill,distance=..4,nbt=!{Item:{tag:{the_sack:{id:"sack"}}}}] add rav.rummdrop
data modify storage the_sack:storage Item set from entity @e[type=item,sort=nearest,limit=1,tag=rav.rummdrop] Item
data modify entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=rav.rummban] HandItems[0] set from entity @e[type=item,sort=nearest,limit=1,tag=rav.rummdrop] Item
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=rav.rummban] if predicate the_sack:item_ban run scoreboard players set ban the_sack.drop 1
execute if data storage the_sack:storage Item if entity @e[type=item,limit=1,sort=nearest,tag=rav.rummdrop] unless score ban the_sack.drop matches 1 unless data entity @s Inventory[{Slot:-106b}].tag.the_sack.contents[4] run function the_sack:insertion/drop2
execute if score ban the_sack.drop matches 1 run title @s actionbar {"text":"The Shulker Box refuses to fit...","color":"gold"}

data remove storage the_sack:storage Item
kill @e[type=armor_stand,limit=1,sort=nearest,tag=rav.rummban]
scoreboard players reset ban the_sack.drop
