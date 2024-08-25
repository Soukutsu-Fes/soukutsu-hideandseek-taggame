# 指定したハンターを追加する
# /function hide-and-seek:add_hunter {player:XXXX}

$tag $(player) add HS_hunter
tellraw @s [{"text":"現在の鬼は"},{"selector": "@a[tag=HS_hunter]"},{"text":"に設定されています"}]