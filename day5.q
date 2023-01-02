/ Main

F:{
    a:read0 x;
    i:first where a like " 1*";
    j:first where a like "m*";
    b:i#a;
    m:j _ a;
    c:{[b;x] b[;x] where b[;x] in .Q.A}[b;]@/:til max count@/:b;
    d:reverse@/:c except enlist[""];
    n:"I"$vs[" ";]@/:m;
    n:{[n;x] n[x] except 0N}[n;]@/: til count n;
    (F1[n;d];F2[n;d])
 }

F1:{[n;d]
    d1::d;
    f1:{[x;d] r:reverse e:(a:-1*x[0])#d1[x[1]-1];d1[x[1]-1]:a _ d1[x[1]-1];d1[x[2]-1],:r}[;d];
    f1@/:n;
    last@/:d1
 }

F2:{[n;d]
    d2::d;
    f2:{[x;d] e:(a:-1*x[0])#d2[x[1]-1];d2[x[1]-1]:a _ d2[x[1]-1];d2[x[2]-1],:e}[;d];
    f2@/:n;
    last@/:d2
 }

"Answers:"
F[`:input5.txt]
"Runtime/memory:"
\ts:1000 F[`:input5.txt]
