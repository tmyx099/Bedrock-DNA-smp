# Ghast Ability Cast - Summon fireballs

# Check cooldown
execute if score @s GhastCooldown matches 1.. run tellraw @s {"rawtext":[{"text":"\u00a7cGhast ability on cooldown! "}, {"score":{"name":"@s","objective":"GhastCooldown"}}, {"text":"s remaining"}]}

# If no cooldown, cast ability
execute if score @s GhastCooldown matches 0 run particle explosion_emitter ^^^3
execute if score @s GhastCooldown matches 0 run playsound mob.ghast.fireball @a ~~~
execute if score @s GhastCooldown matches 0 run tellraw @s {"rawtext":[{"text":"\u00a7c\ud83d\udd25 Fireballs unleashed!"}]}

# Summon fireballs in front of player
execute if score @s GhastCooldown matches 0 at @s run summon fireball ^^^5 {Motion:[0.0,0.0,1.5]}
execute if score @s GhastCooldown matches 0 at @s run summon fireball ^^2^4 {Motion:[0.3,0.0,1.5]}
execute if score @s GhastCooldown matches 0 at @s run summon fireball ^^2^4 {Motion:[-0.3,0.0,1.5]}

# Damage nearby enemies
execute if score @s GhastCooldown matches 0 at @s as @e[type=player, r=8] unless score @s AbilityType = @s AbilityType run damage @s 4 fire
execute if score @s GhastCooldown matches 0 run scoreboard players set @s GhastCooldown 6000
