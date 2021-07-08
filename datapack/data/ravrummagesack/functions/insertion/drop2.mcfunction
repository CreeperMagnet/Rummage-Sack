item modify entity @s weapon.offhand ravrummagesack:dropinsert
function ravrummagesack:loreupdate
kill @e[type=item,tag=rav.rummdrop,limit=1,sort=nearest]
playsound minecraft:item.armor.equip_leather player @a ~ ~ ~ 1 1 0.5
particle minecraft:dust_color_transition .6484 .4805 .3516 1 1 1 1 ~ ~.1 ~ 0.2 0 0.2 0 15 normal