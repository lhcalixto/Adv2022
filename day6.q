F:{[x]
    a:raze read0 x;
    i1:0; i2:0;
    l1:til 4;
    l2:til 14;
    l1:l1+/:til count a;
    l2:l2+/:til count a;
    g:{[a;x] count distinct a[x]}[a;];
    c1:g[l1[0]];
    c2:g[l2[0]];
    while[c1<4;i1+:1;c1:g[l1[i1]]];
    while[c2<14;i2+:1;c2:g[l2[i2]]];
    (4+i1;14+i2)
 }

"Answers:"
F[`:input6.txt]
"Runtime/memory:"
\ts:1000 F[`:input6.txt]
