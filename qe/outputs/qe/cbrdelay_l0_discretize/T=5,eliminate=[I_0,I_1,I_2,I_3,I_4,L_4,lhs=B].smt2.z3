[And(A_3 + -1*L_3 <= S_4,
     A_3 >= A_2,
     A_2 >= A_1,
     A_1 >= A_0,
     S_3 >= S_2,
     S_2 >= S_1,
     S_1 >= S_0,
     L_0 >= L0,
     S_2 >= A_1 + -1*L_1 + -1*B,
     Or(A_2 + -1*L_2 <= A_1 + -1*L_1 + -1*B + C,
        S_3 >= A_1 + -1*L_1 + -1*B + C),
     Or(L_1 == L_0, Not(L_1 <= L_0)),
     Or(Not(A_2 + -1*L_2 <= A_1 + -1*L_1 + -1*B + C),
        L_2 == L_1),
     Or(L_1 == L_0, S_0 <= -1*B + -1*L_1 + A_1 + -1*C),
     -1*B + -1*L_1 + A_1 + -1*C <= A_0 + -1*L_0,
     Or(L_1 == L_0, S_2 <= A_1 + -1*L_1 + -1*B + C),
     S_1 >= -1*B + -1*L_1 + A_1 + -1*C,
     S_0 >= -1*B + -1*L_1 + A_1 + -2*C,
     Or(L_1 == L_0,
        L_2 == L_1,
        L_2 == A_2 + -1*A_1 + L_1 + -1*C),
     Or(L_1 == L_0,
        Not(L_1 == L_2),
        A_2 + -1*A_1 + -1*C <= 0),
     Or(L_1 == L_0, S_1 <= A_1 + -1*L_1 + -1*B),
     Or(L_2 == L_1, S_2 <= A_2 + -1*L_2 + -1*B),
     Or(L_2 == L_1, S_1 <= -1*B + -1*L_2 + A_2 + -1*C),
     Or(L_3 == L_2, Not(L_3 <= L_2)),
     S_3 >= A_2 + -1*L_2 + -1*B,
     S_2 >= -1*B + -1*L_2 + A_2 + -1*C,
     Or(L_2 == L_1,
        L_3 == L_2,
        A_3 + -1*L_3 == A_2 + -1*L_2 + C),
     Not(A_4 + -1*L_3 <= S_4),
     S_0 >= -1*B + -1*L_2 + A_2 + -3*C,
     -1*B + -1*L_2 + A_2 + -2*C <= A_0 + -1*L_0,
     Or(L_2 == L_1, S_4 <= A_2 + -1*L_2 + -1*B + 2*C),
     S_1 + -1*A_1 + L_0 <= 0,
     Or(L_1 == L_0, S_3 <= A_1 + -1*L_1 + -1*B + 2*C),
     Or(L_1 == L_0,
        Not(L_3 <= L_2),
        A_3 + -1*L_2 + -1*A_1 + L_1 + -2*C <= 0),
     Or(L_1 == L_0, S_4 <= A_1 + -1*L_1 + -1*B + 3*C),
     Or(L_3 == L_2, S_3 <= A_3 + -1*L_3 + -1*B),
     Or(L_3 == L_2, S_4 <= A_3 + -1*L_3 + -1*B + C),
     Or(Not(L_1 == L_2),
        L_3 == L_1,
        Not(A_3 + -1*L_3 <= A_2 + -1*L_1 + C),
        A_3 + -1*L_3 == A_2 + -1*L_1 + C),
     Or(L_1 == L_0,
        L_3 == L_2,
        A_2 + -1*L_2 <= A_1 + -1*L_1 + -1*B + C,
        L_3 == A_3 + -1*A_1 + L_1 + -2*C),
     Or(Not(A_2 + -1*A_1 + -1*C <= 0), L_2 == L_1),
     Or(Not(L_2 <= L_0), L_2 == L_0),
     Or(-1*C + A_2 + -1*L_2 + -1*B + -1*A_1 + L_0 == 0,
        Not(A_1 + -1*L_0 <= -1*B + -1*L_2 + A_2 + -1*C)),
     Or(L_2 == L_1,
        S_0 <= -1*B + -1*L_2 + A_2 + -2*C,
        A_1 + -1*L_0 <= -1*B + -1*L_2 + A_2 + -1*C),
     Or(Not(L_0 == L_1),
        L_2 == L_0,
        A_1 + -1*L_0 + L_2 + -1*A_2 + C <= 0),
     S_1 >= -1*B + -1*L_2 + A_2 + -2*C,
     S_3 <= A_3 + -1*L_2,
     Or(S_3 >= A_2 + -1*L_1, Not(A_2 <= A_1 + -1*B + C)),
     Or(L_3 == L_2, S_2 <= -1*B + -1*L_3 + A_3 + -1*C),
     Or(L_3 == L_1,
        Not(A_2 <= A_1 + -1*B + C),
        L_3 == A_3 + -1*A_2 + L_1 + -1*C + -1*B),
     S_4 <= A_3 + -1*L_2 + C,
     Or(L_2 == L_1, S_3 <= A_2 + -1*L_2 + -1*B + C),
     Or(-1*S_2 + A_1 + -1*L_0 <= 0, C + -1*S_2 + S_0 <= 0),
     -1*C + L_0 + S_1 + -1*A_0 <= 0,
     S_2 <= A_2 + -1*L_1,
     Or(L_3 == A_3 + -1*A_2 + L_0 + -1*C + -1*B,
        Not(A_2 + -1*L_0 <= -1*B + -1*L_3 + A_3 + -1*C)),
     -1*B + -1*L_3 + A_3 + -3*C <= A_0 + -1*L_0,
     S_3 >= -1*B + -1*L_3 + A_3 + -1*C,
     Or(Not(L_1 <= L_0),
        Not(L_1 == L_2),
        L_3 == L_1,
        A_2 + -1*L_0 <= -1*B + -1*L_3 + A_3 + -1*C,
        S_1 <= -1*B + -1*L_3 + A_3 + -2*C),
     S_2 >= -1*B + -1*L_3 + A_3 + -2*C,
     Or(Not(L_1 <= L_0),
        Not(L_1 == L_2),
        L_3 == L_1,
        A_2 + -1*L_0 <= -1*B + -1*L_3 + A_3 + -1*C,
        S_0 <= -1*B + -1*L_3 + A_3 + -3*C,
        A_1 + -1*L_0 <= -1*B + -1*L_3 + A_3 + -2*C),
     Or(Not(A_1 + -1*L_0 <= -1*B + -1*L_3 + A_3 + -2*C),
        -2*C + -1*B + -1*L_3 + -1*A_1 + A_3 + L_0 == 0),
     S_0 >= -1*B + -1*L_3 + A_3 + -4*C,
     Or(L_2 == L_1,
        Not(L_2 == L_3),
        A_3 + -1*A_2 + -1*C <= 0),
     S_1 >= -1*B + -1*L_3 + A_3 + -3*C,
     Or(L_3 == L_0,
        Not(L_0 == L_2),
        A_2 + -1*L_0 <= -1*B + -1*L_3 + A_3 + -1*C,
        A_1 + -1*L_0 + L_3 + -1*A_3 + 2*C <= 0),
     S_3 <= A_2 + -1*L_1 + C,
     S_4 <= A_2 + -1*L_1 + 2*C,
     Or(S_3 >= A_2 + -1*L_1, C + S_1 + -1*S_3 <= 0),
     -2*C + L_0 + S_2 + -1*A_0 <= 0,
     -3*C + L_0 + S_3 + -1*A_0 <= 0,
     -5*C + S_4 + -1*S_0 <= 0,
     -4*C + L_0 + S_4 + -1*A_0 <= 0,
     -4*C + S_3 + -1*S_0 <= 0,
     -1*A_1 + L_0 + -2*C + S_3 <= 0,
     -1*A_1 + L_0 + -3*C + S_4 <= 0,
     Or(Not(L_1 == L_3), A_3 + -1*A_2 + -1*C <= B),
     Or(S_3 >= A_2 + -1*L_1,
        0 <= C + L_0 + -1*A_1 + S_0,
        2*C + -1*S_3 + S_0 <= 0),
     Or(S_3 >= A_2 + -1*L_0,
        C + A_1 + -1*L_0 + -1*S_3 <= 0,
        Not(0 <= C + L_0 + -1*A_1 + S_0)),
     -1*C + -1*A_1 + L_0 + S_2 <= 0,
     -3*C + -1*S_1 + S_3 <= 0,
     -3*C + S_2 + -1*S_0 <= 0,
     -2*C + S_2 + -1*S_1 <= 0,
     -4*C + -1*S_1 + S_4 <= 0,
     B >= 5,
     C >= 5,
     L0 >= 0,
     L_0 + S_0 + -1*A_0 <= 0,
     -2*C + S_1 + -1*S_0 <= 0,
     -3*C + -1*S_2 + S_4 <= 0,
     -2*C + -1*S_2 + S_3 <= 0,
     -2*C + -1*S_3 + S_4 <= 0)]