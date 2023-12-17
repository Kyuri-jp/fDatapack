scoreboard players add $f.start.count count 1

execute if score $f.start.count count matches 1 run setblock 9 18 9 quartz_block destroy
execute if score $f.start.count count matches 2 run setblock 9 38 9 quartz_block destroy
execute if score $f.start.count count matches 3 run setblock 9 28 19 quartz_block destroy
execute if score $f.start.count count matches 4 run setblock 19 28 9 quartz_block destroy
execute if score $f.start.count count matches 5 run setblock -1 28 9 quartz_block destroy
execute if score $f.start.count count matches 6 run setblock 9 28 -1 quartz_block destroy
execute if score $f.start.count count matches 7 run setblock 9 28 9 glass destroy

execute unless score $f.start.count count matches 10.. run schedule function f:main/systems/prosseses/start 1s
execute if score $f.start.count count matches 8 run tp @a 8 -16 8
execute if score $f.start.count count matches 8 run function f:dev/reset/field/deployments/reset
execute if score $f.start.count count matches 10 run title @a title {"text": "f.","italic": true}
execute if score $f.start.count count matches 10 as @a at @s run playsound ambient.cave player @s ~ ~ ~
execute if score $f.start.count count matches 10 run effect give @a darkness 5
execute if score $f.start.count count matches 10 as @a at @s run summon item ~ ~ ~ {Item:{id:"minecraft:written_book",Count:1b}}
execute if score $f.start.count count matches 10 as @a at @s run data modify entity @e[type=item,distance=..0.01,sort=nearest,limit=1] Item.tag set from block 9 29 4 Book.tag 
execute if score $f.start.count count matches 10 run function f:dev/reset/preparation_room/deployments/reset