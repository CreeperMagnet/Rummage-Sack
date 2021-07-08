summon item ~ ~2 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["rav.rummagesack.item"]}
data modify entity @e[type=item,tag=rav.rummagesack.item,limit=1,sort=nearest] Item set from entity @s Inventory[{Slot:-106b}].tag.the_sack.contents[-1]
data modify storage the_sack:storage sackcopy set from entity @s Inventory[{Slot:-106b}].tag.the_sack.contents
data remove storage the_sack:storage sackcopy[-1]
say hi
