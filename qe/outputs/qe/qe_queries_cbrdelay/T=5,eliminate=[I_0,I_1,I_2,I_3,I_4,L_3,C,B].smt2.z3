[And(A_4 >= A_3,
     A_3 >= A_2,
     A_2 >= A_1,
     A_1 >= A_0,
     S_4 >= S_3,
     S_3 >= S_2,
     S_2 >= S_1,
     S_1 >= S_0,
     Or(Not(0 <= L_1 + -1*L_2), L_2 + -1*L_1 == 0),
     Or(L_1 + -1*L_0 == 0, Not(0 <= L_0 + -1*L_1)),
     Or(-1*A_1 + S_1 + L_1 <= -5, 0 <= L_0 + -1*L_1),
     Or(A_2 + -1*A_1 + -1*S_3 + S_1 + L_1 + -1*L_2 <= 0,
        0 <= L_0 + -1*L_1),
     Or(L_4 + -1*L_2 == 0, Not(0 <= L_2 + -1*L_4)),
     Or(0 <= L_2 + -1*L_4,
        -1*A_4 + A_2 + -1*L_2 + L_4 <= -10,
        -1*A_3 + A_2 + -1*L_2 + L_4 <= -5),
     Or(-1*A_2 + S_2 + L_2 <= -5, 0 <= L_1 + -1*L_2),
     Or(0 <= -1*A_4 + 2*A_3 + -1*A_2 + L_2 + -1*L_4,
        -3*A_4 + 3*A_2 + 2*S_2 + -2*S_0 + -3*L_2 + 3*L_4 <=
        0,
        -(3/2)*A_4 +
        (3/2)*A_3 +
        (3/2)*A_2 +
        -3*L_2 +
        -1*S_3 +
        -(1/2)*S_0 +
        (3/2)*L_4 <=
        0,
        0 <= L_2 + -1*L_4),
     Or(-1*A_2 + A_1 + -1*L_1 + L_2 <= -5,
        0 <= L_1 + -1*L_2),
     Or(A_2 + -2*A_1 + S_0 + 2*L_1 + -1*L_2 <= -5,
        0 <= L_0 + -1*L_1),
     Or(2*A_2 + -2*A_1 + -1*S_3 + S_0 + 2*L_1 + -2*L_2 <= 0,
        0 <= L_0 + -1*L_1),
     Or(-2*A_2 + 2*A_1 + S_2 + -1*S_1 + -2*L_1 + 2*L_2 <= 0,
        0 <= L_1 + -1*L_2),
     Or(A_4 + -3*A_2 + 2*A_1 + -2*L_0 + 3*L_2 + -1*L_4 <= 0,
        0 <= L_1 + -1*L_2,
        Not(0 <= L_0 + -1*L_1)),
     Or(A_3 + -1*L_4 + -1*S_4 <= 0,
        A_4 + -1*A_2 + -2*S_4 + 2*S_2 + L_2 + -1*L_4 <= 0,
        0 <= L_1 + -1*L_2),
     Or(0 <= L_1 + -1*L_2,
        A_4 + -2*A_2 + S_0 + 2*L_2 + -1*L_4 <= -5,
        A_4 + -3*A_2 + 2*A_1 + -2*L_1 + 3*L_2 + -1*L_4 <=
        -10),
     Or(-2*A_2 + 2*A_1 + -1*A_0 + S_2 + L_0 + -2*L_1 + 2*L_2 <=
        0,
        0 <= L_1 + -1*L_2),
     Or(A_3 + -1*A_1 + -1*L_4 + -1*S_4 + S_1 + L_1 <= 0,
        0 <= L_0 + -1*L_1),
     Or(0 <= L_2 + -1*L_4,
        -1*A_3 + L_4 + S_3 <= -5,
        -1*A_4 + S_4 + L_4 <= -5),
     Or(-1*A_2 + A_1 + -1*A_0 + S_1 + L_0 + -1*L_1 + L_2 <=
        0,
        0 <= L_1 + -1*L_2),
     Or(0 <= -1*A_4 + 2*A_3 + -1*A_2 + L_2 + -1*L_4,
        0 <= L_2 + -1*L_4,
        -1*A_4 + S_4 + L_4 <= -5),
     -1*A_3 + L_2 + S_3 <= 0,
     Or(-3*A_2 + 3*A_1 + S_2 + -1*S_0 + -3*L_1 + 3*L_2 <= 0,
        0 <= L_1 + -1*L_2),
     Or(-2*A_2 + 2*A_1 + S_1 + -1*S_0 + -2*L_1 + 2*L_2 <= 0,
        0 <= L_1 + -1*L_2),
     Or(-1*A_3 + -1*A_2 + A_1 + 2*L_2 + S_4 + -1*L_1 <= 0,
        0 <= L_1 + -1*L_2),
     Or(0 <= -1*A_4 + 2*A_3 + -1*A_2 + L_2 + -1*L_4,
        -1*A_4 + A_2 + -1*L_2 + S_4 + -1*S_3 + L_4 <= 0,
        0 <= L_2 + -1*L_4),
     Or((1/2)*A_4 +
        -(1/2)*A_2 +
        -1*S_3 +
        S_1 +
        (1/2)*L_2 +
        -(1/2)*L_4 <=
        0,
        0 <= L_1 + -1*L_2),
     Or(-4*A_2 + 4*A_1 + -1*A_0 + S_4 + L_0 + -4*L_1 + 4*L_2 <=
        0,
        0 <= L_1 + -1*L_2),
     Or(A_2 + -1*A_1 + -1*S_2 + S_0 + L_1 + -1*L_2 <= 0,
        0 <= L_0 + -1*L_1),
     Or(0 <= -1*A_4 + 2*A_3 + -1*A_2 + L_2 + -1*L_4,
        0 <= A_4 + -3*A_2 + 2*A_1 + -2*L_1 + 3*L_2 + -1*L_4,
        Not(0 <=
            -1*A_4 + A_3 + A_2 + -1*A_1 + -2*L_2 + L_1 + L_4),
        0 <= L_2 + -1*L_4,
        0 <= L_0 + -1*L_1),
     Or(0 <= L_1 + -1*L_2,
        -2*A_2 + A_1 + S_3 + -1*L_1 + 2*L_2 <= -5),
     Or(-2*A_2 + 2*A_1 + S_3 + -1*S_2 + -2*L_1 + 2*L_2 <= 0,
        0 <= L_1 + -1*L_2),
     Or(0 <= -1*A_4 + 2*A_3 + -1*A_2 + L_2 + -1*L_4,
        -2*A_4 + 2*A_2 + 2*S_3 + -2*S_2 + -2*L_2 + 2*L_4 <=
        0,
        0 <= L_2 + -1*L_4),
     Or(-(1/2)*A_4 +
        -(1/2)*A_2 +
        S_3 +
        (1/2)*L_2 +
        (1/2)*L_4 <=
        -5,
        0 <= L_1 + -1*L_2,
        0 <= L_2 + -1*L_4,
        -1*A_3 + L_4 + S_3 <= -5),
     Or(0 <= A_4 + -2*A_3 + A_2 + L_2 + -1*L_4,
        0 <= -1*A_4 + 2*A_3 + -1*A_2 + L_2 + -1*L_4,
        -(3/2)*A_4 +
        (3/2)*A_2 +
        -1*A_0 +
        S_3 +
        L_0 +
        -(3/2)*L_2 +
        (3/2)*L_4 <=
        0),
     Or(0 <= -1*A_4 + 2*A_3 + -1*A_2 + L_2 + -1*L_4,
        -(3/2)*A_4 +
        (3/2)*A_2 +
        -1*A_0 +
        S_3 +
        L_0 +
        -(3/2)*L_2 +
        (3/2)*L_4 <=
        0,
        A_3 + -1*L_2 + -1*S_4 <= 0,
        0 <= L_2 + -1*L_4),
     Or(0 <= -1*A_4 + 2*A_3 + -1*A_2 + L_2 + -1*L_4,
        -(3/2)*A_4 +
        (3/2)*A_2 +
        -1*A_0 +
        S_3 +
        L_0 +
        -(3/2)*L_2 +
        (3/2)*L_4 <=
        0,
        -1*A_4 + A_3 + A_2 + -2*L_2 + -1*S_2 + L_4 <= 0,
        0 <= L_2 + -1*L_4),
     Or(-(3/2)*A_4 +
        (3/2)*A_2 +
        -1*A_0 +
        S_3 +
        L_0 +
        -(3/2)*L_2 +
        (3/2)*L_4 <=
        0,
        -1*A_4 +
        A_3 +
        A_1 +
        -1*A_0 +
        -1*L_2 +
        L_0 +
        -1*L_1 +
        L_4 <=
        0,
        0 <= L_1 + -1*L_2,
        0 <= L_2 + -1*L_4,
        Not(5 <=
            A_4 +
            -1*A_3 +
            -1*A_2 +
            A_1 +
            2*L_2 +
            -1*L_1 +
            -1*L_4)),
     Or(0 <= -1*A_4 + 2*A_3 + -1*A_2 + L_2 + -1*L_4,
        -(3/2)*A_4 +
        (3/2)*A_2 +
        -1*A_0 +
        S_3 +
        L_0 +
        -(3/2)*L_2 +
        (3/2)*L_4 <=
        0,
        0 <= L_2 + -1*L_4,
        0 <=
        A_4 +
        -1*A_3 +
        -1*A_2 +
        A_1 +
        -1*L_1 +
        2*L_2 +
        -1*L_4),
     Or(-(3/2)*A_4 +
        (3/2)*A_2 +
        -1*A_0 +
        S_3 +
        L_0 +
        -(3/2)*L_2 +
        (3/2)*L_4 <=
        0,
        Not(0 <=
            A_4 +
            -1*A_3 +
            -1*A_2 +
            A_1 +
            -1*L_1 +
            2*L_2 +
...