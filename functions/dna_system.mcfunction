# DNA System - Run this every tick

# Track player deaths and apply DNA loss
execute as @a[scores={Deaths=1..}] run function death_handler

# Track player kills and apply DNA gain
execute as @a[scores={Kills=1..}] run function kill_handler

# Update player displays with DNA level
execute as @a run function update_dna_display

# Detect tool usage and activate abilities
# Sword users (Zombie, Wither, Creeper)
execute as @a[scores={ToolUsed=1..},scores={DNA=5}] run function handle_sword_click

# Axe users (Phantom)
execute as @a[scores={AxeUsed=1..},scores={DNA=5}] run function handle_axe_click

# Pickaxe users (Blaze, Enderman, Ghast)
execute as @a[scores={PickUsed=1..},scores={DNA=5}] run function handle_pickaxe_click

# Bow users (Skeleton, Spider)
execute as @a[scores={BowUsed=1..},scores={DNA=5}] run function handle_bow_click

# Process all ability cooldowns
execute as @a[scores={ZombieCooldown=1..}] run scoreboard players remove @s ZombieCooldown 1
execute as @a[scores={SkeletonCooldown=1..}] run scoreboard players remove @s SkeletonCooldown 1
execute as @a[scores={GhastCooldown=1..}] run scoreboard players remove @s GhastCooldown 1
execute as @a[scores={PhantomCooldown=1..}] run scoreboard players remove @s PhantomCooldown 1
execute as @a[scores={WitherCooldown=1..}] run scoreboard players remove @s WitherCooldown 1
execute as @a[scores={CreeperCooldown=1..}] run scoreboard players remove @s CreeperCooldown 1
execute as @a[scores={SpiderCooldown=1..}] run scoreboard players remove @s SpiderCooldown 1
execute as @a[scores={EndermanCooldown=1..}] run scoreboard players remove @s EndermanCooldown 1
execute as @a[scores={BlazeCooldown=1..}] run scoreboard players remove @s BlazeCooldown 1
execute as @a[scores={DragonBreathCD=1..}] run scoreboard players remove @s DragonBreathCD 1

# Clamp DNA values between 0 and 5
execute as @a[scores={DNA=..-1}] run scoreboard players set @s DNA 0
execute as @a[scores={DNA=6..}] run scoreboard players set @s DNA 5
