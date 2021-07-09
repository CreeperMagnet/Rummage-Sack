# Adds an item to the end of the sack

data modify storage the_sack:storage root.temp.item.tag.the_sack.contents append from entity @s Item
data modify storage the_sack:storage root.temp.contents_clone set value [{Count:1}]
execute store result storage the_sack:storage root.temp.contents_clone[0].Count int 1 run data get entity @s Item.Count
item modify entity @p[tag=the_sack.player] weapon.offhand the_sack:add_lore/normal
execute if data entity @s Item.tag.display.Name run item modify entity @p[tag=the_sack.player] weapon.offhand the_sack:add_lore/custom_name
data modify storage the_sack:storage root.temp.item.tag.display.Lore append from entity @p[tag=the_sack.player] Inventory[{Slot:-106b}].tag.display.Lore[0]
tag @s add the_sack.done
