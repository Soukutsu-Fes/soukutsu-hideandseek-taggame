#tick動作用

#タッチ判定
execute as @a[tag=TAG_escape] if score @s TAG_touch matches 19 run function tag-game:game/touch

#終了判定
execute if score 残り時間（秒） soukutsu_taggame matches 0 run function tag-game:game/result