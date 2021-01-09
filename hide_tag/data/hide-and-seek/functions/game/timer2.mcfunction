#準備タイマーの時間が0になったとき、鬼タイマーへ移行する
execute if score 開始まで（秒） soukutsu_hide matches 0 run tag @a remove HS_P_Timer
execute as @a[tag=HS_admin] if score 残り時間（秒） soukutsu_taggame matches 600 as @a run playsound minecraft:block.vine.step block @s ~ ~ ~

#準備タイマーの減算処理
execute as @a[limit=1,tag=HS_P_Timer] run scoreboard players remove 開始まで（秒） soukutsu_hide 1
execute as @a[limit=1,tag=HS_P_Timer] run execute as @a at @s run playsound minecraft:block.stone_button.click_on block @s ~ ~ ~

#鬼タイマーの減算処理
execute as @a[limit=1,tag=HS_E_Timer,tag=!HS_P_Timer] run scoreboard players remove 残り時間（秒） soukutsu_hide 1

#音系
execute as @a[limit=1,tag=HS_P_Timer] run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup block @p ~ ~ ~
execute as @a[tag=HS_admin] if score 残り時間（秒） soukutsu_taggame matches 10 run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @a[tag=HS_admin] if score 残り時間（秒） soukutsu_taggame matches 8 run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @a[tag=HS_admin] if score 残り時間（秒） soukutsu_taggame matches 7 run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @a[tag=HS_admin] if score 残り時間（秒） soukutsu_taggame matches 6 run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @a[tag=HS_admin] if score 残り時間（秒） soukutsu_taggame matches 5 run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @a[tag=HS_admin] if score 残り時間（秒） soukutsu_taggame matches 4 run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @a[tag=HS_admin] if score 残り時間（秒） soukutsu_taggame matches 3 run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @a[tag=HS_admin] if score 残り時間（秒） soukutsu_taggame matches 2 run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @a[tag=HS_admin] if score 残り時間（秒） soukutsu_taggame matches 1 run execute as @a[tag=HS_hunter] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~

