summon item ~ ~ ~ {PickupDelay:1000,Item:{"id":"minecraft:structure_void",Count:1b},Tags:["rav.sackslot0","rav.sacklore"]}
summon item ~ ~ ~ {PickupDelay:1000,Item:{"id":"minecraft:structure_void",Count:1b},Tags:["rav.sackslot1","rav.sacklore"]}
summon item ~ ~ ~ {PickupDelay:1000,Item:{"id":"minecraft:structure_void",Count:1b},Tags:["rav.sackslot2","rav.sacklore"]}
summon item ~ ~ ~ {PickupDelay:1000,Item:{"id":"minecraft:structure_void",Count:1b},Tags:["rav.sackslot3","rav.sacklore"]}
summon item ~ ~ ~ {PickupDelay:1000,Item:{"id":"minecraft:structure_void",Count:1b},Tags:["rav.sackslot4","rav.sacklore"]}
data modify entity @e[type=item,limit=1,sort=nearest,tag=rav.sackslot0] Item set from entity @s Inventory[{Slot:-106b}].tag."rav.sackcontents"[0]
data modify entity @e[type=item,limit=1,sort=nearest,tag=rav.sackslot1] Item set from entity @s Inventory[{Slot:-106b}].tag."rav.sackcontents"[1]
data modify entity @e[type=item,limit=1,sort=nearest,tag=rav.sackslot2] Item set from entity @s Inventory[{Slot:-106b}].tag."rav.sackcontents"[2]
data modify entity @e[type=item,limit=1,sort=nearest,tag=rav.sackslot3] Item set from entity @s Inventory[{Slot:-106b}].tag."rav.sackcontents"[3]
data modify entity @e[type=item,limit=1,sort=nearest,tag=rav.sackslot4] Item set from entity @s Inventory[{Slot:-106b}].tag."rav.sackcontents"[4]
kill @e[type=item,tag=rav.sacklore,limit=5,sort=nearest,nbt={Item:{"id":"minecraft:structure_void"}}]
### Do storage comparison to figure out which slots to truncate
item modify entity @s weapon.offhand ravrummagesack:loreupdate
data modify storage rav:rummagesack lorecheck1 set from entity @s Inventory[{Slot:-106b}].tag.display.Lore[-1]
data modify storage rav:rummagesack lorecheck2 set from entity @s Inventory[{Slot:-106b}].tag.display.Lore[-2]
data modify storage rav:rummagesack lorecheck3 set from entity @s Inventory[{Slot:-106b}].tag.display.Lore[-3]
data modify storage rav:rummagesack lorecheck4 set from entity @s Inventory[{Slot:-106b}].tag.display.Lore[-4]
data modify storage rav:rummagesack lorecheck5 set from entity @s Inventory[{Slot:-106b}].tag.display.Lore[-5]
execute store success score rav1 the_sack.lore run data modify storage rav:rummagesack lorecheck1 set value '{"color":"blue","text":""}'
execute store success score rav2 the_sack.lore run data modify storage rav:rummagesack lorecheck2 set value '{"color":"blue","text":""}'
execute store success score rav3 the_sack.lore run data modify storage rav:rummagesack lorecheck3 set value '{"color":"blue","text":""}'
execute store success score rav4 the_sack.lore run data modify storage rav:rummagesack lorecheck4 set value '{"color":"blue","text":""}'
execute store success score rav5 the_sack.lore run data modify storage rav:rummagesack lorecheck5 set value '{"color":"blue","text":""}'
data modify storage rav:rummagesack loreupdate set from entity @s Inventory[{Slot:-106b}].tag.display.Lore
execute if score rav1 the_sack.lore matches 0 run data remove storage rav:rummagesack loreupdate[4]
execute if score rav2 the_sack.lore matches 0 run data remove storage rav:rummagesack loreupdate[4]
execute if score rav3 the_sack.lore matches 0 run data remove storage rav:rummagesack loreupdate[4]
execute if score rav4 the_sack.lore matches 0 run data remove storage rav:rummagesack loreupdate[4]
execute if score rav5 the_sack.lore matches 0 run data remove storage rav:rummagesack loreupdate[4]
# If no item lore to display, remove item label
execute unless data storage rav:rummagesack loreupdate[4] run data remove storage rav:rummagesack loreupdate[3]
# Write stored lore to item
item modify entity @s weapon.offhand ravrummagesack:loretruncate


kill @e[type=item,tag=rav.sacklore,limit=5,sort=nearest]