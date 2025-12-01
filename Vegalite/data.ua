# Return a JSON wih Vegalite data from a box of strings (Names) and a box of boxes (Values)
# Data ? Name Values
SetData ← |2 ⌅(
  |2json◇≡(□map)⊙(|1 ⍉≡°□)˜↯⊙⊸(|1 ⧻°□⊏0)
| |1.2⊙(≡□⍉)⊢⍉°□(□⍉)◇≡(°map°□)°json
)

┌─╴Test
  Function ← SetData{"a" "b"} {{"C" "C" "C" "D" "D" "D" "E" "E" "E"}{2 7 4 1 2 6 8 4 7}}
  Inverse  ← °SetData"[{'a':'C','b':2},{'a':'C','b':7},{'a':'C','b':4},{'a':'D','b':1},{'a':'D','b':2},{'a':'D','b':6},{'a':'E','b':8},{'a':'E','b':4},{'a':'E','b':7}]"
  ˙⍤ ≍ SetData Inverse Function
└─╴
