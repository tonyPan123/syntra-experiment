[And(A_1 + -1*L_1 <= S_4,
     A_5 >= A_4,
     A_4 >= A_3,
     A_3 >= A_2,
     S_3 >= S_2,
     S_2 >= S_1,
     S_1 >= S_0,
     A_1 >= A_0,
     S_4 >= S_3,
     Or(L_1 == L_0, Not(0 <= -1*L_1 + L_0)),
     Or(L_1 == L_0,
        Not(0 <= L_1 + -1*A_1 + S_4 + -1*S_3 + S_1)),
     Or(L_1 == L_0,
        Not(0 <= 2*L_1 + -2*A_1 + 2*S_4 + -1*S_3 + S_0)),
     Or(L_1 == L_0,
        Not(0 <=
            S_4 +
            4*A_4 +
            -4*A_5 +
            -1*A_0 +
            4*loss_rate_tol +
            L_0),
        Not(0 <= loss_rate_tol)),
     Or((1/4)*S_4 + -1*S_2 + (3/4)*S_0 <= 0,
        -1*L_1 + A_1 + -1*S_2 <= 0),
     Or((1/2)*S_4 + -1*S_3 + (1/2)*S_0 <= 0,
        -(2/3)*L_1 + (2/3)*A_1 + (1/3)*S_4 + -1*S_3 <= 0),
     Or(L_1 == L_0,
        Not(0 <= S_4 + -1*A_5 + A_3 + -1*S_3 + loss_rate_tol),
        Not(0 <= loss_rate_tol)),
     Or(Not(-1*L_1 + A_1 + -1*S_2 <= 0), L_1 == L_0),
     Or(L_1 == L_0,
        Not(0 <= L_1 + -1*A_1 + S_4 + -1*S_2 + S_0)),
     Or(L_1 == L_0,
        Not(0 <= L_1 + -1*A_1 + (1/2)*S_4 + (1/2)*S_1)),
     -1*A_0 + -1*S_3 + 2*S_1 + L_0 <= 0,
     Or(Not(0 <=
            S_4 + 2*A_4 + -2*A_5 + -1*S_3 + 2*loss_rate_tol),
        Not(0 <= loss_rate_tol),
        Not(0 <= (1/2)*L_1 + (3/2)*S_4 + -(1/2)*A_5 + -1*S_3)),
     Or(Not(0 <=
            S_4 + 3*A_4 + -3*A_5 + -1*S_2 + 3*loss_rate_tol),
        Not(0 <= loss_rate_tol),
        Not(0 <= (3/4)*L_1 + (7/4)*S_4 + -(3/4)*A_5 + -1*S_2)),
     Or(L_1 == L_0, Not(0 <= 3*L_1 + -3*A_1 + 2*S_4 + S_0)),
     Or(-5 <= L_1 + -1*A_1 + S_0, -1*S_4 + S_0 <= -15),
     Or(Not(-5 <= L_1 + -1*A_1 + S_0),
        -(1/2)*L_1 + (1/2)*A_1 + -(1/2)*S_4 <= -5),
     Or(L_1 == L_0,
        Not(0 <= loss_rate_tol),
        Not(0 <=
            2*A_4 +
            -2*A_5 +
            -1*A_0 +
            S_2 +
            2*loss_rate_tol +
            L_0)),
     Or(Not(L_1 + -1*A_1 + (1/3)*S_3 + (2/3)*S_0 <= 0),
        (1/3)*S_3 + -1*S_2 + (2/3)*S_0 <= 0),
     Or(L_1 + -1*A_1 + (1/3)*S_3 + (2/3)*S_0 <= 0,
        -1*L_1 + A_1 + -1*S_2 <= 0),
     Or(-5 <= L_1 + -1*A_1 + S_0,
        -(1/2)*S_3 + (1/2)*S_0 <= -5),
     Or(Not(-5 <= L_1 + -1*A_1 + S_0),
        -1*L_1 + A_1 + -1*S_3 <= -5),
     Or(-1*S_2 + S_0 <= -5, -1*L_1 + A_1 + -1*S_2 <= 0),
     Or((3/2)*A_4 + -1*A_5 + -(1/2)*A_2 + loss_rate_tol <= 0,
        Not(0 <= loss_rate_tol),
        Not(0 <= (2/5)*L_1 + -(2/5)*A_5 + (7/5)*S_3 + -1*S_2),
        Not(0 <=
            2*A_4 + -2*A_5 + S_3 + -1*S_2 + 2*loss_rate_tol),
        0 <=
        S_4 +
        -(4/3)*A_5 +
        (4/3)*A_2 +
        -1*S_1 +
        (4/3)*loss_rate_tol),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <= L_1 + -(4/7)*A_1 + S_4 + -(3/7)*A_5),
        Not(0 <=
            L_1 +
            -1*A_1 +
            S_4 +
            3*A_4 +
            -3*A_5 +
            3*loss_rate_tol)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <= L_1 + -(4/7)*A_1 + S_4 + -(3/7)*A_5),
        Not(0 <=
            L_1 +
            -1*A_1 +
            S_4 +
            A_2 +
            -1*A_5 +
            loss_rate_tol)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <= (1/2)*L_1 + (3/2)*S_4 + -(1/2)*A_5 + -1*S_3),
        Not(0 <= S_4 + -1*A_5 + A_3 + -1*S_3 + loss_rate_tol)),
     Or(Not(0 <= loss_rate_tol),
        Not(-5 <= A_4 + -1*A_5 + loss_rate_tol),
        Not(-5 <= (1/4)*L_1 + (1/4)*S_4 + -(1/4)*A_5)),
     Or((3/2)*A_4 + -1*A_5 + -(1/2)*A_2 + loss_rate_tol <= 0,
        Not(0 <= loss_rate_tol),
        Not(-5 <= A_4 + -1*A_5 + loss_rate_tol),
        0 <=
        S_4 +
        -(4/3)*A_5 +
        (4/3)*A_2 +
        -1*S_1 +
        (4/3)*loss_rate_tol,
        Not(-5 <= (1/6)*L_1 + -(1/6)*A_5 + (1/6)*S_2)),
     Or(L_1 == L_0,
        Not(0 <= loss_rate_tol),
        Not(0 <=
            A_4 +
            -1*A_5 +
            -1*A_0 +
            S_1 +
            loss_rate_tol +
            L_0)),
     Or(L_1 == L_0,
        Not(0 <= loss_rate_tol),
        Not(-5 <= A_4 + -1*A_5 + loss_rate_tol)),
     Or(L_1 == L_0,
        Not(0 <=
            S_4 + 2*A_4 + -2*A_5 + -1*S_3 + 2*loss_rate_tol),
        Not(0 <= loss_rate_tol)),
     Or(Not(0 <= loss_rate_tol),
        Not(-5 <=
            -(1/3)*A_5 + (1/3)*A_2 + (1/3)*loss_rate_tol),
        Not(-5 <=
            -(1/2)*L_1 +
            (1/2)*A_1 +
            (1/2)*A_4 +
            -(1/2)*A_5 +
            -(1/2)*S_3 +
            (1/2)*loss_rate_tol),
        Not(-5 <= (1/4)*L_1 + (1/4)*S_4 + -(1/4)*A_5)),
     Or(L_1 == L_0,
        Not(0 <=
            (1/2)*A_1 +
            S_4 +
            -(1/2)*A_5 +
            -1*S_3 +
            (1/2)*loss_rate_tol),
        Not(0 <= loss_rate_tol)),
     Or(L_1 == L_0,
        Not(0 <= loss_rate_tol),
        Not(0 <=
            (1/2)*A_1 +
            -(1/2)*A_5 +
            -1*A_0 +
            S_2 +
            (1/2)*loss_rate_tol +
            L_0),
        Not(0 <=
            -1*L_1 +
            A_1 +
            A_4 +
            -1*A_5 +
            -1*A_0 +
            loss_rate_tol +
            L_0)),
     Or(Not(0 <=
            (1/2)*A_1 +
            S_4 +
            -(1/2)*A_5 +
            -1*S_3 +
            (1/2)*loss_rate_tol),
        Not(0 <= loss_rate_tol),
        Not(0 <= (1/2)*L_1 + (3/2)*S_4 + -(1/2)*A_5 + -1*S_3)),
     Or(L_1 == L_0,
        Not(0 <= loss_rate_tol),
        Not(0 <=
            -(2/3)*A_5 +
            (2/3)*A_2 +
            -1*A_0 +
            S_2 +
            (2/3)*loss_rate_tol +
            L_0),
        Not(0 <=
            -1*L_1 +
            A_1 +
            A_4 +
            -1*A_5 +
            -1*A_0 +
            loss_rate_tol +
            L_0)),
     Or(L_1 == L_0,
        Not(0 <= loss_rate_tol),
        Not(0 <=
            -1*L_1 +
            A_1 +
            A_4 +
            -1*A_5 +
            -1*A_0 +
            loss_rate_tol +
            L_0),
        Not(0 <=
            (3/4)*A_1 +
...