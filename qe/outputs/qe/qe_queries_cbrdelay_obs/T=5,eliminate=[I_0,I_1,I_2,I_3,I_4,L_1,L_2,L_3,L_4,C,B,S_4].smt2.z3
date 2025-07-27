[And(A_4 >= A_3,
     A_3 >= A_2,
     A_2 >= A_1,
     S_3 >= S_2,
     S_2 >= S_1,
     S_1 >= S_0,
     A_1 >= A_0,
     Or(Not(0 <= (3/2)*S_3 + -(1/2)*A_4 + -1*S_2 + (1/2)*L_0),
        Not(0 <= loss_rate_tol),
        Not(0 <= S_3 + -1*A_4 + A_2 + -1*S_2 + loss_rate_tol)),
     Or(Not(0 <= (3/2)*S_3 + -(1/2)*A_4 + -1*S_2 + (1/2)*L_0),
        Not(0 <= loss_rate_tol),
        Not(0 <=
            (2/3)*A_1 +
            S_3 +
            -(2/3)*A_4 +
            -1*S_2 +
            (2/3)*loss_rate_tol)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <= (7/4)*S_3 + -(3/4)*A_4 + -1*A_0 + (7/4)*L_0),
        Not(0 <=
            S_3 +
            -1*A_4 +
            A_1 +
            -1*A_0 +
            loss_rate_tol +
            L_0)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <= -(1/6)*A_4 + -1*A_0 + (7/6)*S_1 + (7/6)*L_0),
        Not(0 <=
            -(1/3)*S_3 + (2/3)*A_3 + -(2/3)*A_1 + (1/3)*S_0),
        Not(0 <=
            -1*A_4 +
            A_3 +
            -1*A_0 +
            S_1 +
            loss_rate_tol +
            L_0)),
     Or(Not(A_4 +
            -1*A_1 +
            3*A_0 +
            -3*S_1 +
            -1*loss_rate_tol +
            -3*L_0 <=
            0),
        Not(0 <= loss_rate_tol),
        Not(0 <= -(1/6)*A_4 + -1*A_0 + (7/6)*S_1 + (7/6)*L_0),
        Not(0 <=
            -(1/3)*S_3 + (2/3)*A_3 + -(2/3)*A_1 + (1/3)*S_0)),
     Or(Not(0 <= (7/4)*S_3 + -(3/4)*A_4 + -1*S_1 + (3/4)*L_0),
        Not(0 <= loss_rate_tol),
        Not(0 <=
            S_3 + -3*A_4 + 3*A_3 + -1*S_1 + 3*loss_rate_tol)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <=
            -(3/2)*A_4 +
            (3/2)*A_2 +
            S_2 +
            -1*S_0 +
            (3/2)*loss_rate_tol),
        Not(0 <= (2/5)*L_0 + -(2/5)*A_4 + (7/5)*S_2 + -1*S_1),
        Not(0 <= -(1/2)*A_4 + (1/2)*A_3 + S_2 + -1*S_1)),
     Or(Not(0 <=
            S_3 + -2*A_4 + 2*A_2 + -1*S_0 + 2*loss_rate_tol),
        Not(0 <= loss_rate_tol),
        Not(0 <= 2*S_3 + -1*A_4 + -1*S_0 + L_0)),
     Or(Not(0 <= loss_rate_tol),
        Not(-5 <= -(1/6)*A_4 + (1/6)*S_1 + (1/6)*L_0),
        Not(A_4 + -1*A_1 + -1*loss_rate_tol <= 15),
        Not(0 <=
            -(1/3)*S_3 + (2/3)*A_3 + -(2/3)*A_1 + (1/3)*S_0)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <=
            S_3 + -4*A_4 + 4*A_3 + -1*S_0 + 4*loss_rate_tol),
        Not(0 <= 2*S_3 + -1*A_4 + -1*S_0 + L_0)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <= (7/4)*S_3 + -(3/4)*A_4 + -1*A_0 + (7/4)*L_0),
        Not(0 <=
            S_3 +
            L_0 +
            -3*A_4 +
            3*A_3 +
            -1*A_0 +
            3*loss_rate_tol)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <= (7/5)*L_0 + -(2/5)*A_4 + -1*A_0 + (7/5)*S_2),
        Not(0 <= L_0 + -(1/2)*A_4 + (1/2)*A_3 + -1*A_0 + S_2),
        Not(0 <=
            -1*A_4 +
            A_3 +
            -(1/2)*A_0 +
            (1/2)*S_2 +
            loss_rate_tol +
            (1/2)*L_0)),
     Or(Not(0 <= (3/2)*S_3 + -(1/2)*A_4 + -1*S_2 + (1/2)*L_0),
        Not(0 <= loss_rate_tol),
        Not(0 <=
            S_3 + -2*A_4 + 2*A_3 + -1*S_2 + 2*loss_rate_tol)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <=
            (4/3)*A_1 +
            S_3 +
            -(4/3)*A_4 +
            -1*S_0 +
            (4/3)*loss_rate_tol),
        Not(0 <= 2*S_3 + -1*A_4 + -1*S_0 + L_0),
        Not(0 <=
            2*S_3 +
            -2*A_4 +
            2*A_3 +
            -1*S_2 +
            -1*S_0 +
            2*loss_rate_tol)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <= -1*A_4 + 4*S_1 + -3*S_0 + L_0),
        Not(0 <=
            A_1 +
            -1*A_4 +
            (3/2)*S_1 +
            -(3/2)*S_0 +
            loss_rate_tol),
        Not(0 <= -(1/2)*A_4 + (1/2)*A_3 + S_1 + -1*S_0),
        Not(0 <=
            2*S_3 +
            -2*A_4 +
            2*A_3 +
            -1*S_2 +
            -1*S_0 +
            2*loss_rate_tol)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <=
            (4/3)*A_1 +
            S_3 +
            -(4/3)*A_4 +
            -1*S_0 +
            (4/3)*loss_rate_tol),
        Not(0 <= 2*S_3 + -1*A_4 + -1*S_0 + L_0),
        Not(0 <=
            S_3 +
            -(3/2)*A_4 +
            (3/2)*A_3 +
            -1*S_0 +
            (3/2)*loss_rate_tol)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <= -1*A_4 + 4*S_1 + -3*S_0 + L_0),
        Not(0 <=
            A_1 +
            -1*A_4 +
            (3/2)*S_1 +
            -(3/2)*S_0 +
            loss_rate_tol),
        Not(0 <= -(1/2)*A_4 + (1/2)*A_3 + S_1 + -1*S_0),
        Not(0 <=
            S_3 +
            -(3/2)*A_4 +
            (3/2)*A_3 +
            -1*S_0 +
            (3/2)*loss_rate_tol)),
     Or(Not(0 <=
            S_3 + -2*A_4 + 2*A_2 + -1*S_0 + 2*loss_rate_tol),
        Not(0 <= loss_rate_tol),
        Not(0 <= (2/5)*L_0 + -(2/5)*A_4 + (7/5)*S_2 + -1*S_1),
        Not(0 <= -(1/2)*A_4 + (1/2)*A_3 + S_2 + -1*S_1)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <= -1*A_4 + A_2 + S_2 + -1*S_1 + loss_rate_tol),
        Not(0 <= (2/5)*L_0 + -(2/5)*A_4 + (7/5)*S_2 + -1*S_1),
        Not(0 <= -(1/2)*A_4 + (1/2)*A_3 + S_2 + -1*S_1)),
     Or(Not(0 <= loss_rate_tol),
        Not(-5 <=
            -(1/2)*A_4 + (1/2)*A_2 + (1/2)*loss_rate_tol),
        Not(-20 <= S_3 + L_0 + -1*A_4)),
     Or(Not(0 <= loss_rate_tol),
        Not(-5 <= -1*A_4 + A_3 + loss_rate_tol),
        Not(0 <=
            -(1/3)*S_3 + (2/3)*A_3 + -(2/3)*A_1 + (1/3)*S_0),
        Not(-5 <= (1/5)*L_0 + -(1/5)*A_4 + (1/5)*S_2)),
     Or(Not(0 <= loss_rate_tol),
        Not(-5 <= -1*A_4 + A_3 + loss_rate_tol),
        Not(-20 <= S_3 + L_0 + -1*A_4)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <=
            -(1/3)*S_3 + (2/3)*A_3 + -(2/3)*A_1 + (1/3)*S_0),
        Not(0 <= (2/5)*L_0 + -(2/5)*A_4 + (7/5)*S_2 + -1*S_1),
        Not(0 <=
            (2/3)*A_1 +
            -(2/3)*A_4 +
            S_2 +
            -1*S_1 +
            (2/3)*loss_rate_tol)),
     Or(Not(0 <= loss_rate_tol),
        Not(-5 <= -(1/6)*A_4 + (1/6)*S_1 + (1/6)*L_0),
        Not(-5 <= -1*A_4 + A_3 + loss_rate_tol),
        Not(0 <=
            -(1/3)*S_3 + (2/3)*A_3 + -(2/3)*A_1 + (1/3)*S_0)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <=
            -(1/3)*S_3 + (2/3)*A_3 + -(2/3)*A_1 + (1/3)*S_0),
        Not(0 <= (3/5)*L_0 + -(3/5)*A_4 + (8/5)*S_2 + -1*S_0),
        Not(0 <=
            -3*A_4 + 3*A_3 + S_2 + -1*S_0 + 3*loss_rate_tol)),
...