# Death Handler - Runs when player dies

# Subtract -1 DNA (clamped at 0)
scoreboard players remove @s DNA 1
execute if score @s DNA matches ..-1 run scoreboard players set @s DNA 0

# Reset Deaths counter
scoreboard players set @s Deaths 0

# Notify player
tellraw @s {"rawtext":[{"text":"\u00a7c-1 DNA! (Now: "}, {"score":{"name":"@s","objective":"DNA"}}, {"text":"/5)"}]}

# Play sound effect
execute at @s run playsound mob.wither.hurt @s ~~~ 1 1.0
