[And(A_1 + -1*L_1 <= S_4,
     A_4 >= A_3,
     A_3 >= A_2,
     A_1 >= A_0,
     S_3 >= S_2,
     S_2 >= S_1,
     L_0 >= L0,
     S_4 >= S_3,
     S_1 >= S_0,
     Or(L_1 == L_0, Not(L_1 <= L_0)),
     Q_4 <= B,
     Or(Not(L_0 == L_1), S_2 >= A_1 + -1*L_0 + -1*B),
     S_2 >= A_1 + -1*L_1 + -1*B,
     -1*B + -1*L_1 + A_1 + -1*C <= A_0 + -1*L_0,
     Or(L_1 == L_0, S_0 <= -1*B + -1*L_1 + A_1 + -1*C),
     S_3 >= A_1 + -1*L_1 + -1*B + C,
     S_4 >= A_1 + -1*L_1 + -1*B + 2*C,
     Or(L_1 == L_0, S_1 <= A_1 + -1*L_1 + -1*B),
     Or(Q_4 == 0, Not(Q_4 <= 0)),
     Not(A_2 + -1*L_1 <= S_4),
     Or(L_1 == L_0, S_2 <= A_1 + -1*L_1 + -1*B + C),
     Or(L_1 == L_0, S_3 <= A_1 + -1*L_1 + -1*B + 2*C),
     Or(L_1 == L_0, S_4 <= A_1 + -1*L_1 + -1*B + 3*C),
     -2*C + -1*S_3 + S_4 <= 0,
     Or(Not(L_0 == L_1), S_1 >= -1*B + -1*L_0 + A_1 + -1*C),
     Or(L_1 == L_0,
        Not(A_2 + -1*A_1 + -1*C <= 0),
        Q_4 == B,
        Not(A_3 + -1*A_1 + -2*C <= 0),
        Not(A_1 + 3*C + Q_4 + -1*A_4 <= B),
        -1*A_1 + B + -3*C + -1*Q_4 + A_4 == 0),
     Or(Not(Q_4 <= 0), 0 <= C + A_3 + -1*A_4),
     S_0 >= -1*B + -1*L_1 + A_1 + -2*C,
     Or(L_1 == L_0, Not(A_1 + -1*L_1 + C <= S_4)),
     S_1 >= -1*B + -1*L_1 + A_1 + -1*C,
     Or(Q_4 == 0, A_1 + 3*C + Q_4 + -1*A_4 <= B),
     Or(Not(L_1 <= L_0),
        Q_4 == B,
        0 <= C + A_2 + -1*A_3,
        S_4 >= -1*L_0 + -1*C + -1*Q_4 + A_4,
        -1*C + -1*Q_4 + A_4 + B + -1*A_3 == 0),
     -3*C + S_4 + -1*S_2 <= 0,
     A_3 + C + Q_4 + -1*A_4 <= B,
     Or(Q_4 == 0, S_2 <= -1*L_0 + -2*C + -1*Q_4 + A_4),
     Not(0 <= -1*B + -1*C + -1*A_1 + L_0 + S_4),
     -3*C + -1*A_1 + L_0 + S_4 <= 0,
     -1*A_1 + L_0 + S_1 <= 0,
     Or(2*C + S_0 + -1*S_3 <= 0,
        C + A_1 + -1*S_3 + -1*L_0 <= 0),
     Or(L_1 == L_0,
        A_2 + -1*A_1 + -1*C <= 0,
        Q_4 == B,
        -1*C + -1*Q_4 + A_4 + B + -1*A_3 == 0,
        -1*Q_4 + B + -2*C + -1*A_2 + A_4 <= 0),
     Or(A_1 + -1*L_0 + -1*S_2 <= 0, C + S_0 + -1*S_2 <= 0),
     -3*C + L_0 + S_3 + -1*A_0 <= 0,
     Or(Not(L_1 <= L_0),
        Q_4 == B,
        S_0 >= -1*L_0 + -5*C + -1*Q_4 + A_4,
        -1*C + -1*Q_4 + A_4 + B + -1*A_3 == 0,
        -1*Q_4 + B + -2*C + -1*A_2 + A_4 <= 0),
     Or(Not(L_1 <= L_0),
        Q_4 == B,
        -4*C + -1*Q_4 + A_4 <= A_0,
        -1*Q_4 + B + -2*C + -1*A_2 + A_4 <= 0,
        Not(0 <= C + A_2 + -1*A_3)),
     Or(3*C + S_0 + -1*S_4 <= 0,
        0 <= C + -1*A_1 + L_0 + S_0),
     -2*C + -1*A_1 + S_3 + L_0 <= 0,
     -4*C + S_4 + -1*S_1 <= 0,
     Not(0 <= -1*B + -2*C + S_4 + -1*S_1),
     Not(0 <= -1*B + -3*C + -1*S_0 + S_4),
     -5*C + -1*S_0 + S_4 <= 0,
     Or(Not(A_2 + -1*A_1 + -1*C <= 0),
        L_1 <= L_0,
        Q_4 == B,
        A_3 + -1*A_1 + -2*C <= 0,
        -1*C + -1*Q_4 + A_4 + B + -1*A_3 == 0),
     Or(Not(L_1 <= L_0),
        Q_4 == B,
        0 <= C + A_2 + -1*A_3,
        S_3 >= -1*L_0 + -2*C + -1*Q_4 + A_4,
        -1*C + -1*Q_4 + A_4 + B + -1*A_3 == 0),
     Or(Not(L_1 <= L_0),
        Q_4 == B,
        0 <= C + A_2 + -1*A_3,
        S_2 >= -1*L_0 + -3*C + -1*Q_4 + A_4,
        -1*C + -1*Q_4 + A_4 + B + -1*A_3 == 0),
     Or(Not(L_1 <= L_0),
        Q_4 == B,
        S_3 >= -1*L_0 + -2*C + -1*Q_4 + A_4,
        -1*Q_4 + B + -2*C + -1*A_2 + A_4 <= 0,
        Not(0 <= C + A_2 + -1*A_3)),
     Or(Not(L_1 <= L_0),
        Q_4 == B,
        S_4 >= -1*L_0 + -1*C + -1*Q_4 + A_4,
        -1*Q_4 + B + -2*C + -1*A_2 + A_4 <= 0,
        Not(0 <= C + A_2 + -1*A_3)),
     Or(Not(L_1 <= L_0),
        Q_4 == B,
        S_2 >= -1*L_0 + -3*C + -1*Q_4 + A_4,
        -1*Q_4 + B + -2*C + -1*A_2 + A_4 <= 0,
        Not(0 <= C + A_2 + -1*A_3)),
     Or(Not(L_1 <= L_0),
        Q_4 == B,
        S_1 >= -1*L_0 + -4*C + -1*Q_4 + A_4,
        -1*Q_4 + B + -2*C + -1*A_2 + A_4 <= 0,
        Not(0 <= C + A_2 + -1*A_3)),
     Or(Q_4 == B,
        Not(A_1 <= -3*C + -1*Q_4 + A_4),
        -1*Q_4 + B + -2*C + -1*A_2 + A_4 <= 0,
        3*C + A_1 + Q_4 + -1*A_4 == 0,
        Not(0 <= C + A_2 + -1*A_3)),
     S_4 <= -1*L_0 + -1*Q_4 + A_4,
     Or(Q_4 == 0, S_3 <= -1*L_0 + -1*C + -1*Q_4 + A_4),
     Not(0 <= -1*B + -2*C + L_0 + S_4 + -1*A_0),
     -2*C + S_2 + -1*S_1 <= 0,
     -1*C + -1*A_1 + L_0 + S_2 <= 0,
     Or(Q_4 == B,
        0 <= C + A_2 + -1*A_3,
        -1*C + -1*Q_4 + A_4 + B + -1*A_3 == 0,
        Not(A_1 <= -3*C + -1*Q_4 + A_4),
        3*C + A_1 + Q_4 + -1*A_4 == 0),
     Or(Q_4 == B,
        0 <= C + A_2 + -1*A_3,
        -1*C + -1*Q_4 + A_4 + B + -1*A_3 == 0,
        Not(A_1 <= -3*C + -1*Q_4 + A_4),
        -1*C + A_1 + -1*A_0 <= 0),
     Or(Not(L_1 <= L_0),
        Q_4 == B,
        0 <= C + A_2 + -1*A_3,
        -4*C + -1*Q_4 + A_4 <= A_0,
        -1*C + -1*Q_4 + A_4 + B + -1*A_3 == 0),
     Or(Not(L_1 <= L_0),
        Q_4 == B,
        0 <= C + A_2 + -1*A_3,
        S_1 >= -1*L_0 + -4*C + -1*Q_4 + A_4,
        -1*C + -1*Q_4 + A_4 + B + -1*A_3 == 0),
     Or(Q_4 == 0, S_1 <= -1*L_0 + -3*C + -1*Q_4 + A_4),
     -1*C + L_0 + S_1 + -1*A_0 <= 0,
     -4*C + L_0 + S_4 + -1*A_0 <= 0,
     -4*C + -1*S_0 + S_3 <= 0,
     -3*C + S_3 + -1*S_1 <= 0,
     -2*C + -1*S_0 + S_1 <= 0,
     Or(Q_4 == 0,
        S_0 <= -1*L_0 + -4*C + -1*Q_4 + A_4,
        0 <= C + -1*A_1 + L_0 + S_0),
     Or(Q_4 == 0,
        A_1 <= -3*C + -1*Q_4 + A_4,
        Not(0 <= C + -1*A_1 + L_0 + S_0)),
     Or(Not(0 <= C + -1*A_1 + L_0 + S_0),
        2*C + A_1 + -1*L_0 + -1*S_4 <= 0),
     Or(Q_4 == 0, A_2 + 2*C + Q_4 + -1*A_4 <= B),
     C >= 5,
     L0 >= 0,
     C + -1*S_4 + S_2 <= 0,
     L_0 + S_0 + -1*A_0 <= 0,
     2*C + -1*S_4 + S_1 <= 0,
     C + -1*S_3 + S_1 <= 0,
     -2*C + S_3 + -1*S_2 <= 0,
     Not(-1*B + C >= 0),
     -3*C + -1*S_0 + S_2 <= 0,
     -2*C + L_0 + S_2 + -1*A_0 <= 0,
     Not(-1*B + -1*S_3 + S_4 >= 0),
     Not(-1*B + -1*C + S_4 + -1*S_2 >= 0))]