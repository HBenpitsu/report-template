#import "@preview/muchpdf:0.1.0": muchpdf

#let report_cover_data = read("/asset/cover/SAMPLE.pdf", encoding: none)

#muchpdf(
  report_cover_data,
  width: 210mm,  
)
