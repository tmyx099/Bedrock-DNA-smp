# Handle Axe Left-Click (Phantom)
# AbilityType: 8=Phantom

execute if score @s AbilityType matches 8 run function phantom_ability_cast

execute if score @s AbilityType matches 0 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Spider) doesn't use Axe! Use Bow instead."}]}
execute if score @s AbilityType matches 1 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Enderman) doesn't use Axe! Use Pickaxe instead."}]}
execute if score @s AbilityType matches 2 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Blaze) doesn't use Axe! Use Pickaxe instead."}]}
execute if score @s AbilityType matches 3 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Wither) doesn't use Axe! Use Sword instead."}]}
execute if score @s AbilityType matches 4 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Creeper) doesn't use Axe! Use Sword instead."}]}
execute if score @s AbilityType matches 5 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Zombie) doesn't use Axe! Use Sword instead."}]}
execute if score @s AbilityType matches 6 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Skeleton) doesn't use Axe! Use Bow instead."}]}
execute if score @s AbilityType matches 7 run tellraw @s {"rawtext":[{"text":"\u00a7cYour ability (Ghast) doesn't use Axe! Use Pickaxe instead."}]}

# Reset tool counter
scoreboard players set @s AxeUsed 0
