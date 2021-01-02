#準備用コマンド

#コマンド実行者に識別タグ付与
tag @s add TAG_admin

#かくれんぼ用のスコアボードを用意してサイドバーにセット
scoreboard objectives add soukutsu_taggame dummy "鬼ごっこ"
scoreboard objectives setdisplay sidebar soukutsu_taggame
scoreboard players set 開始まで（秒） soukutsu_taggame 10
scoreboard players set 残り時間（秒） soukutsu_taggame 301

#タッチ判定用のスコアボードを用意し、スコアを20に固定する
scoreboard objectives add TAG_touch health "タッチ判定"
#effect give @a minecraft:poison 1 1 true

#タッチされた回数を記録するスコアボードを作成する
scoreboard objectives add TAG_score dummy "タッチされた回数"
scoreboard players set @a TAG_score 0

#参加者用のチームを作成・設定
team add TAG_game "参加者"
team modify TAG_game nametagVisibility hideForOwnTeam

#初期鬼を抽選する
execute unless entity @a[tag=TAG_hunter] run tag @r[limit=1] add TAG_hunter
tag @a[tag=TAG_hunter] add TAG_taiki
say 最初の鬼は @a[tag=TAG_hunter]

#逃走者にタグを付与
tag @a[tag=!TAG_hunter,gamemode=adventure] add TAG_escape

#tick1処理開始
function tag-game:game/tick1