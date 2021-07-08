scoreboard players set sack the_sack.slots 20
execute if data entity @s Inventory[{Slot:-106b}].tag.the_sack.contents[1] run scoreboard players set sack the_sack.slots 40
execute if data entity @s Inventory[{Slot:-106b}].tag.the_sack.contents[2] run scoreboard players set sack the_sack.slots 60
execute if data entity @s Inventory[{Slot:-106b}].tag.the_sack.contents[3] run scoreboard players set sack the_sack.slots 80
execute if data entity @s Inventory[{Slot:-106b}].tag.the_sack.contents[4] run scoreboard players set sack the_sack.slots 100

execute if score sack the_sack.slots matches 20 if score @s the_sack.shuff matches 40.. run scoreboard players set @s the_sack.shuff 20
execute if score sack the_sack.slots matches 40 if score @s the_sack.shuff matches 60.. run scoreboard players set @s the_sack.shuff 40
execute if score sack the_sack.slots matches 60 if score @s the_sack.shuff matches 80.. run scoreboard players set @s the_sack.shuff 60
execute if score sack the_sack.slots matches 80 if score @s the_sack.shuff matches 100.. run scoreboard players set @s the_sack.shuff 80
execute if score sack the_sack.slots matches 100 if score @s the_sack.shuff matches 120.. run scoreboard players set @s the_sack.shuff 100

execute if score @s the_sack.shuff matches 20..39 run function the_sack:removal/slot0
execute if score @s the_sack.shuff matches 40..59 run function the_sack:removal/slot1
execute if score @s the_sack.shuff matches 60..79 run function the_sack:removal/slot2
execute if score @s the_sack.shuff matches 80..99 run function the_sack:removal/slot3
execute if score @s the_sack.shuff matches 100.. run function the_sack:removal/slot4
execute if score @s the_sack.shuff matches 20.. run item modify entity @s weapon.offhand the_sack:sackupdate
execute if score @s the_sack.shuff matches 20.. run function the_sack:loreupdate
