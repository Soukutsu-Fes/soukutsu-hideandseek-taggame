#tick動作用
#タイマー切替処理用と鬼スタート
execute if score 開始まで（秒） soukutsu_hide matches 0 run function hide-and-seek:game/hunter_start

#逃走者に弱体化付与
effect give @a[tag=TAG_escape] minecraft:weakness 2 3 true

#鬼に速度1付与
effect give @a[tag=TAG_hunter] minecraft:speed 2 1 false

#待機時の固定
effect give @a[tag=TAG_taiki] minecraft:weakness 2 3 true

#途中で入ってきた人をスペクテイターに
execute if entity @a[tag=] run gamemode spectator @a[tag=] 