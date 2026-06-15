# Update DNA Display - Shows DNA on action bar with ability name and tool

# Spider - Uses Bow
execute if score @s AbilityType matches 0 run title @s actionbar {"rawtext":[{"text":"\u00a76DNA: "}, {"score":{"name":"@s","objective":"DNA"}}, {"text":"\u00a7r/5 | \u00a79Ability: \u00a7bSpider \u00a7r| Tool: Bow | CD: "}, {"score":{"name":"@s","objective":"SpiderCooldown"}}]}

# Enderman - Uses Pickaxe
execute if score @s AbilityType matches 1 run title @s actionbar {"rawtext":[{"text":"\u00a76DNA: "}, {"score":{"name":"@s","objective":"DNA"}}, {"text":"\u00a7r/5 | \u00a79Ability: \u00a75Enderman \u00a7r| Tool: Pickaxe | CD: "}, {"score":{"name":"@s","objective":"EndermanCooldown"}}]}

# Blaze - Uses Pickaxe
execute if score @s AbilityType matches 2 run title @s actionbar {"rawtext":[{"text":"\u00a76DNA: "}, {"score":{"name":"@s","objective":"DNA"}}, {"text":"\u00a7r/5 | \u00a79Ability: \u00a7cBlaze \u00a7r| Tool: Pickaxe | CD: "}, {"score":{"name":"@s","objective":"BlazeCooldown"}}]}

# Wither - Uses Sword
execute if score @s AbilityType matches 3 run title @s actionbar {"rawtext":[{"text":"\u00a76DNA: "}, {"score":{"name":"@s","objective":"DNA"}}, {"text":"\u00a7r/5 | \u00a79Ability: \u00a70Wither \u00a7r| Tool: Sword | CD: "}, {"score":{"name":"@s","objective":"WitherCooldown"}}]}

# Creeper - Uses Sword
execute if score @s AbilityType matches 4 run title @s actionbar {"rawtext":[{"text":"\u00a76DNA: "}, {"score":{"name":"@s","objective":"DNA"}}, {"text":"\u00a7r/5 | \u00a79Ability: \u00a72Creeper \u00a7r| Tool: Sword | CD: "}, {"score":{"name":"@s","objective":"CreeperCooldown"}}]}

# Zombie - Uses Sword
execute if score @s AbilityType matches 5 run title @s actionbar {"rawtext":[{"text":"\u00a76DNA: "}, {"score":{"name":"@s","objective":"DNA"}}, {"text":"\u00a7r/5 | \u00a79Ability: \u00a7aZombie \u00a7r| Tool: Sword | CD: "}, {"score":{"name":"@s","objective":"ZombieCooldown"}}]}

# Skeleton - Uses Bow
execute if score @s AbilityType matches 6 run title @s actionbar {"rawtext":[{"text":"\u00a76DNA: "}, {"score":{"name":"@s","objective":"DNA"}}, {"text":"\u00a7r/5 | \u00a79Ability: \u00a7fSkeleton \u00a7r| Tool: Bow | CD: "}, {"score":{"name":"@s","objective":"SkeletonCooldown"}}]}

# Ghast - Uses Pickaxe
execute if score @s AbilityType matches 7 run title @s actionbar {"rawtext":[{"text":"\u00a76DNA: "}, {"score":{"name":"@s","objective":"DNA"}}, {"text":"\u00a7r/5 | \u00a79Ability: \u00a7dGhast \u00a7r| Tool: Pickaxe | CD: "}, {"score":{"name":"@s","objective":"GhastCooldown"}}]}

# Phantom - Uses Axe
execute if score @s AbilityType matches 8 run title @s actionbar {"rawtext":[{"text":"\u00a76DNA: "}, {"score":{"name":"@s","objective":"DNA"}}, {"text":"\u00a7r/5 | \u00a79Ability: \u00a73Phantom \u00a7r| Tool: Axe | CD: "}, {"score":{"name":"@s","objective":"PhantomCooldown"}}]}
