
/ Main
/ Returns solution for part I and II.
R:{
    a::read0 `:input7.txt;
    dirs:enlist["/"],4 _' a where like[;"*dir*"]a;
    d:F@/:distinct dirs;
    s:{[d;x] S@/:d[x]}[d;]@/:til count d;
    v:raze s;
    t:sum v where v<=100000;
    u:70000000 - v[0];
    w:min v where {[u;x] 30000000<=u+x}[u;] each v;
    (t;w)
 }

/ Controls in and out per dir: d=1 when we cd into a dir, d grows when we cd into subdirectories of dir, and decreases when we `cd ..`
/ d=0 when we cd out of dir.
/ Return: List of all the contents of dir.
f1:{
    c:(like[a[x];"*cd [/;a-z;A-Z]*"];like[a[x];"*cd ..*"]);
    if[c~10b;d+:1];
    if[c~01b;d-:1];
    folder,:a[x];
 };

/ Loops over f1.
f2:{
    if[d>0;f1[x];];
 };

/ List of contents of dir.
f3:{[x]
    d::1;
    folder::enlist[""];
    n:(x+1) _ til count a;
    f2@/:n;
    enlist[a[x]],1_folder
 };

/ Keep track of the times we cd into dir.
g:{[dir]
    t:"*cd ",dir;
    where like[;t] a
 };

/ Returns list of contents of all all directories called dir. Warning: there are different directories with same name
F:{[dir]
    l:g[dir];
    f3@/:l
 };

/ Exclude non numeric and casts into integers.
S:{sum raze"J"$except[;[.Q.a,"-"," ","."]]@/:x};


"Answers:"
R[`:input7.txt]
"Runtime/memory:"
\ts:1000 R[`:input7.txt]
