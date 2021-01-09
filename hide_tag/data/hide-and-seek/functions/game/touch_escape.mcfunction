#鬼が周囲にいるとき、タグを付与
execute at @s if entity @a[tag=HS_hunter,distance=..5] run tag @s add HS_down

#タッチされたプレイヤーのアナウンス
execute as @s[tag=HS_down,gamemode=adventure] run say @s が捕まりました

#鬼側の処理
execute at @s[tag=HS_down,gamemode=adventure] run execute as @a[tag=HS_hunter,distance=..5] run scoreboard players add @s soukutsu_hide 1

#スペクテイターモードに変更/re
gamemode spectator @a[tag=HS_down]

#残り人数の再処理
scoreboard players reset 残り人数 soukutsu_hide
execute as @a[tag=HS_escape] run scoreboard players add 残り人数 soukutsu_hide 1
execute as @a[tag=HS_down] run scoreboard players remove 残り人数 soukutsu_hide 1
