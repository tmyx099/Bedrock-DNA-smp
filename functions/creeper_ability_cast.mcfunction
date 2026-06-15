# Creeper Ability Cast - Explosion jump + Knockback resistance

# Check cooldown
execute if score @s CreeperCooldown matches 1.. run tellraw @s {"rawtext":[{"text":"\u00a7cCreeper ability on cooldown! "}, {"score":{"name":"@s","objective":"CreeperCooldown"}}, {"text":"s remaining"}]}

# If no cooldown, cast ability
execute if score @s CreeperCooldown matches 0 run effect @s levitation 1 5
execute if score @s CreeperCooldown matches 0 run effect @s resistance 10 0
execute if score @s CreeperCooldown matches 0 run particle explosion_emitter ~~~
execute if score @s CreeperCooldown matches 0 run playsound entity.creeper.primed @a ~~~
execute if score @s CreeperCooldown matches 0 run tellraw @s {"rawtext":[{"text":"\u00a72\ud83d\udca5 Creeper explosion jump!"}]}

# Damage nearby enemies
execute if score @s CreeperCooldown matches 0 at @s as @e[type=player, r=5] unless score @s AbilityType = @s AbilityType run damage @s 6 explosion
execute if score @s CreeperCooldown matches 0 run scoreboard players set @s CreeperCooldown 6000
