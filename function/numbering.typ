/// headingおよびpageのnumberingをフォーマットを与えて初期化する
/// 
/// - heading_numbering (str | function) : heading numberingのフォーマット
/// - page_numbering (str | function) : page numberingのフォーマット
/// -> content
#let init_context_numbering(doc, heading_numbering, page_numbering) = [
  // フォーマット指定
  #set page(numbering: page_numbering)
  #set heading(numbering: heading_numbering)
  // headingは0-origin
  #counter(heading).update(0)
  // pageはここで指定した値からカウントアップ
  #counter(page).update(1)

  #doc
]
