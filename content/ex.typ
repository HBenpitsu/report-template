#import "/commands.typ": *

= 実験

ファイルをまたいでリファレンス @img を張ることもできます．
*Bold* 
_Italic_ 
`Code` 
``` `Code2 ```

バックスラッシュ\
で改行

空行では

パラグラフが分かれる

```
code block
```

- 箇条書き
- もできます

+ プラスを使うと
+ 数字がつくよ

#for content in ("あ","い","う","え","お") {
  content*2
}

#let em(content) = {
  return text(red, content)
}
普通の文字の間に#em("赤い文字")を紛れ込ませよう．

#let fib(limit) = {
  let n = 0
  let m = 1
  while (m < limit) {
    [#(n + m), ]
    let t = m
    m = n + m
    n = t
  }
}

#fib(10)

{}をつかうと複数行に渡ってスクリプトモードが継続するよ．(ブロックを構成するよ)

これはインライン数式$exp(log 2)$

これは数式ブロック$ "Bin"(n, p), integral_0^infinity f(x)d x $

#tabfig(
    3, 
    [A], table.vline(), [B], [C],
    [1],                [x], [ ],
    [2],                [ ], [x],
)[ここにキャプションを挿入]<referenceToTable>

#codefig[
```c
#include <stdio.h>
void main(void) {
	printf("hello world");
	return 0;
}
```
][ここにキャプションを記入]<referenceToCode>