# Handle Sword Left-Click (Zombie, Wither, Creeper)
# AbilityType: 3=Wither, 4=Creeper, 5=Zombie

execute if score @s AbilityType matches 3 run function wither_ability_cast
execute if score @s AbilityType matches 4 run function creeper_ability_cast
execute if score @s AbilityType matches 5 run function zombie_ability_cast

execute if score @s AbilityType matches 0 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Spider) doesn't use Sword! Use Bow instead."}]}
execute if score @s AbilityType matches 1 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Enderman) doesn't use Sword! Use Pickaxe instead."}]}
execute if score @s AbilityType matches 2 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Blaze) doesn't use Sword! Use Pickaxe instead."}]}
execute if score @s AbilityType matches 6 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Skeleton) doesn't use Sword! Use Bow instead."}]}
execute if score @s AbilityType matches 7 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Ghast) doesn't use Sword! Use Pickaxe instead."}]}
execute if score @s AbilityType matches 8 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Phantom) doesn't use Sword! Use Axe instead."}]}

# Reset tool counter
scoreboard players set @s ToolUsed 0
