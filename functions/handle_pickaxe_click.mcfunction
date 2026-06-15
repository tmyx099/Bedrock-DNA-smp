# Handle Pickaxe Left-Click (Blaze, Enderman, Ghast)
# AbilityType: 1=Enderman, 2=Blaze, 7=Ghast

execute if score @s AbilityType matches 1 run function enderman_ability_cast
execute if score @s AbilityType matches 2 run function blaze_ability_cast
execute if score @s AbilityType matches 7 run function ghast_ability_cast

execute if score @s AbilityType matches 0 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Spider) doesn't use Pickaxe! Use Bow instead."}]}
execute if score @s AbilityType matches 3 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Wither) doesn't use Pickaxe! Use Sword instead."}]}
execute if score @s AbilityType matches 4 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Creeper) doesn't use Pickaxe! Use Sword instead."}]}
execute if score @s AbilityType matches 5 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Zombie) doesn't use Pickaxe! Use Sword instead."}]}
execute if score @s AbilityType matches 6 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Skeleton) doesn't use Pickaxe! Use Bow instead."}]}
execute if score @s AbilityType matches 8 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Phantom) doesn't use Pickaxe! Use Axe instead."}]}

# Reset tool counter
scoreboard players set @s PickUsed 0
