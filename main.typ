#import "commands.typ": * 

// ユーザ定義の参考文献システム
#import "@local/bxbibwrite:0.2.1": *
#show: use-bib-item-ref

#set text(lang: "ja", font: "Noto Sans CJK JP") 
#show figure: set block(breakable: true) // 図が大きい場合にページをまたぐことを許す
#show figure.where(kind: table): set figure.caption(position: top)
#show figure.where(kind: raw): set figure.caption(position: top)
#show math.equation: set math.equation(numbering: "(1.1)")

#include "content/cover.typ"

#show: doc => init_context_numbering(doc, "1.1", "1")
#let contents = (
  "abstract.typ",
  "ex.typ",
  "summary.typ",
)
#for content in contents {
  include "content/" + content
  pagebreak()
}

// 組み込みの参考文献システム
#bibliography("reference.yaml", style: "sist02")

// ユーザ定義の参考文献システム (直接書く)
// 組み込みの参考文献の書式が気に入らなければこちらを使う．
// #bibliography-list[
//   #bib-item(<patter_henne>)[David A. Patterson, John L. Hennessy, 成田光彰訳. 【上・下電子合本版】コンピュータの構成と設計 MIPS Edition 第6版. 日経BP, 2022.]
// ]

#show: doc => init_context_numbering(doc, "A.1", "i")
#include "content/appendix.typ"
