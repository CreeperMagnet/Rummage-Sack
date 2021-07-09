# A loop to check each and every stack size
execute store result score #stack_1 the_sack.dummy run data get entity @s Item.Count
execute store result score #stack_2 the_sack.dummy run data get storage the_sack:storage root.temp.contents_clone[0].Count
scoreboard players operation #stack_1 the_sack.dummy += #stack_2 the_sack.dummy
# Checks the type/nbt of the item if the total stack number is less than 64
execute if score #stack_1 the_sack.dummy matches ..64 unless entity @s[tag=the_sack.done] unless entity @s[predicate=the_sack:unstackable_item] run function the_sack:sack/add/add_to_stack/check_data
data modify storage the_sack:storage root.temp.item.tag.the_sack.contents append from storage the_sack:storage root.temp.contents_clone[0]
data modify storage the_sack:storage root.temp.item.tag.display.Lore append from storage the_sack:storage root.temp.lore_clone[0]

data remove storage the_sack:storage root.temp.contents_clone[0]
data remove storage the_sack:storage root.temp.lore_clone[0]
execute if data storage the_sack:storage root.temp.contents_clone[0] run function the_sack:sack/add/add_to_stack/loop
