scoreboard players set sack rav.rumm_slots 20
execute if data entity @s Inventory[{Slot:-106b}].tag."rav.sackcontents"[1] run scoreboard players set sack rav.rumm_slots 40
execute if data entity @s Inventory[{Slot:-106b}].tag."rav.sackcontents"[2] run scoreboard players set sack rav.rumm_slots 60
execute if data entity @s Inventory[{Slot:-106b}].tag."rav.sackcontents"[3] run scoreboard players set sack rav.rumm_slots 80
execute if data entity @s Inventory[{Slot:-106b}].tag."rav.sackcontents"[4] run scoreboard players set sack rav.rumm_slots 100

execute if score sack rav.rumm_slots matches 20 if score @s rav.rumm_shuff matches 40.. run scoreboard players set @s rav.rumm_shuff 20
execute if score sack rav.rumm_slots matches 40 if score @s rav.rumm_shuff matches 60.. run scoreboard players set @s rav.rumm_shuff 40
execute if score sack rav.rumm_slots matches 60 if score @s rav.rumm_shuff matches 80.. run scoreboard players set @s rav.rumm_shuff 60
execute if score sack rav.rumm_slots matches 80 if score @s rav.rumm_shuff matches 100.. run scoreboard players set @s rav.rumm_shuff 80
execute if score sack rav.rumm_slots matches 100 if score @s rav.rumm_shuff matches 120.. run scoreboard players set @s rav.rumm_shuff 100

execute if score @s rav.rumm_shuff matches 20..39 run function ravrummagesack:removal/slot0
execute if score @s rav.rumm_shuff matches 40..59 run function ravrummagesack:removal/slot1
execute if score @s rav.rumm_shuff matches 60..79 run function ravrummagesack:removal/slot2
execute if score @s rav.rumm_shuff matches 80..99 run function ravrummagesack:removal/slot3
execute if score @s rav.rumm_shuff matches 100.. run function ravrummagesack:removal/slot4
execute if score @s rav.rumm_shuff matches 20.. run item modify entity @s weapon.offhand ravrummagesack:sackupdate
execute if score @s rav.rumm_shuff matches 20.. run function ravrummagesack:loreupdate