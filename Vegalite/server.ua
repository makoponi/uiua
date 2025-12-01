Html ~ "git: github.com/uiua-lang/webua"

BuildVar ← $"var vlSpec = {$schema: 'https://vega.github.io/schema/vega-lite/v6.json',data: {values: _,},mark: 'bar',encoding: {y: {field: 'a', type: 'nominal'},x: {aggregate: 'average',field: 'b',type: 'quantitative',axis: {title: 'Average of b',},},},}; vegaEmbed('#vis', vlSpec);"

Index ← Html!(
  Html {
    Head {
      Title "Vega-Lite Bar Chart"
      Meta!°⊸Charset"utf-8"
      Script!°⊸Src"https://cdn.jsdelivr.net/npm/vega@6.2.0" {}
      Script!°⊸Src"https://cdn.jsdelivr.net/npm/vega-lite@6.4.1" {}
      Script!°⊸Src"https://cdn.jsdelivr.net/npm/vega-embed@7.0.2" {}
    }
    Body {
      Div!°⊸Id"vis" {}
      Script $"_"
    }
  }
)

Route ← Html!(
  ⍣(⍩(HtmlResp Index) °"/"
  | NotFound
  )
)

Serve ← Html!(Serve!Route 8080)
