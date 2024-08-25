# 指定したハンターを追加する
# /function tag-game:set_hunter {player:XXXX}

$tag $(player) set TAG_hunter
tellraw @s [{"text":"現在の鬼は"},{"selector": "@a[tag=TAG_hunter]"},{"text":"に設定されています"}]