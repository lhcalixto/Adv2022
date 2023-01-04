
f:{[x;y]
    if[m[x;y]=0; r1:0b];
    l:m[x;]; / selects line y
    b:l-m[x;y];
    b1:y # b;
    b2:(y+1) _ b;
    c:m[;y]; / select column x
    d:c-m[x;y];
    d1:x # d;
    d2:(x+1) _ d;
    lv:$[0N=first where 0=b1<0;count b1;1+first where 0=reverse b1<0]; / how many view looking left
    rv:$[0N=first where 0=b2<0;count b2;1+first where 0=b2<0]; / how many view looking right
    uv:$[0N=first where 0=d1<0;count d1;1+first where reverse 0=d1<0]; / how many view looking up
    dv:$[0N=first where 0=d2<0;count d2;1+first where 0=d2<0]; / how many view looking down
    r1:$[all b1<0;1b;$[all b2<0;1b;$[all d1<0;1b;$[all d2<0;1b;0b]]]]; / 1 if visible, 0 of not
    r2:prd (lv,rv,uv,dv);
    (r1,r2)
 }


F:{
    a:read0 x;
    m::"I"$1 cut' a;
    i:(-1 _ (1 _ til count a)) cross -1 _ (1 _ til count a);
    r:i[;0] f' i[;1];
    edges:-4+2*sum count@/:(a[;0];a[0;]);
    r1:edges + sum r[;0];
    r2::max r[;1];
    (r1;r2)
 }


"Answers:"
F[`:input8.txt]
"Runtime/memory:"
\ts:1000 F[`:input8.txt]