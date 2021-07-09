# Commands to add items to a sack

tag @s add the_sack.player
data remove storage the_sack:storage root.temp
data modify storage the_sack:storage root.temp.lore_clone set from entity @s Inventory[{Slot:-106b}].tag.display.Lore
data modify storage the_sack:storage root.temp.contents_clone set from entity @s Inventory[{Slot:-106b}].tag.the_sack.contents
execute as @e[type=item,tag=!global.ignore,sort=nearest,nbt={Age:0s},limit=1] at @s run function the_sack:sack/add/check_ban
execute if data storage the_sack:storage root.temp.banned run title @s actionbar {"translate":"item.the_sack.rummage_sack.banned_item","color":"red"}
execute if data storage the_sack:storage root.temp.item run item modify entity @s weapon.offhand the_sack:copy_nbt
tag @s remove the_sack.player
