# soukutsu-hideandseek-taggame

Minecraft内で鬼ごっこ/かくれんぼができるデータパックです。

A data pack that allows you to play tag-game/hide-and-seek in Minecraft.

## データパックについて About Data Packs

このデータパックは創掘祭会場での鬼ごっこ/かくれんぼ企画用に制作されました。

This datapack was writen for TAG-Game and Hide-and-Seek Project in Soukutsu-fes world.

## 動作確認バージョン Operation check version

Minecraft Java Editon 1.16.4

Spigot環境でも動作を確認しています。

This datapack is moving in Java Editon 1.16.4. Also works in Spigot.

## コマンド一覧 Command List

### エリア設定用 For area setting

```
/function area-set:area200
/function area-set:area300
/function area-set:area400
/function area-set:area500
/function area-set:area600
/function area-set:area700
/function area-set:area800
/function area-set:area900
```

指定されたブロック四方のエリアを設定する（中心はコマンド実行者の座標）

Set the area of the specified block (the center is the coordinates of the command executor).

```
/function area-set:clear
```

エリア設定を消去する

Clear the area settings.

### 鬼ごっこ TAG-game

```
/function tag-game:prepare
```

鬼ごっこの準備コマンド。プレイヤーから無作為に１名鬼を選出する。

A command to prepare for TAG-game. Selects one demon at random from the players.

```
/function tag-game:play
```

鬼ごっこを開始する。一度コマンド実行者の座標にテレポートし、10秒の待機時間の後スタート。

Start TAG-game Once it teleports to the coordinates of the commander, it waits for 10 seconds and then starts.

```
/function tag-game:reset
```

鬼ごっこをリセットする。

Reset TAG-game.



### かくれんぼ Hide-and-Seek

```
/function hide-and-seek:prepare
```

かくれんぼの準備コマンド。プレイヤーから無作為に１名鬼を選出する。

Preparation command for hide-and-seek. One ogre is randomly selected from the players.

```
/function hide-and-seek:play
```

かくれんぼを開始する。鬼は1分の待機時間後にスタート。

Start the hide-and-seek. The ogres start after a one-minute waiting period.

```
/function hide-and-seek:reset
```

かくれんぼをリセットする。

Reset hide-and-seek.



詳細なルール・仕様に関しては次のファイルをご覧ください。

For detailed rules and specifications, please refer to the following file.



[TAG-rules.md]()

[HS-rules.md]()

[specifications.md]()



## Tips

- 参加者は事前にアドベンチャーモードにしておいてください。アドベンチャーモードであればゲームマスターも参加可能です。
- Participants must be in Adventure Mode before the event. The Game Master can also participate if he is in Adventure Mode.
- 以下のタグを準備コマンド実行前に任意のプレイヤーに付けておくことで、指定したプレイヤーや複数プレイヤーで実施することが可能です。
- By attaching the following tags to any player before executing the preparation command, it is possible to implement it on a specified player or multiple players.

```
鬼ごっこ：TAG_hunter
かくれんぼ：HS_hunter
```



## ライセンス License

GNU General Public License (GPL)に基づきます。

It is based on the GNU General Public License (GPL).