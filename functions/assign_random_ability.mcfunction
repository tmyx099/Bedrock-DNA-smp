# Assign Random Ability to Player
# Assigns abilities 0-8: Spider, Enderman, Blaze, Wither, Creeper, Zombie, Skeleton, Ghast, Phantom

# Use random command to pick 0-8
execute store result score @s AbilityType run random value 0..8

tellraw @s {"rawtext":[{"text":"\u00a7a\u2728 Ability assigned! Check your ability with \u00a76/ability_info"}]}
