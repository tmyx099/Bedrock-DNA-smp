# Enderman Ability Cast - Random teleport nearby

# Check cooldown
execute if score @s EndermanCooldown matches 1.. run tellraw @s {"rawtext":[{"text":"\u00a7cEnderman ability on cooldown! "}, {"score":{"name":"@s","objective":"EndermanCooldown"}}, {"text":"s remaining"}]}

# If no cooldown, cast ability
execute if score @s EndermanCooldown matches 0 run tp @s ~15 ~ ~15
execute if score @s EndermanCooldown matches 0 run particle endrod ~~~
execute if score @s EndermanCooldown matches 0 run playsound entity.enderman.teleport @a ~~~
execute if score @s EndermanCooldown matches 0 run tellraw @s {"rawtext":[{"text":"\u00a75Enderman teleport!"}]}
execute if score @s EndermanCooldown matches 0 run scoreboard players set @s EndermanCooldown 6000
