[And(A_4 >= A_3,
     A_3 >= A_2,
     A_2 >= A_1,
     A_1 >= A_0,
     S_4 >= S_3,
     S_3 >= S_2,
     S_2 >= S_1,
     S_1 >= S_0,
     Or(L_2 + -1*L_1 == 0,
        A_3 + -1*A_2 + -1*L_3 + L_2 + -1*C <= 0),
     Or(L_3 + -1*L_2 == 0,
        A_4 + -1*A_3 + -1*L_4 + L_3 + -1*C <= 0),
     -2*C + S_1 + -1*S_0 <= 0,
     Or(L_2 + -1*L_1 == 0,
        Not(A_2 + -1*A_1 + -1*L_2 + L_1 + -1*C <= 0),
        -1*A_2 + A_1 + C + -1*L_1 + L_2 == 0),
     Or(Not(0 <= L_0 + -1*L_1), L_1 + -1*L_0 == 0),
     Or(L_4 + -1*L_3 == 0,
        Not(A_4 + -1*A_3 + -1*L_4 + L_3 + -1*C <= 0),
        -1*A_4 + A_3 + C + -1*L_3 + L_4 == 0),
     Or(L_4 + -1*L_3 == 0, Not(0 <= L_3 + -1*L_4)),
     Or(-1*A_1 + -2*C + S_3 + L_1 <= -5, L_1 + -1*L_0 == 0),
     Or(L_1 + -1*L_0 == 0,
        A_4 + -1*A_1 + -3*C + L_1 + -1*L_4 <= 0),
     -1*A_2 + L_2 + -1*C + S_3 <= 0,
     -4*C + S_3 + -1*S_0 <= 0,
     -1*A_0 + -3*C + S_3 + L_0 <= 0,
     Or(A_3 + -1*S_4 + -1*L_3 <= 0, C + -1*S_4 + S_2 <= 0),
     Or(L_1 + -1*L_0 == 0,
        A_2 + -1*A_1 + -1*L_2 + L_1 + -1*C <= 0),
     Or(0 <= L_2 + -1*L_3,
        -1*A_3 + A_1 + 2*C + -1*L_1 + L_3 == 0,
        A_2 + -1*L_2 + C + -1*S_4 <= 0,
        Not(0 <= -1*A_3 + A_1 + -1*L_1 + 2*C + L_3)),
     Or(L_1 + -1*L_0 == 0,
        0 <= -1*A_3 + A_1 + -1*L_1 + 2*C + L_3),
     Or(0 <= L_2 + -1*L_3,
        -1*A_3 + A_1 + 2*C + -1*L_1 + L_3 == 0,
        -1*A_3 +
        A_2 +
        A_1 +
        -1*L_2 +
        C +
        -1*S_2 +
        -1*L_1 +
        L_3 <=
        0,
        Not(0 <= -1*A_3 + A_1 + -1*L_1 + 2*C + L_3)),
     Or(0 <= L_2 + -1*L_3,
        -1*A_3 + A_1 + 2*C + -1*L_1 + L_3 == 0,
        -1*A_3 + A_2 + -1*L_2 + C + L_3 <= -5,
        Not(0 <= -1*A_3 + A_1 + -1*L_1 + 2*C + L_3)),
     Or(L_1 + -1*L_0 == 0,
        A_3 +
        -1*A_2 +
        -1*A_1 +
        L_2 +
        -1*C +
        S_1 +
        L_1 +
        -1*L_3 <=
        0),
     Or(0 <= L_2 + -1*L_3,
        A_2 + -1*S_3 + -1*L_2 <= 0,
        -1*A_3 + A_1 + 2*C + -1*L_1 + L_3 == 0,
        Not(0 <= -1*A_3 + A_1 + -1*L_1 + 2*C + L_3)),
     Or(0 <= L_2 + -1*L_3,
        -1*A_3 + A_1 + 2*C + -1*L_1 + L_3 == 0,
        -1*A_3 + A_2 + A_1 + -1*L_2 + -1*S_1 + -1*L_1 + L_3 <=
        0,
        Not(0 <= -1*A_3 + A_1 + -1*L_1 + 2*C + L_3)),
     Or(0 <= L_2 + -1*L_3,
        -1*A_3 + A_1 + 2*C + -1*L_1 + L_3 == 0,
        -1*A_3 +
        A_2 +
        A_1 +
        -1*L_2 +
        -1*C +
        -1*S_0 +
        -1*L_1 +
        L_3 <=
        0,
        Not(0 <= -1*A_3 + A_1 + -1*L_1 + 2*C + L_3)),
     Or(0 <= L_2 + -1*L_3,
        -1*A_3 +
        A_2 +
        A_1 +
        -1*A_0 +
        -1*L_2 +
        L_0 +
        -1*L_1 +
        L_3 <=
        0,
        -1*A_3 + A_1 + 2*C + -1*L_1 + L_3 == 0,
        Not(0 <= -1*A_3 + A_1 + -1*L_1 + 2*C + L_3)),
     Or(Not(0 <= L_2 + -1*L_3), L_3 + -1*L_2 == 0),
     Or(A_1 + -1*S_2 + -1*L_1 <= 0, C + -1*S_2 + S_0 <= 0),
     -1*A_0 + -1*C + S_1 + L_0 <= 0,
     Or(A_2 + -1*S_3 + -1*L_2 <= 0, C + -1*S_3 + S_1 <= 0),
     -2*C + S_2 + -1*S_1 <= 0,
     -1*A_0 + -2*C + S_2 + L_0 <= 0,
     Or(L_1 + -1*L_0 == 0, -1*A_1 + -1*C + S_2 + L_1 <= -5),
     Or(A_3 + -1*S_4 + -1*L_3 <= 0,
        -1*A_4 + A_1 + 3*C + -1*L_1 + L_4 == 0,
        Not(A_4 + -1*A_1 + -3*C + L_1 + -1*L_4 <= 0),
        0 <= L_3 + -1*L_4,
        -1*A_4 + A_2 + -1*L_2 + 2*C + L_4 <= -5),
     Or(A_3 + -1*S_4 + -1*L_3 <= 0,
        -1*A_4 + A_1 + 3*C + -1*L_1 + L_4 == 0,
        A_2 + -1*L_2 + C + -1*S_4 <= 0,
        Not(A_4 + -1*A_1 + -3*C + L_1 + -1*L_4 <= 0),
        0 <= L_3 + -1*L_4),
     Or(L_1 + -1*L_0 == 0, -1*A_1 + S_1 + L_1 <= -5),
     -2*C + S_4 + -1*S_3 <= 0,
     -1*A_2 + L_2 + -2*C + S_4 <= 0,
     Or(Not(-1*A_3 + A_2 + C + -1*L_1 + L_3 <= 0),
        0 <= L_3 + -1*L_4,
        -1*A_4 + A_2 + -1*L_2 + 2*C + L_4 <= -5,
        0 <= A_4 + -1*A_1 + -1*L_4 + -3*C + L_1),
     Or(Not(-1*A_3 + A_2 + C + -1*L_1 + L_3 <= 0),
        -1*A_4 +
        A_2 +
        A_1 +
        -1*L_2 +
        2*C +
        -1*S_2 +
        -1*L_1 +
        L_4 <=
        0,
        0 <= L_3 + -1*L_4,
        0 <= A_4 + -1*A_1 + -1*L_4 + -3*C + L_1),
     Or(L_1 + -1*L_0 == 0,
        A_4 +
        -1*A_2 +
        -1*A_1 +
        L_2 +
        -2*C +
        S_1 +
        L_1 +
        -1*L_4 <=
        0),
     Or(Not(-1*A_3 + A_2 + C + -1*L_1 + L_3 <= 0),
        -1*A_4 + A_2 + A_1 + -1*L_2 + -1*S_0 + -1*L_1 + L_4 <=
        0,
        0 <= L_3 + -1*L_4,
        0 <= A_4 + -1*A_1 + -1*L_4 + -3*C + L_1),
     Or(Not(-1*A_3 + A_2 + C + -1*L_1 + L_3 <= 0),
        -1*A_4 +
        A_2 +
        A_1 +
        -1*L_2 +
        C +
        -1*S_1 +
        -1*L_1 +
        L_4 <=
        0,
        0 <= L_3 + -1*L_4,
        0 <= A_4 + -1*A_1 + -1*L_4 + -3*C + L_1),
     Or(L_1 + -1*L_0 == 0,
        A_4 +
        -1*A_3 +
        -1*A_1 +
        L_3 +
        -1*C +
        S_1 +
        L_1 +
        -1*L_4 <=
        0),
     Or(L_1 + -1*L_0 == 0, -1*A_1 + C + S_0 + L_1 <= -5),
     Or(L_1 + -1*L_0 == 0,
        A_4 +
        -1*A_2 +
        -1*A_1 +
        L_2 +
        -1*C +
        S_0 +
        L_1 +
        -1*L_4 <=
        0),
     Or(Not(-1*A_3 + A_2 + C + -1*L_1 + L_3 <= 0),
        -1*A_4 +
        A_2 +
        A_1 +
        -1*A_0 +
        -1*L_2 +
        C +
        L_0 +
        -1*L_1 +
        L_4 <=
        0,
        0 <= L_3 + -1*L_4,
        0 <= A_4 + -1*A_1 + -1*L_4 + -3*C + L_1),
     Or(A_2 + -1*S_3 + -1*L_2 <= 0,
        -1*A_4 +
        A_3 +
        A_1 +
        -1*L_3 +
        2*C +
        -1*S_3 +
        -1*L_1 +
...