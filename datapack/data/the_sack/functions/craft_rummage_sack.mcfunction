scoreboard players reset @s the_sack.craft
clear @s knowledge_book
stopsound @s * minecraft:entity.item.pickup

advancement grant @s only minecraft:nether/make_rummage_sack

advancement revoke @s only the_sack:craft_rummage_sack
recipe take @s the_sack:rummage_sack
