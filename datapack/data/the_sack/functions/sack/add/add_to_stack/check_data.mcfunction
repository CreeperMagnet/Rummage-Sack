# Checks if the item being added and the item already the sack share the same NBT
data modify storage the_sack:storage root.temp.content set from storage the_sack:storage root.temp.contents_clone[0]
data remove storage the_sack:storage root.temp.item_entity.Count
data remove storage the_sack:storage root.temp.content.Count
execute store success score @s the_sack.dummy run data modify storage the_sack:storage root.temp.content set from storage the_sack:storage root.temp.item_entity
execute if entity @s[scores={the_sack.dummy=0}] run function the_sack:sack/add/add_to_stack/add
