#import "../commands.typ": *
// 組み込みの参考文献システム
// #bibliography("reference.yaml", style: "sist02")

// ユーザ定義の参考文献システム (直接書く)
// 組み込みの参考文献の書式が気に入らなければこちらを使う．
#bibliography-list(
  title: "参考文献"
)[
  #bib-item(<patter_henne>)[David A. Patterson, John L. Hennessy, 成田光彰訳. 【上・下電子合本版】コンピュータの構成と設計 MIPS Edition 第6版. 日経BP, 2022.]
]