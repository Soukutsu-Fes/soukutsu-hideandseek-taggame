# soukutsu-hideandseek-taggame

## データパックについて

このデータパックは創掘祭会場での鬼ごっこ/かくれんぼ企画用に制作されました。

This datapack was writen for TAG-Game and Hide-and-Seek Project in Soukutsu-fes world.

## 動作確認バージョン

Minecraft Java Editon 1.16.4

Spigot環境でも動作を確認しています。

This datapack is moving in Java Editon 1.16.4. Also works in Spigot.

## コマンド一覧

### エリア設定用

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

```
/function area-set:clear
```

エリア設定を消去する



### 鬼ごっこ

```
/function tag-game:prepare
```

鬼ごっこの準備コマンド。プレイヤーから無作為に１名鬼を選出する。

```
/function tag-game:play
```

鬼ごっこを開始する。一度コマンド実行者の座標にテレポートし、10秒の待機時間の後スタート。

```
/function tag-game:reset
```

鬼ごっこをリセットする。



### かくれんぼ

```
/function hide-and-seek:prepare
```

かくれんぼの準備コマンド。プレイヤーから無作為に１名鬼を選出する。

```
/function hide-and-seek:play
```

かくれんぼを開始する。鬼は1分の待機時間後にスタート。

```
/function hide-and-seek:reset
```

かくれんぼをリセットする。



詳細なルール・仕様に関しては次のファイルをご覧ください。

TAG-rules.md

HS-rules.md



## Tips

- 参加者は事前にアドベンチャーモードにしておいてください。アドベンチャーモードであればゲームマスターも参加可能です。
- 以下のタグを準備コマンド実行前に任意のプレイヤーに付けておくことで、指定したプレイヤーや複数プレイヤーで実施することが可能です。

```
鬼ごっこ：TAG_hunter
かくれんぼ：HS_hunter
```



## ライセンス

GNU General Public License (GPL)に基づきます。