execute if block 8 -34 8 white_shulker_box{Items:[{Slot:13b,tag:{display:{Name:'{"text":"neptune"}'}}}]} run scoreboard players add $f.answer.true answerDetect 1
execute if score $f.answer.true answerDetect matches 1 run function f:main/systems/end/cleared