#リセット用
#持っているアイテム消去
clear @a[tag=HS_hunter]
clear @a[tag=HS_escape]

#スコアボードの消去
scoreboard objectives remove soukutsu_hide
scoreboard objectives remove HS_touch

#tick処理停止
schedule clear hide-and-seek:game/timer1
schedule clear hide-and-seek:game/gaming2
schedule clear hide-and-seek:game/gaming4

#チーム削除
team remove HS_hunter
team remove HS_escape

#プレイヤーをコマンド実行者へテレポートし、ゲームモード変更
tp @a @s
gamemode adventure @a[tag=!HS_admin]

#タグ解除
tag @a remove HS_hunter
tag @a remove HS_escape
tag @a remove HS_taiki
tag @a remove HS_down
tag @a remove HS_admin
tag @a remove HS_P_Timer
tag @a remove HS_E_Timer