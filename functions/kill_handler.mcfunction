# Kill Handler - Runs when player gets a kill

# Add +1 DNA (clamped at 5)
scoreboard players add @s DNA 1
execute if score @s DNA matches 6.. run scoreboard players set @s DNA 5

# Reset Kills counter
scoreboard players set @s Kills 0

# Notify player
tellraw @s {"rawtext":[{"text":"\u00a7a+1 DNA! (Now: "}, {"score":{"name":"@s","objective":"DNA"}}, {"text":"/5)"}]}

# Play sound effect
execute at @s run playsound block.amethyst.place @s ~~~ 1 1.2
