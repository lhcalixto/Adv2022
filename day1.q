F1:{i:0,where 0N=s:"I"$x; max e:sum@/:i _ s}
F2:{i:0,where 0N=s:"I"$x; sum top:3#desc e:sum@/:i _ s; (first top; sum top)}

F:{
    a:read0 x;
    F2[a]
 }

"Answers:"
F[`:input1.txt]
"Runtime/memory:"
\ts:1000 F[`:input1.txt]