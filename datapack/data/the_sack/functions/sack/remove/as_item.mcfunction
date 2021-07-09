# Edits the newly summoned item entity
data modify entity @s Item set from storage the_sack:storage root.temp.item.tag.the_sack.contents[0]
tag @s remove the_sack.spawned_item
