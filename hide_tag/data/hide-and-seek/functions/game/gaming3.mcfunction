#タッチ判定のチェック
execute as @a[tag=HS_escape] if score @s HS_touch matches 19 run function hide-and-seek:game/touch_escape

#終了判定
execute if score 残り時間（秒） soukutsu_hide matches 0 run function hide-and-seek:game/result
execute if score 残り人数 soukutsu_hide matches 0 run function hide-and-seek:game/result_gameover
execute if score 残り人数 soukutsu_hide matches 0 run scoreboard players set 残り人数 soukutsu_hide -1