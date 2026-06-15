# Skeleton Ability Cast - Arrow rain on nearby enemies

# Check cooldown
execute if score @s SkeletonCooldown matches 1.. run tellraw @s {"rawtext":[{"text":"\u00a7cSkeleton ability on cooldown! "}, {"score":{"name":"@s","objective":"SkeletonCooldown"}}, {"text":"s remaining"}]}

# If no cooldown, cast ability
execute if score @s SkeletonCooldown matches 0 run particle endrod ~~~
execute if score @s SkeletonCooldown matches 0 run playsound entity.arrow.shoot @a ~~~
execute if score @s SkeletonCooldown matches 0 run tellraw @s {"rawtext":[{"text":"\u00a7a\u2b07 Arrow rain unleashed!"}]}

# Summon arrows above nearby enemies
execute if score @s SkeletonCooldown matches 0 at @s as @e[type=player, r=15] unless score @s AbilityType = @s AbilityType run summon arrow ~~~3 {Motion:[0.0,-0.5,0.0]}
execute if score @s SkeletonCooldown matches 0 at @s as @e[type=player, r=15] unless score @s AbilityType = @s AbilityType run summon arrow ~~1~2 {Motion:[0.0,-0.5,0.0]}
execute if score @s SkeletonCooldown matches 0 at @s as @e[type=player, r=15] unless score @s AbilityType = @s AbilityType run summon arrow ~~1~-2 {Motion:[0.0,-0.5,0.0]}
execute if score @s SkeletonCooldown matches 0 at @s as @e[type=player, r=15] unless score @s AbilityType = @s AbilityType run summon arrow ~2~1~ {Motion:[0.0,-0.5,0.0]}
execute if score @s SkeletonCooldown matches 0 at @s as @e[type=player, r=15] unless score @s AbilityType = @s AbilityType run summon arrow ~-2~1~ {Motion:[0.0,-0.5,0.0]}
execute if score @s SkeletonCooldown matches 0 run scoreboard players set @s SkeletonCooldown 6000
