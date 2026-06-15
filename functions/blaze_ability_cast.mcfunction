# Blaze Ability Cast - Fire resistance + flight

# Check cooldown
execute if score @s BlazeCooldown matches 1.. run tellraw @s {"rawtext":[{"text":"\u00a7cBlaze ability on cooldown! "}, {"score":{"name":"@s","objective":"BlazeCooldown"}}, {"text":"s remaining"}]}

# If no cooldown, cast ability
execute if score @s BlazeCooldown matches 0 run effect @s fire_resistance 10 0
execute if score @s BlazeCooldown matches 0 run effect @s levitation 10 1
execute if score @s BlazeCooldown matches 0 run particle flame ~~~
execute if score @s BlazeCooldown matches 0 run playsound entity.blaze.ambient @a ~~~
execute if score @s BlazeCooldown matches 0 run tellraw @s {"rawtext":[{"text":"\u00a7cBlaze power activated! Flight + Fire Resistance for 10s"}]}
execute if score @s BlazeCooldown matches 0 run scoreboard players set @s BlazeCooldown 6000
