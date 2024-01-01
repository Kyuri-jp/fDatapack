title @a title [{"text": "f. ","italic": true},{"text": "cleared!","color": "gold","italic": false}]
execute as @a at @s run playsound entity.player.levelup player @s ~ ~ ~
execute as @a at @s run summon item ~ ~ ~ {Item:{id:"minecraft:written_book",Count:1b}}
execute as @a at @s run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag set from block 8 -12 8 Book.tag