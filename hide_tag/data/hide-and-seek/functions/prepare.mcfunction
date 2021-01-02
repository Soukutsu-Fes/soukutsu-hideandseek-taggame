#準備用コマンド

#コマンド実行者に識別タグ付与
tag @s add HS_admin

#かくれんぼ用のスコアボードを用意してサイドバーにセット
scoreboard objectives add soukutsu_hide dummy "かくれんぼ"
scoreboard objectives setdisplay sidebar soukutsu_hide
scoreboard players set 残り人数 soukutsu_hide 0
scoreboard players set 開始まで（秒） soukutsu_hide 60
scoreboard players set 残り時間（秒） soukutsu_hide 601

#タッチ判定用のスコアボードを用意し、スコアを20に固定する
scoreboard objectives add HS_touch health
#effect give @a minecraft:poison 1 1 true

#鬼用・逃走者用のチームを作成・設定
team add HS_hunter
team add HS_escape
team modify HS_hunter nametagVisibility hideForOtherTeams
team modify HS_escape nametagVisibility hideForOtherTeams

#鬼を抽選し、スコアボードにタッチ人数欄を追加・見分けやすいように旗を装着
execute unless entity @a[tag=HS_hunter] run tag @r[limit=1] add HS_hunter
scoreboard players set @a[tag=HS_hunter] soukutsu_hide 0
replaceitem entity @a[tag=HS_hunter] armor.head minecraft:red_banner
tag @a[tag=HS_hunter] add HS_taiki
team join HS_hunter @a[tag=HS_hunter]
say 今回の鬼は @a[tag=HS_hunter]

#逃走者にタグを付与し、残り人数に追加
tag @a[tag=!HS_hunter,gamemode=adventure] add HS_escape
team join HS_escape @a[tag=HS_escape]
execute as @a[tag=HS_escape] run scoreboard players add 残り人数 soukutsu_hide 1