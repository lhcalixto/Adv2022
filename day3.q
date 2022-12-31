d:.Q.a,.Q.A;

F1:{h:"j"$0.5*count[x];`l1`l2 set' (0;h) _ x;1+where d=first inter[l1;l2]}
F2:{sum 1+where@/: =[d;]@/:first@/:(inter/)@/:3 cut x}

F:{
    a:read0 x;
    (first sum F1@/:a;F2[a])
 }

"Answers:"
F[`:input3.txt]
"Runtime/memory:"
\ts:1000 F[`:input3.txt]
