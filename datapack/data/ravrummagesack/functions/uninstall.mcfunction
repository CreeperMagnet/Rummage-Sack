scoreboard objectives remove the_sack.craft
scoreboard objectives remove the_sack.drop
scoreboard objectives remove the_sack.shuff
scoreboard objectives remove the_sack.slots
scoreboard objectives remove the_sack.sneak
tag @e[type=item,tag=!global.ignore] remove rav.rummdrop
data remove storage rav:rummagesack lorecheck1
data remove storage rav:rummagesack lorecheck2
data remove storage rav:rummagesack lorecheck3
data remove storage rav:rummagesack lorecheck4
data remove storage rav:rummagesack lorecheck5
data remove storage rav:rummagesack loreupdate

tellraw @s "MrMcAwesumz'/Ravioli's Rummage Sack disabled and relevant data removed. However, the rummage sack items still exist and must manually be destroyed or archived. Thank you for using my pack!"
datapack disable "file/Rummage Sack"