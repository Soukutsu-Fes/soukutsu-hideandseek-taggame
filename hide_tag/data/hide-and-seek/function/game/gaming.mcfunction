#tick動作用
#タイマー切替処理用と鬼スタート
execute if score 開始まで（秒） soukutsu_hide matches 0 run function hide-and-seek:game/hunter_start

#逃走者に弱体化付与
effect give @a[tag=HS_escape] minecraft:weakness 2 3 true

#鬼にスピード付与
effect give @a[tag=HS_hunter,tag=!HS_taiki] minecraft:speed 2 3 true

#待機時の固定
effect give @a[tag=HS_taiki] minecraft:slowness 2 100 true
effect give @a[tag=HS_taiki] minecraft:jump_boost 2 200 true
effect give @a[tag=HS_taiki] minecraft:weakness 2 3 true

#途中で入ってきた人をスペクテイターに
execute if entity @a[tag=] run gamemode spectator @a[tag=] 