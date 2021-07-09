# Commands for removing items from a sack, ran when clicking sack in mainhand

summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["the_sack.spawned_item"],PickupDelay:1s}
data modify storage the_sack:storage root.temp.item set from entity @s SelectedItem
execute as @e[type=item,tag=the_sack.spawned_item,limit=1] run function the_sack:sack/remove/as_item
data remove storage the_sack:storage root.temp.item.tag.the_sack.contents[0]
data remove storage the_sack:storage root.temp.item.tag.display.Lore[4]
execute unless data storage the_sack:storage root.temp.item.tag.the_sack.contents[0] run data remove storage the_sack:storage root.temp.item.tag.display.Lore[3]
item modify entity @s weapon.mainhand the_sack:copy_nbt
playsound minecraft:item.armor.equip_leather player @a ~ ~ ~ 1 1 0.5
particle minecraft:dust_color_transition .6484 .4805 .3516 1 1 1 1 ~ ~.1 ~ 0.2 0 0.2 0 15 normal
