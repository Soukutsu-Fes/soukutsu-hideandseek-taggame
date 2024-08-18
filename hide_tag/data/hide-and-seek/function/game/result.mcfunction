#tick処理停止
schedule clear hide-and-seek:game/gaming4

#タイマー停止
tag @a remove HS_E_Timer
schedule clear hide-and-seek:game/timer1
scoreboard players set 残り時間（秒） soukutsu_hide -1

#結果表示用（生き残りあり）コマンド
say 生き残ったのは@a[tag=HS_escape,tag=!HS_down]
playsound minecraft:block.bell.use ambient @a ~ ~ ~
tag @a[tag=HS_escape,tag=!HS_down] add HS_taiki
tell @a[tag=HS_taiki] 運営が場所の確認へ行きます。しばらくその場でお待ちください！

#運営側への確認チャット
tell @a[tag=HS_admin] 再戦する際には、function hide-and-seek:reset を忘れずに実行してください。