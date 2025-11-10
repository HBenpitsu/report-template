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

#tab(
  <tab>, columns: 3,

  lorem(1), table.vline(), [aaaa], lorem(1), 
  lorem(1),                lorem(1), lorem(1), 
  lorem(1),                lorem(1), lorem(1), 

)[キャプション]

#code(<code>)[
```typst
#lorem(60)
```
][ソースコード]


#img("/asset/abstract/fff.png", <img>)[画像]

#img("/asset/abstract/fff.png", <dum>, width: 20em)[画像]
#img("/asset/abstract/fff.png", <dum>, width: 20em)[画像]
#img("/asset/abstract/fff.png", <dum>, width: 20em)[画像]
#img("/asset/abstract/fff.png", <dum>, width: 20em)[画像]
#img("/asset/abstract/fff.png", <dum>, width: 20em)[画像]

#screenshot("/asset/abstract/fff.png", <screenshot>)[画像]