# かくれんぼ詳細仕様

- 制限時間は10分間
- 最初は1分間の鬼待機時間が与えられます。
- 鬼には速度上昇4のエフェクトを付与、頭部に赤い旗を設置
- 逃走者はタッチされるとスペクテイターモードとなり、ゲームから脱落します。
- 全員捕獲、もしくは制限時間終了でゲームが終了します。



- Time limit is 10 minutes.
- At first, you will be given 1 minute to wait for the demon.
- The demon is given an effect of speed increase 4, and a red flag is placed on its head.
- When a fugitive is touched, he enters spectator mode and is eliminated from the game.
- The game ends when all players are captured or the time limit ends.



事前に鬼を決めたい場合は次のコマンドをhide-and-seek:prepareのコマンドを打つ前に実行することで可能です。

If you want to determine the demon in advance, you can do so by running the following command before typing the hide-and-seek:prepare command.

```
/tag @r[limit=1] add HS_hunter
```

limitの数を増やすことで、複数の鬼を抽選することができます。

By increasing the number of limits, you can draw multiple demons.