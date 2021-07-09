# Commands to tick players
## Drop-insertion
execute if entity @s[scores={the_sack.drop=1..},predicate=the_sack:holding_sack/offhand] run function the_sack:sack/add/main
execute if entity @s[scores={the_sack.click=1..},predicate=the_sack:holding_sack/mainhand] run function the_sack:sack/remove/main

## Reset relevant scores
scoreboard players reset @s the_sack.drop
scoreboard players reset @s the_sack.craft
scoreboard players reset @s the_sack.click
