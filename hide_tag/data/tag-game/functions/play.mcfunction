#全員アドミンの場所へとTP
tp @a @a[limit=1,tag=TAG_admin]

#タイマースタート
tag @s add TAG_P_Timer
tag @s add TAG_E_Timer
function tag-game:game/timer1

#鬼を動けなくする
effect give @a[tag=TAG_hunter] minecraft:slowness 10 100 true
effect give @a[tag=TAG_hunter] minecraft:jump_boost 10 200 true

#tick2処理を開始
function tag-game:game/tick2