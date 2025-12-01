Html ~ "git: github.com/uiua-lang/webua"
Server ~ "server.ua"
~ "data.ua" ~ SetData

SetData {"a" "b"} {{"C" "C" "C" "D" "D" "D" "E" "E" "E"}{2 7 4 1 2 6 8 4 7}}
Server!(BuildVar)
Index ← Server!(Index)
