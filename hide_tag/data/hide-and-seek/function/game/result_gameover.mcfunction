#結果表示用（生き残りなし）コマンド
#tick処理停止
schedule clear hide-and-seek:game/gaming4

#残り時間のカウント停止
scoreboard players set 残り人数 soukutsu_hide -1
schedule clear hide-and-seek:game/timer1

#アナウンス
execute as @a[tag=HS_E_Timer] run say 鬼が全員を捕まえた！
execute as @a[tag=HS_E_Timer] run title @a title {"text":"全員捕獲"}
execute as @a[tag=HS_E_Timer] run execute at @a run playsound minecraft:block.bell.use ambient @a ~ ~ ~


#運営側への確認チャット
tell @a[tag=HS_E_Timer,limit=1] 再戦する際には、function hide-and-seek:reset を忘れずに実行してください。

tag @a remove HS_E_Timer
