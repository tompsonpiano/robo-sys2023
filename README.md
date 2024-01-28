# robo-sys2023
* ![test](https://github.com/tompsonpiano/robo-sys2023/actions/workflows/test.yml/badge.svg)

ロボットシステム学の練習用ディレクトリです。

標準入力によって簡単な四則演算ができる電卓プログラムを制作しています。




# 使用方法
リポジトリをダウンロードしたのち、"plus_cal.py" を実行してください。
実行時に表示される指示通りに数字二つと演算子(+,-,*,/ の4つが対応しています)を入力すると結果が表示されます。


# ソースコード
```
#!/usr/bin/python3
#SPDX-FileCopyrightText: 2023 Tomohiro Hayashi  s19c1094hn@s.chibakoudai.jp
#SPDX-License-Identifier: BSD-3-Clause

import sys
ans = 0

def plus(x, y):
    x + y
    return x + y

def minus(x, y):
    x - y
    return x - y

def multiply(x, y):
    x * y
    return x * y

def divide(x, y):
    x / y
    return x / y

num1 = int(input("Enter the first number: "))
num2 = int(input("Enter the second number: "))

op = input("Choose operator(+,-,*,/): ")

if op == '+':
    ans = plus(num1,num2)
    print(ans)

elif op == '-':
    ans = minus(num1,num2)
    print(ans)
    
elif op == '*':
    ans = multiply(num1,num2)
    print(ans)
    
elif op == '/':
    ans = divide(num1,num2)
    print(ans)
    
else:
    print("Please try again")

```

## 必要なソフトウェア
* Python
 * テスト済み： 3.7~3.10

 

## テスト環境
* Ubuntu 20.04 LTS


* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
* [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
* © 2023 Tomohiro Hayashi