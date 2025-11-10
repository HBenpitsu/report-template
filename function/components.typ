/// 三本線のテーブルを作成する．水平線が
/// - ヘッダの上
/// - ヘッダとボディの間
/// - ボディの下
/// 
/// に引かれる．
/// 
/// それ以外の位置には指定しなければ引かれない．
/// table.hlineやtable.vlineを指定すると線が引かれる．
/// 
/// ```
/// #three-line-table(
///     columns: 3, 
///     [A], table.vline(), [B], [C],
///     [1],                [x], [ ],
///     [2],                [ ], [x],
/// )
/// ```
/// 
/// - contents (arguments): 表のセルをカンマ区切りで指定する．
/// - columns  (int): 列数を指定する．
/// -> content
#let three-line-table(columns: auto, ..contents) = [
  #table(
    columns: columns,
    gutter: 0.2em,
    stroke: none,
    table.hline(y: 0),
    table.hline(y: 1),
    ..contents,
    table.hline(),
  )
]

#let tab(columns: auto, label, ..content, caption) = [
  #show figure: set block(breakable: false)
  #figure(caption: caption)[
    #three-line-table(columns: columns, ..content)
  ]#label
]

#let longtab(columns: auto, label, ..content, caption) = [
  #show figure: set block(breakable: true)
  #figure(caption: caption)[
    #three-line-table(columns: columns, ..content)
  ]#label
]

#let bigtab(columns: auto, label, ..content, caption) = [
  #set align(center+horizon)
  #page[
    #rotate(
      -90deg,
      reflow: true,
      [
        #figure(caption: caption)[
          #three-line-table(columns: columns, ..content)
        ]#label
      ]
    )
  ]
]

#import "@preview/codelst:2.0.2": sourcecode, sourcefile

#let snippet(label, body, caption) = [
  #show figure: set block(breakable: false)
  #figure(caption: caption)[
    #sourcecode[#body]
  ]#label
]

#let code(label, body, br: true, caption) = [
  #show figure: set block(breakable: true)
  #set figure(placement: none)
  #figure(caption: caption)[
    #sourcecode[#body]
  ]#label
  #if (br) {pagebreak()}
]

#let _sourcefile_with_path(path, label, caption) = [
  #let parts = path.split("/")
  #let basename = parts.last()
  #let code = read(path)
  #figure(caption: [#caption (#basename)])[
    #sourcefile(code, file: path, lang: auto)
  ]
]

#let minifile(path, label, caption) = [
  #show figure: set block(breakable: false)
  #_sourcefile_with_path(path, label, caption)
]

#let file(path, label, caption) = [
  #show figure: set block(breakable: true)
  #_sourcefile_with_path(path, label, caption)
]

#let img(path, label, ..args ,caption) = [
  #figure(caption: caption)[
    #image(path, ..args)
  ]#label
]

#let screen(path, label, ..args, caption) = [
  #set align(center+horizon)
  #page[
    #rotate(
      -90deg,
      reflow: true,
      [
        #figure(caption: caption)[
          #image(path, width: 100%, ..args)
        ]#label
      ]
    )
  ]
]