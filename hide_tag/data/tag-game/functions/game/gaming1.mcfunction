#tick動作用
#タイマー切替処理用と鬼スタート
execute if score 開始まで（秒） soukutsu_hide matches 0 run function hide-and-seek:game/hunter_start

#逃走者に弱体化付与
effect give @a[tag=TAG_escape] minecraft:weakness 2 3 true

#待機時の固定
effect give @a[tag=TAG_taiki] minecraft:weakness 2 3 true
