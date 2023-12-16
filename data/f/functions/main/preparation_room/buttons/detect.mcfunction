execute if block 9 30 4 stone_button[powered=true] run scoreboard players add $f.preparationRoom.buttons.push.confirmStart buttonDetect 1
execute if block 9 30 4 polished_blackstone_button[powered=true] run scoreboard players add $f.preparationRoom.buttons.push.start buttonDetect 1

execute if score $f.preparationRoom.buttons.push.confirmStart buttonDetect matches 1 run tellraw @a {"text":"本当に始めますか?","color":"red"}
execute if score $f.preparationRoom.buttons.push.confirmStart buttonDetect matches 1 run scoreboard players set $f.bools.buttons.pushed.confirmStart bools 1
execute if score $f.preparationRoom.buttons.push.confirmStart buttonDetect matches 1 run setblock 9 30 4 polished_blackstone_button destroy

execute if score $f.preparationRoom.buttons.push.start buttonDetect matches 1 run function f:main/systems/prosseses/start