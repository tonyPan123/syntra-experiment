[And(A_3 + -1*L_2 <= S_3,
     A_3 >= A_2,
     A_2 >= A_1,
     A_1 >= A_0,
     S_2 >= S_1,
     S_1 >= S_0,
     S_4 >= S_3,
     Or(L_1 == L_0, Not(0 <= -1*L_1 + L_0)),
     Or(L_4 == L_2,
        -2*L_2 + A_3 + -1*A_4 + A_2 + -1*S_2 + L_4 <= 0),
     Or(L_2 == L_1, Not(0 <= L_1 + -1*L_2)),
     Or(L_1 == L_0,
        L_2 + -1*A_3 + A_4 + -1*A_1 + S_0 + L_1 + -1*L_4 <=
        0),
     S_4 + -1*A_4 + L_4 <= 0,
     Or(L_2 == L_1,
        A_4 + -3*A_2 + 2*A_1 + -2*L_1 + 3*L_2 + -1*L_4 <= 0),
     Or(L_4 == L_2,
        -1*L_2 + A_3 + -1*A_4 + A_1 + -1*S_1 + -1*L_1 + L_4 <=
        0),
     Or(L_1 == L_0, -1*A_1 + S_1 + L_1 <= -5),
     Or(L_1 == L_0,
        A_2 + -2*A_1 + S_0 + 2*L_1 + -1*L_2 <= -5),
     Or(L_1 == L_0,
        A_2 + -1*A_1 + -1*S_2 + S_0 + L_1 + -1*L_2 <= 0),
     Or(Not(0 <= L_2 + -1*L_4), L_4 == L_2),
     Or(L_2 == L_1, -1*A_2 + S_2 + L_2 <= -5),
     Or(L_4 == L_2, S_4 + -1*A_4 + L_4 <= -5),
     Or(L_4 == L_2,
        S_4 + -1*A_4 + A_1 + -1*S_2 + -1*L_1 + L_4 <= 0),
     Or(L_4 == L_2, -1*L_2 + A_3 + -1*A_4 + L_4 <= -10),
     Or(L_1 == L_0,
        L_4 == L_2,
        -2*L_2 + A_3 + -1*A_4 + A_2 + -1*A_1 + L_1 + L_4 <=
        -5),
     Or(L_4 == L_2,
        -1*L_2 +
        A_3 +
        -1*A_4 +
        A_1 +
        -1*A_0 +
        -1*L_1 +
        L_4 +
        L_0 <=
        0),
     Or(L_2 == L_1,
        2*L_2 + A_3 + -3*A_2 + 3*A_1 + -1*A_0 + -3*L_1 + L_0 <=
        0),
     Or(L_2 == L_1, L_2 + A_3 + -2*A_2 + A_1 + -1*L_1 <= -5),
     Or(L_2 == L_1,
        2*L_2 + -1*A_3 + S_4 + -1*A_2 + A_1 + -1*L_1 <= 0),
     Or(L_2 == L_1,
        2*L_2 + -1*A_3 + A_4 + -1*A_2 + S_1 + -1*L_4 <= 0),
     Or(L_2 == L_1,
        3*L_2 +
        -1*A_3 +
        A_4 +
        -2*A_2 +
        A_1 +
        S_2 +
        -1*L_1 +
        -1*L_4 <=
        0),
     Or(L_2 == L_1,
        L_4 == L_2,
        A_3 +
        -1*A_4 +
        -1*A_2 +
        2*A_1 +
        -1*S_0 +
        -2*L_1 +
        L_4 <=
        0),
     Or(L_2 == L_1,
        -1*A_2 + A_1 + -1*A_0 + S_1 + -1*L_1 + L_2 + L_0 <=
        0),
     Or(L_2 == L_1,
        -2*A_2 + 2*A_1 + S_1 + -1*S_0 + -2*L_1 + 2*L_2 <= 0),
     Or(L_2 == L_1,
        -2*A_2 + 2*A_1 + -1*A_0 + S_2 + -2*L_1 + 2*L_2 + L_0 <=
        0),
     Or(L_2 == L_1,
        -3*A_2 + 3*A_1 + S_2 + -1*S_0 + -3*L_1 + 3*L_2 <= 0),
     Or(L_1 == L_0,
        -1*A_1 + (1/2)*S_2 + (1/2)*S_0 + L_1 <= -5),
     Or(L_2 == L_1,
        L_2 + A_3 + -2*A_2 + 2*A_1 + -1*S_2 + -2*L_1 <= 0),
     Or(L_2 == L_1,
        L_4 == L_2,
        -(1/2)*L_2 +
        A_3 +
        -(1/2)*A_4 +
        -(1/2)*A_2 +
        (1/2)*L_4 <=
        -5),
     Or(L_4 == L_2,
        -3*L_2 + 2*A_3 + -2*A_4 + A_2 + -1*A_0 + 2*L_4 + L_0 <=
        -5),
     Or(L_2 == L_1,
        0 <=
        -2*L_2 + A_3 + -1*A_4 + A_2 + -1*A_1 + L_1 + L_4,
        3*L_2 + -2*A_3 + S_4 + A_4 + -1*A_2 + S_0 + -1*L_4 <=
        0),
     Or(L_4 == L_2,
        A_3 + -1*A_4 + A_2 + -1*A_1 + L_1 + -2*L_2 + L_4 <=
        0),
     Or(A_1 + -1*S_2 + -1*L_1 <= 0, -1*S_2 + S_0 <= -5),
     Or(A_1 + -1*S_2 + -1*L_1 <= 0,
        L_2 + -1*A_3 + S_4 + -1*S_2 + S_0 <= 0),
     Or(L_2 == L_1,
        (1/2)*L_2 + (1/2)*A_3 + -1*A_2 + (1/2)*S_1 <= -5),
     Or(L_2 == L_1,
        2*L_2 + A_3 + -3*A_2 + 3*A_1 + -1*S_1 + -3*L_1 <= 0),
     -1*A_2 + S_2 + L_2 <= 0,
     Or(A_1 + -1*S_2 + -1*L_1 <= 0,
        A_3 + -1*A_2 + -1*S_2 + S_0 <= 0),
     Or(L_1 == L_0, -1*A_1 + S_0 + L_1 <= -10),
     Or(L_2 == L_1,
        3*L_2 + A_3 + -4*A_2 + 4*A_1 + -1*S_0 + -4*L_1 <= 0),
     Or(L_2 == L_1,
        -1*A_2 + -1*A_0 + 2*S_1 + L_2 + L_0 <= -5),
     Or(L_1 == L_0,
        L_4 == L_2,
        -1*L_2 +
        A_3 +
        -(2/3)*A_4 +
        -(1/3)*A_1 +
        (1/3)*L_1 +
        (2/3)*L_4 <=
        -5),
     Or(L_2 == L_1,
        2*L_2 + -1*A_3 + S_4 + -1*A_2 + S_1 <= -5),
     Or(L_2 == L_1,
        2*L_2 + -1*A_3 + S_4 + -1*A_2 + A_1 + -1*L_1 <= -5,
        3*L_2 + -2*A_3 + 2*S_4 + -1*A_2 + S_0 <= -5),
     Or(L_2 == L_1,
        -2*A_2 + 2*A_1 + S_2 + -1*S_1 + -2*L_1 + 2*L_2 <= 0),
     Or(L_2 == L_1,
        0 <=
        -2*L_2 + A_3 + -1*A_4 + A_2 + -1*A_1 + L_1 + L_4,
        (5/2)*L_2 +
        -1*A_3 +
        (3/2)*A_4 +
        -(3/2)*A_2 +
        S_0 +
        -(3/2)*L_4 <=
        0),
     Or(L_2 == L_1,
        0 <=
        -2*L_2 + A_3 + -1*A_4 + A_2 + -1*A_1 + L_1 + L_4,
        4*L_2 + -2*A_3 + 2*A_4 + -2*A_2 + S_2 + S_0 + -2*L_4 <=
        0),
     Or(L_4 == L_2,
        -3*L_2 + 2*A_3 + -2*A_4 + A_2 + -1*S_1 + 2*L_4 <= -5),
     Or(L_1 == L_0,
        L_4 == L_2,
        -(1/2)*L_2 +
        (1/2)*A_3 +
        -(1/2)*A_4 +
        -(1/2)*A_1 +
        (1/2)*S_2 +
        (1/2)*L_1 +
        (1/2)*L_4 <=
        -5),
     Or(L_4 == L_2,
        -2*L_2 +
        (3/2)*A_3 +
        -(3/2)*A_4 +
        (1/2)*A_2 +
        -(1/2)*S_0 +
        (3/2)*L_4 <=
        -5),
     Or(L_2 == L_1,
        -1*A_2 + (3/2)*S_1 + -(1/2)*S_0 + L_2 <= -5),
     Or(L_2 == L_1,
        L_2 + A_3 + -2*A_2 + A_1 + -1*L_1 <= -10,
        (1/3)*L_2 + (2/3)*A_3 + -1*A_2 + (1/3)*S_0 <= -5),
     Or(L_4 == L_2,
        -2*L_2 +
        2*A_3 +
        -2*A_4 +
        A_1 +
        -1*S_0 +
        -1*L_1 +
        2*L_4 <=
        -5),
     Or(L_4 == L_2,
        -2*L_2 +
        2*A_3 +
        -2*A_4 +
        2*A_1 +
        -1*S_2 +
        -1*S_0 +
        -2*L_1 +
        2*L_4 <=
        0),
     Or(L_4 == L_2,
        -1*L_2 + A_3 + -1*A_4 + A_1 + -1*S_2 + -1*L_1 + L_4 <=
        -5),
     Or(L_4 == L_2,
...