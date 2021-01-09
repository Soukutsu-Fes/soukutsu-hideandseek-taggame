#準備タイマーの時間が0になったとき、鬼タイマーへ移行する
execute if score 開始まで（秒） soukutsu_taggame matches 0 run tag @a remove TAG_P_Timer
execute if score 開始まで（秒） soukutsu_taggame matches 0 run tag @a remove TAG_taiki

#準備タイマーの減算処理
execute as @a[limit=1,tag=TAG_P_Timer] run scoreboard players remove 開始まで（秒） soukutsu_taggame 1

#鬼タイマーの減算処理
execute as @a[limit=1,tag=TAG_E_Timer,tag=!TAG_P_Timer] run scoreboard players remove 残り時間（秒） soukutsu_taggame 1

#音系
execute as @a[tag=TAG_admin] if score 残り時間（秒） soukutsu_taggame matches 300 as @a run playsound minecraft:block.vine.step block @s ~ ~ ~
execute as @a[limit=1,tag=TAG_P_Timer] run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~
execute as @a[limit=1,tag=TAG_P_Timer] run execute as @a at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @a[tag=TAG_admin] if score 残り時間（秒） soukutsu_taggame matches 10 run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @a[tag=TAG_admin] if score 残り時間（秒） soukutsu_taggame matches 9 run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @a[tag=TAG_admin] if score 残り時間（秒） soukutsu_taggame matches 8 run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @a[tag=TAG_admin] if score 残り時間（秒） soukutsu_taggame matches 7 run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @a[tag=TAG_admin] if score 残り時間（秒） soukutsu_taggame matches 6 run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @a[tag=TAG_admin] if score 残り時間（秒） soukutsu_taggame matches 5 run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @a[tag=TAG_admin] if score 残り時間（秒） soukutsu_taggame matches 4 run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @a[tag=TAG_admin] if score 残り時間（秒） soukutsu_taggame matches 3 run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @a[tag=TAG_admin] if score 残り時間（秒） soukutsu_taggame matches 2 run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @a[tag=TAG_admin] if score 残り時間（秒） soukutsu_taggame matches 1 run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~