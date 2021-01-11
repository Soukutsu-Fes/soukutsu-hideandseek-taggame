# 鬼ごっこ詳細ルール

- 制限時間は5分間
- 鬼になった際、10秒間動けない状態になる
- 鬼には速度上昇1のエフェクトを付与
- 「鬼返し」の制限はなし
- 5分経過後、最後の鬼とそれぞれのプレイヤーのタッチされた回数を表示します



- Time limit is 5 minutes.
- When you become a demon, you become immobile for 10 seconds.
- The demon will be given an effect of speed 1.
- There is no limit for "Oni Return".
- After 5 minutes, the last demon and the number of times each player has been touched will be displayed.



事前に鬼を決めたい場合は次のコマンドを <u>tag-game:prepareのコマンドを打つ前に実行することで</u>可能です。

If you want to determine the demon in advance, you can do so by running the following command before typing the tag-game:prepare command.

```
/tag @r[limit=1] add TAG_hunter
```

limitの数を増やすことで、複数の鬼を抽選することができます。

By increasing the number of limits, you can draw multiple demons.