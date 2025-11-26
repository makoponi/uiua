Html ~ "git: github.com/uiua-lang/webua"

Index ← Html!(Html {
    Head {
      Title "Vega-Lite Bar Chart"
      Meta!°⊸Charset"utf-8"
      Script!°⊸Src"https://cdn.jsdelivr.net/npm/vega@6.2.0" {}
      Script!°⊸Src"https://cdn.jsdelivr.net/npm/vega-lite@6.4.1" {}
      Script!°⊸Src"https://cdn.jsdelivr.net/npm/vega-embed@7.0.2" {}
    }
    Body {
      H₁ "Template for Embedding Vega-Lite Visualization"
      Div!°⊸Id"vis" {}
      Script "var vlSpec = {$schema: 'https://vega.github.io/schema/vega-lite/v6.json',data: {values: [{a: 'C', b: 2},{a: 'C', b: 7},{a: 'C', b: 4},{a: 'D', b: 1},{a: 'D', b: 2},{a: 'D', b: 6},{a: 'E', b: 8},{a: 'E', b: 4},{a: 'E', b: 7},],},mark: 'bar',encoding: {y: {field: 'a', type: 'nominal'},x: {aggregate: 'average',field: 'b',type: 'quantitative',axis: {title: 'Average of b',},},},}; vegaEmbed('#vis', vlSpec);"
    }
  })

Route ← Html!(⍣(
    ⍩(HtmlResp Index) °"/"
  | NotFound
  ))

Html!(Serve!Route 8080)
