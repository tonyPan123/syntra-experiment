[And(A_4 >= A_3,
     A_3 >= A_2,
     A_2 >= A_1,
     A_1 >= A_0,
     S_0 <= A_0 + -1*L_0,
     Or(L_1 == L_0, Not(A_1 + -1*L_0 + -1*S_1 <= B)),
     S_2 ==
     If(A_2 + -1*L_2 <= S_1 + C, A_2 + -1*L_2, S_1 + C),
     S_3 ==
     If(A_3 + -1*L_2 <= S_2 + C, A_3 + -1*L_2, S_2 + C),
     S_1 ==
     If(A_1 + -1*L_1 <= S_0 + C, A_1 + -1*L_1, S_0 + C),
     Or(L_1 == L_0, L_1 == A_1 + -1*S_1 + -1*B),
     Or(S_4 ==
        If(A_4 + -1*L_2 <= S_3 + C, A_4 + -1*L_2, S_3 + C),
        Not(A_3 + -1*L_2 + -1*S_3 <= B)),
     Or(S_4 ==
        If(A_4 + -1*L_2 <= S_3 + C, A_4 + -1*L_2, S_3 + C),
        A_4 + -1*A_3 + S_3 + -1*S_4 <= 0),
     Or(S_4 ==
        If(A_4 + -1*L_2 <= S_3 + C, A_4 + -1*L_2, S_3 + C),
        A_4 + -1*A_3 + B <= C),
     Or(L_2 == L_1, Not(A_2 + -1*L_1 + -1*S_2 <= B)),
     Or(Not(L_0 == L_1), A_1 + -1*L_0 + -1*S_1 <= B),
     Or(L_2 == L_1, L_2 == A_2 + -1*S_2 + -1*B),
     Or(S_4 ==
        If(A_4 + -1*A_3 + B <= C,
           A_4 + -1*A_3 + S_3 + B,
           S_3 + C),
        Not(S_4 == If(S_4 + B <= S_3 + C, S_4 + B, S_3 + C))),
     Or(A_3 + -1*L_2 + -1*S_3 <= B,
        S_4 ==
        If(A_4 + -1*A_3 + B <= C,
           A_4 + -1*A_3 + S_3 + B,
           S_3 + C)),
     Or(Not(L_1 == L_2), A_2 + -1*L_1 + -1*S_2 <= B),
     B >= 5,
     C >= 5,
     L_0 >= 0)]