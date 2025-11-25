Person ← □₂
Name   ← |1 °□⊡0
Age    ← |1 °□⊡1

Person "Dave" 31
⊸Age

Person "Dave" 31
⍜Age(+1)

~Person {Name Age}
Person "Dave" 31
⊸Person~Age

~Color [r g b]
Color 0.5 0.4 1
⊸Color!(|1 +⊃g b)

~Person {Name Age Items ← {}}
Person "Hannah" 19
⊸⍜⊙Person~Items⊂ {"book" "spatula"}

~Abilities [Str ← 10|Dex ← 10|Con ← 10]

~Abilities [
  Str ← 10
  Dex ← 10
  Con ← 10
  Int ← 10
  Wis ← 10
  Cha ← 10
]

~Particle {Mass Velocity ← ⊟}
Particle 1 3 5
⊸°Particle

~Abilities [Str ← 10|Dex ← 10|Con ← 10]
Abilities!(|0 °⊸Con 12 °⊸Dex 16 New)

┌─╴M
  ≁C {A}
  ≁D {A}
└─╴
# M~D

┌─╴Person
  ~ {Name Age}
  PassYear ← |1 ⍜Age(+1)
  Format   ← $"_ is _ year_ old" ⊃(Name|Age||1 ▽⊙@s≠1Age)
└─╴
Person!(Format PassYear New "Sophie" 41)
Person!(Format PassYear New "Rom" 0)

┌─╴Shape
  |Circle {Radius}
  |Rectangle {Width Height}
  |Point
└─╴
Shape~Circle 4
Shape~Rectangle 3 5
Shape~Point
