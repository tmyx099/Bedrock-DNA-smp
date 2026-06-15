# Handle Bow Left-Click (Skeleton, Spider)
# AbilityType: 0=Spider, 6=Skeleton

execute if score @s AbilityType matches 0 run function spider_ability_cast
execute if score @s AbilityType matches 6 run function skeleton_ability_cast

execute if score @s AbilityType matches 1 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Enderman) doesn't use Bow! Use Pickaxe instead."}]}
execute if score @s AbilityType matches 2 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Blaze) doesn't use Bow! Use Pickaxe instead."}]}
execute if score @s AbilityType matches 3 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Wither) doesn't use Bow! Use Sword instead."}]}
execute if score @s AbilityType matches 4 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Creeper) doesn't use Bow! Use Sword instead."}]}
execute if score @s AbilityType matches 5 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Zombie) doesn't use Bow! Use Sword instead."}]}
execute if score @s AbilityType matches 7 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Ghast) doesn't use Bow! Use Pickaxe instead."}]}
execute if score @s AbilityType matches 8 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Phantom) doesn't use Bow! Use Axe instead."}]}

# Reset tool counter
scoreboard players set @s BowUsed 0
