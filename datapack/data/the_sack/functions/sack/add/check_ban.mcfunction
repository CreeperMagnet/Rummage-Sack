# Commands to run as items
execute if entity @s[predicate=!the_sack:banned_item] run function the_sack:sack/add/as_item
execute if entity @s[predicate=the_sack:banned_item] run data modify storage the_sack:storage root.temp.banned set value 1b
