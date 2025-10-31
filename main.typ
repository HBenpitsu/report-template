#import "commands.typ": * 

// ユーザ定義の参考文献システム bxbibwrite を有効にする
#show: use-bib-item-ref

#set text(lang: "ja", font: "Noto Sans CJK JP") 
#show figure: set block(breakable: true) // 図が大きい場合にページをまたぐことを許す
#show figure.where(kind: table): set figure.caption(position: top)
#show figure.where(kind: raw): set figure.caption(position: top)
#show math.equation: set math.equation(numbering: "(1.1)")

// 字下げの設定
#set par(first-line-indent: 1em)
#show heading: it =>  {
    it
    par(text(size:0.5em, ""))
}

#include "content/cover.typ"

#show: doc => init_context_numbering(doc, "1.1", "1")
#let contents = (
  "abstract.typ",
  "ex.typ",
  "summary.typ",
  "bibliography.typ",
)
#for content in contents {
  include "content/" + content
  pagebreak()
}

#show: doc => init_context_numbering(doc, "A.1", "i")
#include "content/appendix.typ"
