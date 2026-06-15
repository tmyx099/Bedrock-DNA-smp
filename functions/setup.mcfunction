# DNA SMP Setup Function
# Run this once at world start

# Initialize scoreboard for DNA tracking
scoreboard objectives add DNA dummy "DNA Level"
scoreboard objectives add Kills playerKillCount "Kill Count"
scoreboard objectives add Deaths deathCount "Death Count"
scoreboard objectives add AbilityType dummy "Ability Type"

# Ability Cooldowns (all 5 mins = 6000 ticks)
scoreboard objectives add ZombieCooldown dummy "Zombie Cooldown"
scoreboard objectives add SkeletonCooldown dummy "Skeleton Cooldown"
scoreboard objectives add GhastCooldown dummy "Ghast Cooldown"
scoreboard objectives add PhantomCooldown dummy "Phantom Cooldown"
scoreboard objectives add WitherCooldown dummy "Wither Cooldown"
scoreboard objectives add CreeperCooldown dummy "Creeper Cooldown"
scoreboard objectives add SpiderCooldown dummy "Spider Cooldown"
scoreboard objectives add EndermanCooldown dummy "Enderman Cooldown"
scoreboard objectives add BlazeCooldown dummy "Blaze Cooldown"
scoreboard objectives add DragonBreathCD dummy "Dragon Breath Cooldown"
scoreboard objectives add WitherChance dummy "Wither Chance"

# Tool detection
scoreboard objectives add ToolUsed minecraft.used:minecraft.iron_sword
scoreboard objectives add AxeUsed minecraft.used:minecraft.iron_axe
scoreboard objectives add PickUsed minecraft.used:minecraft.iron_pickaxe
scoreboard objectives add BowUsed minecraft.used:minecraft.bow

# Give everyone starting DNA
execute as @a run scoreboard players set @s DNA 2

# Assign random abilities to all players
execute as @a run function assign_random_ability

# Tell players setup is complete
tellraw @a {"rawtext":[{"text":"\n\u00a7l\u00a76DNA SMP Initialized!\u00a7r\n\u00a7eYour DNA is tracked on the scoreboard.\n\u00a7aKill players to gain DNA!\n\u00a7cDie to lose DNA!\n\u00a7d\u2728 Check your ability with /ability_info\n\u00a76You need 5 DNA to use your ability!\n\u00a79Use: Sword/Axe/Pickaxe/Bow (depends on ability)\n\n"}]}
