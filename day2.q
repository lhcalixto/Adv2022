t:("A X";"A Y";"A Z";"B X";"B Y";"B Z";"C X";"C Y";"C Z")!(4;8;3;1;5;9;7;2;6)
s:("A X";"A Y";"A Z";"B X";"B Y";"B Z";"C X";"C Y";"C Z")!(3;4;8;1;5;9;2;6;7)

F:{
    a:read0 x;
    (sum t[a];sum s[a])
 }

"Answers:"
F[`:input2.txt]
"Runtime/memory:"
\ts:1000 F[`:input2.txt]