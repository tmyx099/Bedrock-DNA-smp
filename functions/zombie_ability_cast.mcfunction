# Zombie Ability Cast - Strength boost + health regeneration for 10 seconds

# Check cooldown
execute if score @s ZombieCooldown matches 1.. run tellraw @s {"rawtext":[{"text":"\u00a7cZombie ability on cooldown! "}, {"score":{"name":"@s","objective":"ZombieCooldown"}}, {"text":"s remaining"}]}

# If no cooldown, cast ability
execute if score @s ZombieCooldown matches 0 run effect @s strength 10 1
execute if score @s ZombieCooldown matches 0 run effect @s regeneration 10 1
execute if score @s ZombieCooldown matches 0 run particle soul_fire_flame_emitter ~~~
execute if score @s ZombieCooldown matches 0 run playsound mob.zombie.infect @a ~~~
execute if score @s ZombieCooldown matches 0 run tellraw @s {"rawtext":[{"text":"\u00a7a\u2620 Zombie power activated! Strength + Regen for 10s"}]}
execute if score @s ZombieCooldown matches 0 run scoreboard players set @s ZombieCooldown 6000
