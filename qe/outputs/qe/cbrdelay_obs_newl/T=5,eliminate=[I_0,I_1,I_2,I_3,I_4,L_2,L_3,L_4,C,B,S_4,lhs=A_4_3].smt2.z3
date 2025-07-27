[And(A_1 + -1*L_1 <= S_3,
     A_4 >= A_3,
     A_3 >= A_2,
     A_1 >= A_0,
     S_2 >= S_1,
     S_1 >= S_0,
     S_3 >= S_2,
     Or(Not(0 <= -1*L_1 + L_0), L_1 == L_0),
     Or(L_1 == L_0, L_1 + -1*A_1 + S_1 <= -5),
     Or(-(1/2)*S_3 + (1/2)*S_0 <= -5,
        -1*L_1 + A_1 + -1*S_3 <= -5),
     Or(L_1 == L_0,
        L_1 + -1*A_1 + (1/2)*S_2 + (1/2)*S_0 <= -5),
     Or(-1*L_1 + A_1 + -1*S_2 <= 0,
        (1/3)*S_3 + -1*S_2 + (2/3)*S_0 <= 0),
     Or(L_1 == L_0, L_1 + -1*A_1 + S_0 <= -10),
     -1*S_3 + -1*A_0 + 2*S_1 + L_0 <= 0,
     Or(L_1 == L_0,
        Not(0 <= L_1 + -1*A_1 + S_3 + -1*S_2 + S_0)),
     Or(-1*L_1 + A_1 + -1*S_2 <= 0, -1*S_2 + S_0 <= -5),
     Or(L_1 == L_0,
        Not(0 <= loss_rate_tol),
        Not(0 <= S_3 + -1*A_4 + A_2 + -1*S_2 + loss_rate_tol)),
     Or(L_1 == L_0, Not(-5 <= 2*L_1 + -2*A_1 + S_3 + S_0)),
     Or(L_1 == L_0,
        Not(0 <= loss_rate_tol),
        Not(0 <=
            2*L_1 +
            -2*A_1 +
            2*S_3 +
            -1*A_4 +
            A_2 +
            loss_rate_tol),
        Not(-5 <=
            L_1 +
            -1*A_1 +
            S_3 +
            -1*A_4 +
            A_3 +
            loss_rate_tol)),
     Or(L_1 == L_0,
        Not(0 <= loss_rate_tol),
        Not(0 <= L_1 + -1*A_1 + -1*A_3 + A_2 + S_2),
        Not(-5 <=
            (1/2)*L_1 +
            -(1/2)*A_1 +
            -(1/2)*A_4 +
            (1/2)*A_3 +
            (1/2)*S_2 +
            (1/2)*loss_rate_tol)),
     Or(L_1 == L_0,
        Not(0 <= loss_rate_tol),
        Not(0 <=
            2*L_1 +
            -2*A_1 +
            2*S_3 +
            -1*A_4 +
            A_2 +
            loss_rate_tol),
        Not(0 <=
            -2*L_1 +
            2*A_1 +
            -2*A_4 +
            2*A_3 +
            -1*S_2 +
            -1*S_0 +
            2*loss_rate_tol)),
     Or(L_1 == L_0,
        Not(0 <= loss_rate_tol),
        Not(0 <=
            -(1/2)*A_4 +
            (1/2)*A_2 +
            -1*A_0 +
            S_1 +
            (1/2)*loss_rate_tol +
            L_0),
        Not(0 <=
            -1*L_1 +
            A_1 +
            -1*A_4 +
            A_3 +
            -1*A_0 +
            loss_rate_tol +
            L_0)),
     Or(L_1 == L_0,
        Not(0 <= loss_rate_tol),
        Not(0 <=
            A_1 +
            S_3 +
            -1*A_4 +
            -1*A_0 +
            loss_rate_tol +
            L_0)),
     Or(L_1 == L_0,
        Not(0 <= loss_rate_tol),
        0 <= L_1 + -1*A_1 + -1*A_3 + A_2 + S_2,
        Not(-5 <=
            L_1 +
            -1*A_1 +
            -(1/2)*A_4 +
            (1/2)*A_2 +
            S_2 +
            (1/2)*loss_rate_tol)),
     Or(L_1 == L_0,
        Not(0 <= loss_rate_tol),
        Not(-5 <=
            (1/3)*A_1 + -(1/3)*A_4 + (1/3)*loss_rate_tol),
        Not(0 <=
            -1*L_1 +
            A_1 +
            -1*A_4 +
            A_3 +
            -1*A_0 +
            loss_rate_tol +
            L_0)),
     Or(L_1 == L_0,
        Not(0 <= loss_rate_tol),
        Not(-5 <=
            (1/3)*A_1 + -(1/3)*A_4 + (1/3)*loss_rate_tol),
        Not(0 <=
            -(3/2)*L_1 +
            (3/2)*A_1 +
            -(1/2)*S_3 +
            -(3/2)*A_4 +
            (3/2)*A_3 +
            -1*S_0 +
            (3/2)*loss_rate_tol)),
     Or(L_1 == L_0,
        Not(0 <= loss_rate_tol),
        Not(0 <=
            -1*A_4 +
            A_2 +
            -1*A_0 +
            S_2 +
            loss_rate_tol +
            L_0),
        Not(0 <=
            -1*L_1 +
            A_1 +
            -1*A_4 +
            A_3 +
            -1*A_0 +
            loss_rate_tol +
            L_0)),
     Or(L_1 == L_0,
        Not(0 <= loss_rate_tol),
        Not(0 <=
            -3*A_4 + 3*A_3 + S_2 + -1*S_0 + 3*loss_rate_tol)),
     Or(L_1 == L_0,
        Not(0 <= loss_rate_tol),
        Not(0 <=
            (2/3)*A_1 +
            S_3 +
            -(2/3)*A_4 +
            -1*S_2 +
            (2/3)*loss_rate_tol)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <= (1/2)*L_1 + (3/2)*S_3 + -(1/2)*A_4 + -1*S_2),
        Not(0 <=
            (2/3)*A_1 +
            S_3 +
            -(2/3)*A_4 +
            -1*S_2 +
            (2/3)*loss_rate_tol)),
     Or(L_1 == L_0,
        Not(0 <= loss_rate_tol),
        Not(-5 <=
            (1/3)*A_1 + -(1/3)*A_4 + (1/3)*loss_rate_tol),
        Not(-5 <=
            -1*L_1 +
            A_1 +
            -2*A_4 +
            2*A_3 +
            -1*S_0 +
            2*loss_rate_tol)),
     Or(L_1 == L_0,
        Not(0 <= loss_rate_tol),
        Not(-5 <=
            L_1 +
            -(2/3)*A_1 +
            -(1/3)*A_4 +
            S_2 +
            (1/3)*loss_rate_tol),
        Not(-10 <=
            L_1 +
            -1*A_1 +
            -1*A_4 +
            A_3 +
            S_2 +
            loss_rate_tol)),
     Or(Not(-35 <= L_1 + -1*A_4 + S_0),
        Not(0 <= loss_rate_tol),
        Not(-5 <= (1/6)*A_1 + -(1/6)*A_4),
        Not(-5 <= -1*A_4 + A_3 + loss_rate_tol),
        Not(-5 <= -(1/4)*A_4 + (1/4)*A_3)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <=
            S_3 +
            -(3/2)*A_4 +
            (3/2)*A_2 +
...