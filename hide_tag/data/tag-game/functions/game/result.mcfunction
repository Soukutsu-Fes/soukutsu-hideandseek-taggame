#最終結果の処理用

#tick2の処理停止
schedule clear tag-game:game/tick2

#鬼のタッチ無効化
tag @a[tag=TAG_hunter] add TAG_taiki

#タイマーの停止
tag @a remove TAG_E_Timer
schedule clear tag-game:game/timer1
scoreboard players set 残り時間（秒） soukutsu_taggame -1

#最終的な鬼の表示
title @a title {"text":"終了！"}
say 最後の鬼は@a[tag=TAG_hunter]
playsound minecraft:block.bell.use ambient @a ~ ~ ~

#タッチされた回数の表示
scoreboard objectives setdisplay sidebar TAG_score