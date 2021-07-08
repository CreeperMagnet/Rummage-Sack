summon item ~ ~2 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["rav.rummagesack.item"]}
data modify entity @e[type=item,tag=rav.rummagesack.item,limit=1,sort=nearest] Item set from entity @s Inventory[{Slot:-106b}].tag."rav.sackcontents"[-5]
data modify storage rav:rummagesack sackcopy set from entity @s Inventory[{Slot:-106b}].tag."rav.sackcontents"
data remove storage rav:rummagesack sackcopy[-5]