# 🧬 DNA SMP - Minecraft Bedrock Addon

## IMPORTANT: Tool-Based Ability System

Players need **5 DNA** and must use the **correct tool** (left-click) to activate abilities.

### 🎮 DNA System
- **Kills**: +1 DNA per player kill
- **Deaths**: -1 DNA per death
- **Max**: 5 DNA (required to use abilities)
- **Min**: 0 DNA
- **Display**: Action bar shows DNA, ability name, tool needed, and cooldown

## 🛠️ Tool Assignments

### Bow (Left-Click)
- **Spider** 🕷 - Speed II + Jump for 10s
- **Skeleton** 🦴 - Rain arrows on 15 block radius

### Sword (Left-Click)
- **Zombie** 🧟 - Strength II + Regen II for 10s
- **Wither** ☠ - 20% chance to apply Wither II
- **Creeper** 💥 - Explosion jump + Knockback Resist 10s

### Pickaxe (Left-Click)
- **Enderman** 🔮 - Teleport randomly 15 blocks
- **Blaze** 🔥 - Fire Resistance + Levitation 10s
- **Ghast** 👻 - Summon fireballs (4 damage)

### Axe (Left-Click)
- **Phantom** 👻 - Flight + Invisibility for 8s

## 📋 Ability Details

### ⏱️ All Abilities Have 5-Minute (6000 tick) Cooldowns

#### Spider 🕷
- **Tool**: Bow
- **Effect**: Speed II + Jump Boost I for 10 seconds
- **Use**: Chase enemies, escape danger
- **DNA Required**: 5

#### Enderman 🔮
- **Tool**: Pickaxe
- **Effect**: Teleports you to a random location within 15 blocks
- **Use**: Escape, reposition
- **DNA Required**: 5

#### Blaze 🔥
- **Tool**: Pickaxe
- **Effect**: Fire Resistance + Levitation I for 10 seconds
- **Use**: Fly over terrain, avoid fire damage
- **DNA Required**: 5

#### Wither ☠
- **Tool**: Sword
- **Effect**: 20% chance to apply Wither II for 8 seconds to nearby enemies
- **Use**: Debuff enemies in combat
- **DNA Required**: 5
- **Range**: 8 blocks

#### Creeper 💥
- **Tool**: Sword
- **Effect**: Explosion jump (Levitation V for 1 tick) + Resistance I for 10s
- **Use**: Jump high, knock back enemies, reduce damage
- **DNA Required**: 5
- **Damage**: 6 damage to nearby enemies

#### Zombie 🧟
- **Tool**: Sword
- **Effect**: Strength II + Regeneration II for 10 seconds
- **Use**: Melee combat boost, healing
- **DNA Required**: 5

#### Skeleton 🦴
- **Tool**: Bow
- **Effect**: Summons 5 arrows that rain from above on nearby enemies
- **Use**: Area damage, ranged attack
- **DNA Required**: 5
- **Range**: 15 blocks

#### Ghast 👹
- **Tool**: Pickaxe
- **Effect**: Summons 3 fireballs that travel forward
- **Use**: Projectile damage, area control
- **DNA Required**: 5
- **Damage**: 4 damage per fireball impact

#### Phantom 👻
- **Tool**: Axe
- **Effect**: Flight (Levitation I) + Invisibility for 8 seconds
- **Use**: Sneak attacks, evasion, scouting
- **DNA Required**: 5

#### Dragon Breath 🐉
- **Materials**: Dragon Egg + 4x Diamond Block + 4x Gold Block + 4x Nether Brick Block
- **Effect**: Dragon fireball dealing 5 hearts (10 damage)
- **DNA Required**: 5 (for all crafted abilities)
- **Range**: 8 blocks
- **Cooldown**: 5 minutes

## Installation

1. Copy the addon folder to your Minecraft Bedrock worlds folder
2. Activate the addon in your world settings
3. Run `/function setup` to initialize the system
4. Players will automatically be assigned random abilities on spawn

## Commands

### Setup & Info
- `/function setup` - Initialize the DNA system (run once at world start)
- `/function ability_info` - Display all ability information and tool assignments
- `/function assign_random_ability` - Assign a new random ability

### Manual DNA Control
- `/scoreboard players set @s DNA 5` - Set to 5 DNA (ability unlock)
- `/scoreboard players set @s DNA 0` - Set to 0 DNA
- `/scoreboard players add @s DNA 1` - Add 1 DNA

### Manual Ability Assignment
- `/scoreboard players set @s AbilityType 0` - Spider (Bow)
- `/scoreboard players set @s AbilityType 1` - Enderman (Pickaxe)
- `/scoreboard players set @s AbilityType 2` - Blaze (Pickaxe)
- `/scoreboard players set @s AbilityType 3` - Wither (Sword)
- `/scoreboard players set @s AbilityType 4` - Creeper (Sword)
- `/scoreboard players set @s AbilityType 5` - Zombie (Sword)
- `/scoreboard players set @s AbilityType 6` - Skeleton (Bow)
- `/scoreboard players set @s AbilityType 7` - Ghast (Pickaxe)
- `/scoreboard players set @s AbilityType 8` - Phantom (Axe)

## DNA Progression

| DNA Level | Status | Ability Access |
|-----------|--------|----------------|
| 0-4 | Collecting | ❌ No abilities |
| 5 | Dominating | ✅ All abilities available |

## How to Use Abilities

1. **Reach 5 DNA** by killing other players
2. **Check your ability** - Look at action bar to see which tool to use
3. **Hold the correct tool** (Sword, Bow, Pickaxe, or Axe)
4. **Left-click** to activate your ability
5. **Wait 5 minutes** for cooldown to reset

## Tips & Strategy

- **Sword abilities** are best for melee fights (Zombie, Wither, Creeper)
- **Bow abilities** are best for ranged attacks (Spider, Skeleton)
- **Pickaxe abilities** are best for escaping/positioning (Enderman, Blaze, Ghast)
- **Axe abilities** are best for tactical retreats (Phantom with invisibility)
- **Combo strategies**: Use Skeleton arrows + Creeper jump for area control
- **Phantom + Spider**: Invisibility + speed is perfect for sneaking
- **Protect your DNA**: Always play defensively at 5 DNA to keep your abilities

## Version
- **Addon Version**: 2.0.0
- **Minecraft Version**: 1.19+
- **Total Abilities**: 9 mob abilities + 1 craftable Dragon Breath
- **System**: Tool-based activation with 5 DNA requirement

---

**Created for Minecraft Bedrock SMP Servers**

**NOW WITH TOOL-BASED ABILITY ACTIVATION!**
