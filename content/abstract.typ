#import "/commands.typ": *

= ヘッダ

#lorem(30) @patter_henne[p. 20].

== ヘッダ2

@eq:1
@eq:2
@tab
@code
@img
@screenshot
リファレンス#[@img]のあとにスペースを開けたくないときは`...#[@...]...`と書くと良い

$ exp $ <eq:1>
#nonum[
  $ exp $
  $ exp $
]
$ exp $ <eq:2>

#tabfig(
  3,

  lorem(1), table.vline(), [aaaa], lorem(1), 
  lorem(1),                lorem(1), lorem(1), 
  lorem(1),                lorem(1), lorem(1), 

)[キャプション]
<tab>

#codefig[
```typst
#lorem(60)
```
][ソースコード]
<code>

#imgfig("/asset/abstract/fff.png")[画像]
<img>

#imgfig("/asset/abstract/fff.png", width: 20em)[画像]
#imgfig("/asset/abstract/fff.png", width: 20em)[画像]
#imgfig("/asset/abstract/fff.png", width: 20em)[画像]
#imgfig("/asset/abstract/fff.png", width: 20em)[画像]
#imgfig("/asset/abstract/fff.png", width: 20em)[画像]

#scrfig("/asset/abstract/fff.png", <screenshot>)[画像]