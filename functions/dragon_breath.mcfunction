# Dragon Breath Ability - Crafted item that shoots dragon breath dealing 5 hearts

# Check if player has cooldown
execute if score @s DragonBreathCD matches 1.. run tellraw @s {"rawtext":[{"text":"\u00a7cDragon Breath on cooldown! "}, {"score":{"name":"@s","objective":"DragonBreathCD"}}, {"text":"s remaining"}]}

# If no cooldown, cast dragon breath
execute if score @s DragonBreathCD matches 0 run summon dragon_fireball ^^^5
execute if score @s DragonBreathCD matches 0 run particle dragon_breath_emitter ^^^3
execute if score @s DragonBreathCD matches 0 run playsound mob.dragon.breath @a ~~~
execute if score @s DragonBreathCD matches 0 run tellraw @s {"rawtext":[{"text":"\u00a75\u2728 Dragon Breath unleashed!"}]}
execute if score @s DragonBreathCD matches 0 at @s as @e[type=player, r=8] unless score @s AbilityType = @s AbilityType run damage @s 10 magic

# Set cooldown (6000 ticks = 5 minutes)
execute if score @s DragonBreathCD matches 0 run scoreboard players set @s DragonBreathCD 6000
