# Phantom Ability Cast - Flight + Invisibility

# Check cooldown
execute if score @s PhantomCooldown matches 1.. run tellraw @s {"rawtext":[{"text":"\u00a7cPhantom ability on cooldown! "}, {"score":{"name":"@s","objective":"PhantomCooldown"}}, {"text":"s remaining"}]}

# If no cooldown, cast ability
execute if score @s PhantomCooldown matches 0 run effect @s levitation 8 1
execute if score @s PhantomCooldown matches 0 run effect @s invisibility 8 0
execute if score @s PhantomCooldown matches 0 run particle end_chest ~~~
execute if score @s PhantomCooldown matches 0 run playsound mob.phantom.flap @a ~~~
execute if score @s PhantomCooldown matches 0 run tellraw @s {"rawtext":[{"text":"\u00a73\ud83d\udc7b Phantom powers activated! Flight + Invisibility for 8s"}]}
execute if score @s PhantomCooldown matches 0 run scoreboard players set @s PhantomCooldown 6000
