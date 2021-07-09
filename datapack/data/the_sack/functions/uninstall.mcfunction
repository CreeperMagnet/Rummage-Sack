scoreboard objectives remove the_sack.craft
scoreboard objectives remove the_sack.drop
scoreboard objectives remove the_sack.click
scoreboard objectives remove the_sack.dummy
data remove storage the_sack:storage root

tellraw @s "MrMcAwesumz'/Ravioli's Rummage Sack disabled and relevant data removed. However, the rummage sack items still exist and must manually be destroyed or archived. Thank you for using my pack!"
datapack disable "file/Rummage Sack"
