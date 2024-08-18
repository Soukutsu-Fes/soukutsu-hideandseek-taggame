tag @s add TAG_shori1
#鬼側の処理
execute at @s run tag @a[tag=TAG_hunter,distance=..5,limit=1] add TAG_shori
tag @a[tag=TAG_shori] add TAG_escape
tag @a[tag=TAG_shori] remove TAG_hunter
execute as @a[tag=TAG_shori] at @s run tag @p[tag=TAG_shori1] add TAG_shori2

#タッチされた側の処理
tag @s[tag=TAG_shori1,tag=TAG_shori2] add TAG_hunter
tag @s[tag=TAG_shori1,tag=TAG_shori2] remove TAG_escape
effect give @a[tag=TAG_shori1,tag=TAG_shori2] minecraft:weakness 10 3 true
effect give @a[tag=TAG_shori1,tag=TAG_shori2] minecraft:slowness 10 100 true
effect give @a[tag=TAG_shori1,tag=TAG_shori2] minecraft:jump_boost 10 200 true
scoreboard players add @s[tag=TAG_shori1,tag=TAG_shori2] TAG_score 1

#アナウンス
execute if entity @a[tag=TAG_shori1,tag=TAG_shori2] run say @sが鬼になりました

tag @a[tag=TAG_shori] remove TAG_shori
tag @a[tag=TAG_shori1] remove TAG_shori1
tag @a[tag=TAG_shori2] remove TAG_shori2