difficulty peaceful

gamerule fallDamage false

scoreboard objectives add join dummy
scoreboard objectives add buttonDetect dummy
scoreboard objectives add answerDetect dummy
scoreboard objectives add count dummy
scoreboard objectives add bools dummy

scoreboard players add @a join 1

tp @a[scores={join=..1}] 9 29 9

loot give @a loot f:loots

tellraw @a {"text":"==============================","color":"gold"}
tellraw @a ["",{"text":"[Datapack]"},{"text":"dataPackVersion:0.0.0.dev","bold":true,"color":"gold"}]
tellraw @a {"text":"==============================","color":"gold"}