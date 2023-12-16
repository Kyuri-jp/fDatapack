gamerule fallDamage false

scoreboard objectives add buttonDetect dummy
scoreboard objectives add answerDetect dummy
scoreboard objectives add count dummy
scoreboard objectives add bools dummy

tellraw @a {"text":"==============================","color":"gold"}
tellraw @a ["",{"text":"[Datapack]"},{"text":"dataPackVersion:0.0.0.dev","bold":true,"color":"gold"}]
tellraw @a {"text":"==============================","color":"gold"}