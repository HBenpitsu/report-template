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

#let tabfig(columns, ..content, caption) = {
  return figure(caption: caption)[
    #three-line-table(columns: columns, ..content)
  ]
}

#import "@preview/codelst:2.0.2": sourcecode

#let codefig(body, caption) = {
  return figure(caption: caption)[
    #sourcecode[#body]
  ]
}

#let imgfig(path, ..args ,caption) = {
  return figure(caption: caption)[
    #image(path, ..args)
  ]
}

#let scrfig(path, label, ..args, caption) = {
  return align(center)[
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
}