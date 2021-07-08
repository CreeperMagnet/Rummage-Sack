### If not sneaking, reset shuffle counter and do slot removal if applicable
execute as @a[scores={rav.rumm_sneak=0}] at @s if score @s[predicate=ravrummagesack:hold_sack] rav.rumm_shuff matches 1.. if data entity @s Inventory[{Slot:-106b}].tag."rav.sackcontents"[0] run function ravrummagesack:removal/lookup
execute as @a at @s if score @s[predicate=ravrummagesack:hold_sack] rav.rumm_shuff matches 1.. run function ravrummagesack:removal/audiofeedback
scoreboard players reset @a[scores={rav.rumm_sneak=0}] rav.rumm_shuff
scoreboard players set @a rav.rumm_sneak 0

### Drop-insertion
execute as @a[scores={rav.rumm_drop=1..},predicate=ravrummagesack:hold_sack] at @s at @e[sort=nearest,limit=1,distance=..4,type=item,nbt=!{Item:{tag:{rav.rummage:"sack"}}}] run function ravrummagesack:insertion/drop
scoreboard players set @a rav.rumm_drop 0