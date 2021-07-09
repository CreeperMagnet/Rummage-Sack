# Commands to run as items

# remove the lore that isn't displaying items
data remove storage the_sack:storage root.temp.lore_clone[0]
data remove storage the_sack:storage root.temp.lore_clone[0]
data remove storage the_sack:storage root.temp.lore_clone[0]
execute if data storage the_sack:storage root.temp.contents_clone[0] run data remove storage the_sack:storage root.temp.lore_clone[0]

# Create a bunch of empty storage arrays and clones so items can be easily accessed while iterating through them
data modify storage the_sack:storage root.temp.item_entity set from entity @s Item

# iterate through all the items in the sack to see if any of them can be updated
function the_sack:sack/add/add_to_stack/loop

# If there hasn't been an item stacked, and the sack isn't full already, add it to the end of the array
execute unless entity @s[tag=the_sack.done] unless data storage the_sack:storage root.temp.item.tag.the_sack.contents[4] run function the_sack:sack/add/insert
data modify storage the_sack:storage root.temp.item.tag.display.Lore prepend value '{"text":""}'
data modify storage the_sack:storage root.temp.item.tag.display.Lore prepend value '{"translate":"pack.the_sack","color":"#623220","italic":true}'
data modify storage the_sack:storage root.temp.item.tag.display.Lore prepend value '{"translate":"item.the_sack.rummage_sack.lore.1","color":"gray","italic":false}'
data modify storage the_sack:storage root.temp.item.tag.display.Lore prepend value '{"translate":"item.the_sack.rummage_sack.lore.0","color":"gray","italic":false}'

# kill the items and display particles and such
execute if entity @s[tag=the_sack.done] run function the_sack:sack/add/finish
