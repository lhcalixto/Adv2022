
f:{
    if[x="R";i::i+(0;1);if[1<max abs i-j;j::i-(0;1);g[j[0];j[1]]::0]];
    if[x="L";i::i-(0;1);if[1<max abs i-j;j::i+(0;1);g[j[0];j[1]]::0]];
    if[x="U";i::i-(1;0);if[1<max abs i-j;j::i+(1;0);g[j[0];j[1]]::0]];
    if[x="D";i::i+(1;0);if[1<max abs i-j;j::i-(1;0);g[j[0];j[1]]::0]];
 }

F:{
    a:read0 `:input9.txt;
    R:a where a like "R*";
    L:a where a like "L*";
    hr:sum "I"$except[;.Q.A]@/:R;
    hl:sum "I"$except[;.Q.A]@/:L;
    h:hl+hr;
    U:a where a like "U*";
    D:a where a like "D*";
    vu:sum "I"$except[;.Q.A]@/:U;
    vd:sum "I"$except[;.Q.A]@/:D;
    v:vu+vd;

    g::h #' v#1;
    c:(vu;hl);

    s:vs[" ";]@/: a;
    b:"I"$s[;1];
    m:raze b #' s[;0];

    i::j::c;
    f@/:m;
    r:1+sum sum g=0
 }

"Answers:"
F[`:input9.txt]
"Runtime/memory:"
/\ts:1000 F[`:input9.txt]

