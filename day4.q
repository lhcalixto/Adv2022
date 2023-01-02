/ Main

F:{
    a:read0 x;
    d:"I"$vs["-";]@/:ssr[;",";"-"]@/:a;
    (F1[d];F2[d])
 }

F1:{
    v:x[;0]-x[;2];
    w:x[;1]-x[;3];
    count where 0>=v*w
 }

F2:{
    v:sum 0<x[;0]-x[;3];
    w:sum 0<x[;2]-x[;1];
    count[x]-v+w
 }

"Answers:"
F[`:input4.txt]
"Runtime/memory:"
\ts:1000 F[`:input4.txt]