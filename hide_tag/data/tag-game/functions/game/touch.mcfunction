tag @s add TAG_shori1
#鬼側の処理
execute at @s run tag @a[tag=TAG_hunter,distance=..5,limit=1] add TAG_shori
tag @a[tag=TAG_shori] add TAG_escape
tag @a[tag=TAG_shori] remove TAG_hunter
tag @a[tag=TAG_shori] remove TAG_shori

#タッチされた側の処理
tag @s[tag=TAG_shori1] add TAG_hunter
tag @s[tag=TAG_shori1] remove TAG_escape
scoreboard players add @s[tag=TAG_shori1] TAG_score 1
effect give @a[tag=TAG_shori1] minecraft:weakness 10 3 true
effect give @a[tag=TAG_shori1] minecraft:slowness 10 100 true
effect give @a[tag=TAG_shori1] minecraft:jump_boost 10 200 true

#アナウンス
execute if entity @a[tag=TAG_shori1] run say @sが鬼になりました

tag @a[tag=TAG_shori1] remove TAG_shori1