### If not sneaking, reset shuffle counter and do slot removal if applicable
execute as @a[scores={the_sack.sneak=0}] at @s if score @s[predicate=ravrummagesack:hold_sack] the_sack.shuff matches 1.. if data entity @s Inventory[{Slot:-106b}].tag."rav.sackcontents"[0] run function ravrummagesack:removal/lookup
execute as @a at @s if score @s[predicate=ravrummagesack:hold_sack] the_sack.shuff matches 1.. run function ravrummagesack:removal/audiofeedback
scoreboard players reset @a[scores={the_sack.sneak=0}] the_sack.shuff
scoreboard players set @a the_sack.sneak 0

### Drop-insertion
execute as @a[scores={the_sack.drop=1..},predicate=ravrummagesack:hold_sack] at @s at @e[sort=nearest,limit=1,distance=..4,type=item,nbt=!{Item:{tag:{rav.rummage:"sack"}}}] run function ravrummagesack:insertion/drop
scoreboard players set @a the_sack.drop 0