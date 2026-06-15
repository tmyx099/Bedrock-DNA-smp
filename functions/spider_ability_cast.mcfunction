# Spider Ability Cast - Speed boost + climb

# Check cooldown
execute if score @s SpiderCooldown matches 1.. run tellraw @s {"rawtext":[{"text":"\u00a7cSpider ability on cooldown! "}, {"score":{"name":"@s","objective":"SpiderCooldown"}}, {"text":"s remaining"}]}

# If no cooldown, cast ability
execute if score @s SpiderCooldown matches 0 run effect @s speed 10 2
execute if score @s SpiderCooldown matches 0 run effect @s jump_boost 10 1
execute if score @s SpiderCooldown matches 0 run particle web ~~~
execute if score @s SpiderCooldown matches 0 run playsound entity.spider.ambient @a ~~~
execute if score @s SpiderCooldown matches 0 run tellraw @s {"rawtext":[{"text":"\u00a7aSpider power activated! Speed + Jump for 10s"}]}
execute if score @s SpiderCooldown matches 0 run scoreboard players set @s SpiderCooldown 6000
