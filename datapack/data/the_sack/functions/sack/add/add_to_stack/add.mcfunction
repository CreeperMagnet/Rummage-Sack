# Adds the item to the sack properly
execute store result storage the_sack:storage root.temp.contents_clone[0].Count int 1 run scoreboard players get #stack_1 the_sack.dummy
item modify entity @p[tag=the_sack.player] weapon.offhand the_sack:add_lore/normal
execute if data storage the_sack:storage root.temp.contents_clone[0].tag.display.Name run item modify entity @p[tag=the_sack.player] weapon.offhand the_sack:add_lore/custom_name
data modify storage the_sack:storage root.temp.lore_clone[0] set from entity @p[tag=the_sack.player] Inventory[{Slot:-106b}].tag.display.Lore[0]
tag @s add the_sack.done
