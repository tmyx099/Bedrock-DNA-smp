# Wither Ability Cast - 20% chance to apply Wither effect

# Check cooldown
execute if score @s WitherCooldown matches 1.. run tellraw @s {"rawtext":[{"text":"\u00a7cWither ability on cooldown! "}, {"score":{"name":"@s","objective":"WitherCooldown"}}, {"text":"s remaining"}]}

# If no cooldown, cast ability
execute if score @s WitherCooldown matches 0 run scoreboard players set @s WitherChance 0
execute if score @s WitherCooldown matches 0 if predicate random_1_5 run scoreboard players set @s WitherChance 1

# If chance succeeded, apply wither to nearby enemies
execute if score @s WitherCooldown matches 0 if score @s WitherChance matches 1 as @e[type=player, r=8] unless score @s AbilityType = @s AbilityType run effect @s wither 8 2

execute if score @s WitherCooldown matches 0 if score @s WitherChance matches 1 run tellraw @s {"rawtext":[{"text":"\u00a7c\u2620 Wither effect applied!"}]}
execute if score @s WitherCooldown matches 0 if score @s WitherChance matches 0 run tellraw @s {"rawtext":[{"text":"\u00a7c\u2620 Wither activation failed! (80% miss chance)"}]}
execute if score @s WitherCooldown matches 0 run scoreboard players set @s WitherCooldown 6000
