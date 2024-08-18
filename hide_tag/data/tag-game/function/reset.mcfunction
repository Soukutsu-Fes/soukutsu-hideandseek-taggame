#リセット処理

#tickの停止
schedule clear tag-game:game/tick1
schedule clear tag-game:game/tick2
schedule clear tag-game:game/timer1

#スコアボードの削除
scoreboard objectives remove soukutsu_taggame
scoreboard objectives remove TAG_touch
scoreboard objectives remove TAG_score

#チーム削除
team remove TAG_game

#アイテム削除
clear @a[tag=!TAG_admin]

#プレイヤーをコマンド実行者へテレポートし、ゲームモード変更
tp @a @s
gamemode adventure @a[tag=!TAG_admin]

#タグの削除
tag @a remove TAG_hunter
tag @a remove TAG_escape
tag @a remove TAG_interval
tag @a remove TAG_shori
tag @a remove TAG_shori1
tag @a remove TAG_P_Timer
tag @a remove TAG_E_Timer
tag @a remove TAG_admin