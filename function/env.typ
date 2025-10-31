/// numberingを無効にする．この間にequationやfigureが存在してもカウントアップされない．
/// 
/// ```
/// $ exp $ // ここはnumberingされる (1)
/// #nonum[
///   $ exp $ // ここはnumberingされない
/// ]
/// $ exp $ // ここはnumberingされる (2) // 3ではない
/// ```
/// 
/// - body (content): numberingを無効にしたい部分
/// -> content
#let nonum(body) = [
  #show math.equation: set math.equation(numbering: none)
  #show figure: set figure(numbering: none)
  #body
]

#let pagefit(cont) = [
  #show figure: set block(breakable: false)
  #cont
]

#let pageover(cont) = [
  #show figure: set block(breakable: true)
  #cont
]