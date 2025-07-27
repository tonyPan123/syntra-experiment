[And(A_0 + -1*L_0 <= S_4,
     A_5 >= A_4,
     A_4 >= A_3,
     A_3 >= A_2,
     A_2 >= A_1,
     S_3 >= S_2,
     S_2 >= S_1,
     S_1 >= S_0,
     S_4 >= S_3,
     (1/4)*S_4 + -1*S_2 + (3/4)*S_0 <= 0,
     (1/3)*S_3 + -1*S_2 + (2/3)*S_0 <= 0,
     -1*S_4 + S_2 <= -5,
     -1*A_0 + L_0 + -1*S_3 + 2*S_1 <= 0,
     -2*S_3 + 3*S_1 + -1*S_0 <= 0,
     Or(Not(0 <= loss_rate_tol),
        Not(0 <= (7/4)*S_4 + (3/4)*L_0 + -(3/4)*A_5 + -1*S_2)),
     S_4 + -2*S_3 + S_0 <= 0,
     Or(Not(0 <= loss_rate_tol),
        Not(A_5 + -1*A_1 + -1*loss_rate_tol <= 20),
        Not(-5 <= (1/7)*L_0 + -(1/7)*A_5 + (1/7)*S_1),
        Not(-5 <=
            S_4 + A_4 + -1*A_5 + -1*S_2 + loss_rate_tol),
        Not(-5 <= (1/4)*A_4 + -(1/4)*A_5)),
     Or(Not(0 <= loss_rate_tol),
        Not(A_5 + -1*A_1 + -1*loss_rate_tol <= 20),
        Not(-5 <=
            S_4 + A_4 + -1*A_5 + -1*S_2 + loss_rate_tol),
        Not(-5 <= (1/5)*L_0 + -(1/5)*A_5 + (1/5)*S_3),
        Not(-5 <= (1/4)*A_4 + -(1/4)*A_5)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <= 2*S_4 + L_0 + -1*A_5 + -1*S_1)),
     Or(Not(0 <= loss_rate_tol),
        Not(-5 <= (1/4)*S_4 + (1/4)*L_0 + -(1/4)*A_5),
        Not(0 <= S_4 + A_4 + -1*A_5 + -1*S_1 + loss_rate_tol)),
     Or(Not(0 <= loss_rate_tol),
        Not(-5 <= (1/4)*S_4 + (1/4)*L_0 + -(1/4)*A_5),
        Not(0 <=
            2*S_4 +
            2*A_4 +
            -2*A_5 +
            -1*S_2 +
            -1*S_0 +
            2*loss_rate_tol)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <=
            (3/2)*S_4 +
            (3/2)*A_4 +
            -(3/2)*A_5 +
            -(1/2)*S_3 +
            -1*S_0 +
            (3/2)*loss_rate_tol),
        Not(-5 <= (1/4)*S_4 + (1/4)*L_0 + -(1/4)*A_5)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <=
            S_4 +
            -1*A_0 +
            L_0 +
            A_4 +
            -1*A_5 +
            loss_rate_tol),
        Not(-5 <= (1/4)*S_4 + (1/4)*L_0 + -(1/4)*A_5)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <= -1*A_0 + (8/7)*L_0 + -(1/7)*A_5 + (8/7)*S_1),
        Not(0 <=
            -3*A_0 +
            3*L_0 +
            -1*A_5 +
            A_2 +
            3*S_1 +
            loss_rate_tol),
        Not(0 <= -1*A_0 + L_0 + (1/4)*A_4 + -(1/4)*A_5 + S_1)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <= -1*A_0 + (8/7)*L_0 + -(1/7)*A_5 + (8/7)*S_1),
        Not(0 <=
            -1*A_0 +
            L_0 +
            A_4 +
            -1*A_5 +
            S_1 +
            loss_rate_tol),
        Not(0 <= -1*A_0 + L_0 + (1/4)*A_4 + -(1/4)*A_5 + S_1)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <=
            (3/2)*S_4 +
            (3/2)*A_4 +
            -(3/2)*A_5 +
            -(1/2)*S_3 +
            -1*S_0 +
            (3/2)*loss_rate_tol),
        Not(0 <= (1/2)*L_0 + -(1/2)*A_5 + (3/2)*S_2 + -1*S_0),
        Not(0 <=
            -(3/4)*A_5 +
            (3/4)*A_1 +
            S_2 +
            -1*S_0 +
            (3/4)*loss_rate_tol),
        Not(0 <= (3/4)*A_4 + -(3/4)*A_5 + S_2 + -1*S_0)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <=
            S_4 +
            -1*A_0 +
            L_0 +
            A_4 +
            -1*A_5 +
            loss_rate_tol),
        Not(0 <= (1/2)*L_0 + -(1/2)*A_5 + (3/2)*S_2 + -1*S_0),
        Not(0 <=
            -(3/4)*A_5 +
            (3/4)*A_1 +
            S_2 +
            -1*S_0 +
            (3/4)*loss_rate_tol),
        Not(0 <= (3/4)*A_4 + -(3/4)*A_5 + S_2 + -1*S_0)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <= (1/2)*L_0 + -(1/2)*A_5 + (3/2)*S_2 + -1*S_0),
        Not(0 <=
            -(3/4)*A_5 +
            (3/4)*A_1 +
            S_2 +
            -1*S_0 +
            (3/4)*loss_rate_tol),
        Not(0 <=
            S_4 +
            (4/3)*A_4 +
            -(4/3)*A_5 +
            -1*S_0 +
            (4/3)*loss_rate_tol),
        Not(0 <= (3/4)*A_4 + -(3/4)*A_5 + S_2 + -1*S_0)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <=
            (3/2)*S_4 +
            (3/2)*A_4 +
            -(3/2)*A_5 +
            -(1/2)*S_3 +
            -1*S_0 +
            (3/2)*loss_rate_tol),
        Not(A_5 + -1*A_1 + -1*loss_rate_tol <= 20),
        Not(-5 <= (1/7)*L_0 + -(1/7)*A_5 + (1/7)*S_1),
        Not(-5 <= (1/4)*A_4 + -(1/4)*A_5)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <=
            S_4 +
            -1*A_0 +
            L_0 +
            A_4 +
            -1*A_5 +
            loss_rate_tol),
        Not(A_5 + -1*A_1 + -1*loss_rate_tol <= 20),
        Not(-5 <= (1/7)*L_0 + -(1/7)*A_5 + (1/7)*S_1),
        Not(-5 <= (1/4)*A_4 + -(1/4)*A_5)),
     Or(Not(0 <= loss_rate_tol),
        Not(A_5 + -1*A_1 + -1*loss_rate_tol <= 20),
        Not(-5 <= (1/7)*L_0 + -(1/7)*A_5 + (1/7)*S_1),
        Not(-5 <= (1/4)*A_4 + -(1/4)*A_5),
        Not(0 <=
            2*S_4 +
            2*A_4 +
            -2*A_5 +
            -1*S_2 +
            -1*S_0 +
            2*loss_rate_tol)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <= -1*A_0 + (4/3)*L_0 + -(1/3)*A_5 + (4/3)*S_2),
        Not(0 <=
            -(3/2)*A_0 +
            (3/2)*L_0 +
            -1*A_5 +
            A_2 +
            (3/2)*S_2 +
            loss_rate_tol),
        Not(0 <= -1*A_0 + L_0 + (1/4)*A_4 + -(1/4)*A_5 + S_1)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <= -1*A_0 + (4/3)*L_0 + -(1/3)*A_5 + (4/3)*S_2),
        Not(0 <=
            -1*A_0 +
            L_0 +
            2*A_4 +
            -2*A_5 +
            S_2 +
            2*loss_rate_tol),
        Not(0 <= -1*A_0 + L_0 + (1/4)*A_4 + -(1/4)*A_5 + S_1)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <= -1*A_0 + (4/3)*L_0 + -(1/3)*A_5 + (4/3)*S_2),
        Not(0 <=
            -1*A_0 +
            L_0 +
            2*A_4 +
            -2*A_5 +
            S_2 +
            2*loss_rate_tol),
        Not(0 <= (3/4)*A_4 + -(3/4)*A_5 + S_3 + -1*S_1)),
     Or(Not(0 <= loss_rate_tol),
        Not(0 <= -1*A_0 + (4/3)*L_0 + -(1/3)*A_5 + (4/3)*S_2),
        Not(0 <=
            -1*A_0 +
            L_0 +
            2*A_4 +
            -2*A_5 +
            S_2 +
            2*loss_rate_tol),
...