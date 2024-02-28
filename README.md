# robo-sys2023
* ![test](https://github.com/tompsonpiano/robo-sys2023/actions/workflows/test.yml/badge.svg)

ロボットシステム学の練習用ディレクトリです。

入力された二つの数字で四則演算ができる電卓プログラムです。


# 使用方法
リポジトリをダウンロードしたのち、"plus_cal" を実行してください。
実行時に一つ目の数字、演算子(+,-,*,/)または操作コマンド(clear,quit)、二つ目の数字の順番で入力すると結果が表示されます。

入力後に自動で結果が表示されます。

# 入出力例
実行した際の例です。
まず、プログラムを実行すると以下の文字列が表示されます。
```
calculator
```

5 + 6 を計算する場合、以下のように入力することで計算の答えが表示されます。

```
5
+
6
11
```

続けて計算を行う場合は、演算子と次の数字を入力してください。上の結果の 11 にさらに + 5 を行う場合、以下のように続けて入力することで計算が行われます。

```
...
11
+
5
16
```


#　操作コマンド
本プログラムには二つのコマンドがあります。これらは演算子と同じ場所に入力することで機能します。

* clear : 計算をクリアします。このコマンドを行った後は最初の操作と同じく、一つ目の数字から改めて入力を行う必要があります。

```
# 使用例
calculator
1
*
5
5
clear
2
*
10
20
```

* quit : プログラムを終了します。


## 必要なソフトウェア
* Python
    * テスト済み： 3.7~3.10

 

## テスト環境
* Ubuntu



## ライセンス
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    * [ryuichiueda/my_slides/robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
* © 2023 Tomohiro Hayas操作操作