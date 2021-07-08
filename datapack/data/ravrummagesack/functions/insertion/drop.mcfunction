summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["rav.rummban","global.ignore","global.ignore.kill"]}
tag @e[type=item,limit=1,sort=nearest,tag=!rav.rummdrop,tag=!global.ignore,tag=!global.ignore.kill,distance=..4,nbt=!{Item:{tag:{rav.rummage:"sack"}}}] add rav.rummdrop
data modify storage rav:rummagesack Item set from entity @e[type=item,sort=nearest,limit=1,tag=rav.rummdrop] Item
data modify entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=rav.rummban] HandItems[0] set from entity @e[type=item,sort=nearest,limit=1,tag=rav.rummdrop] Item
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=rav.rummban] if predicate ravrummagesack:itemban run scoreboard players set ban rav.rumm_drop 1
execute if data storage rav:rummagesack Item if entity @e[type=item,limit=1,sort=nearest,tag=rav.rummdrop] unless score ban rav.rumm_drop matches 1 unless data entity @s Inventory[{Slot:-106b}].tag."rav.sackcontents"[4] run function ravrummagesack:insertion/drop2
execute if score ban rav.rumm_drop matches 1 run title @s actionbar {"text":"The Shulker Box refuses to fit...","color":"gold"}

data remove storage rav:rummagesack Item
kill @e[type=armor_stand,limit=1,sort=nearest,tag=rav.rummban]
scoreboard players reset ban rav.rumm_drop