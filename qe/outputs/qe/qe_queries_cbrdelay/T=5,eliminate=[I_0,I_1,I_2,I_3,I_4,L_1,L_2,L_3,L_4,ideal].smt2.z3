[And(A_4 >= A_3,
     A_3 >= A_2,
     A_2 >= A_1,
     A_1 >= A_0,
     S_0 <= A_0 + -1*L_0,
     S_1 ==
     If(A_1 + -1*L_0 <= S_0 + C, A_1 + -1*L_0, S_0 + C),
     Or(S_2 ==
        If(A_2 + -1*L_0 <= S_1 + C, A_2 + -1*L_0, S_1 + C),
        A_2 + -1*A_1 + S_1 + -1*S_2 <= 0),
     Or(S_3 ==
        If(A_3 + -1*L_0 <= S_2 + C, A_3 + -1*L_0, S_2 + C),
        Not(A_2 + -1*A_1 + S_1 + -1*S_2 <= 0),
        A_3 + -1*A_1 + S_1 + -1*S_3 <= 0),
     Or(A_1 + -1*L_0 + -1*S_1 <= B,
        Not(A_2 + -1*A_1 + S_1 + -1*S_2 <= 0),
        A_3 + -1*A_1 + S_1 + -1*S_3 <= 0,
        S_4 ==
        If(A_4 + -1*A_3 + B <= C,
           A_4 + -1*A_3 + S_3 + B,
           S_3 + C)),
     Or(S_2 ==
        If(A_2 + -1*A_1 + B <= C,
           A_2 + -1*A_1 + S_1 + B,
           S_1 + C),
        A_1 + -1*L_0 + -1*S_1 <= B),
     Or(S_3 ==
        If(A_3 + -1*L_0 <= S_2 + C, A_3 + -1*L_0, S_2 + C),
        Not(A_2 + -1*A_1 + S_1 + -1*S_2 <= 0),
        A_3 + -1*A_1 + S_1 + B <= S_2 + C),
     Or(A_1 + -1*L_0 + -1*S_1 <= B,
        S_3 ==
        If(A_3 + -1*A_1 + S_1 + B <= S_2 + C,
           A_3 + -1*A_1 + S_1 + B,
           S_2 + C),
        Not(S_3 ==
            If(A_3 + -1*L_0 <= S_2 + C,
               A_3 + -1*L_0,
               S_2 + C))),
     Or(A_4 + -1*A_3 + S_3 + -1*S_4 <= 0,
        S_4 ==
        If(A_4 + -1*L_0 <= S_3 + C, A_4 + -1*L_0, S_3 + C)),
     Or(S_3 ==
        If(A_3 + -1*L_0 <= S_2 + C, A_3 + -1*L_0, S_2 + C),
        A_2 + -1*A_1 + S_1 + -1*S_2 <= 0,
        A_3 + -1*A_2 + B <= C),
     Or(A_1 + -1*L_0 + -1*S_1 <= B,
        Not(S_3 ==
            If(A_3 + -1*L_0 <= S_2 + C,
               A_3 + -1*L_0,
               S_2 + C)),
        S_3 ==
        If(A_3 + -1*A_2 + B <= C,
           A_3 + -1*A_2 + S_2 + B,
           S_2 + C)),
     Or(A_1 + -1*L_0 + -1*S_1 <= B,
        A_2 + -1*A_1 + S_1 + -1*S_2 <= 0,
        A_3 + -1*A_2 + S_2 + -1*S_3 <= 0,
        S_4 ==
        If(A_4 + -1*A_3 + B <= C,
           A_4 + -1*A_3 + S_3 + B,
           S_3 + C)),
     Or(A_2 + -1*A_1 + S_1 + -1*S_2 <= 0,
        Not(A_3 + -1*A_2 + S_2 + -1*S_3 <= 0),
        S_4 ==
        If(A_4 + -1*L_0 <= S_3 + C, A_4 + -1*L_0, S_3 + C),
        A_4 + -1*A_2 + S_2 + B <= S_3 + C),
     Or(A_1 + -1*L_0 + -1*S_1 <= B,
        A_2 + -1*A_1 + S_1 + -1*S_2 <= 0,
        Not(A_3 + -1*A_2 + S_2 + -1*S_3 <= 0),
        S_4 ==
        If(A_4 + -1*A_2 + S_2 + B <= S_3 + C,
           A_4 + -1*A_2 + S_2 + B,
           S_3 + C)),
     Or(A_1 + -1*L_0 + -1*S_1 <= B,
        A_2 + -1*A_1 + S_1 + -1*S_2 <= 0,
        S_3 ==
        If(A_3 + -1*A_2 + B <= C,
           A_3 + -1*A_2 + S_2 + B,
           S_2 + C)),
     Or(A_1 + -1*L_0 + -1*S_1 <= B,
        Not(A_2 + -1*A_1 + S_1 + -1*S_2 <= 0),
        S_3 ==
        If(A_3 + -1*A_1 + S_1 + B <= S_2 + C,
           A_3 + -1*A_1 + S_1 + B,
           S_2 + C)),
     Or(Not(A_2 + -1*A_1 + S_1 + -1*S_2 <= 0),
        Not(A_3 + -1*A_1 + S_1 + -1*S_3 <= 0),
        S_4 ==
        If(A_4 + -1*L_0 <= S_3 + C, A_4 + -1*L_0, S_3 + C),
        A_4 + -1*A_1 + S_1 + B <= S_3 + C),
     Or(A_1 + -1*L_0 + -1*S_1 <= B,
        S_4 ==
        If(A_4 + -1*A_1 + S_1 + B <= S_3 + C,
           A_4 + -1*A_1 + S_1 + B,
           S_3 + C),
        Not(S_4 ==
            If(A_4 + -1*L_0 <= S_3 + C,
               A_4 + -1*L_0,
               S_3 + C))),
     Or(A_1 + -1*L_0 + -1*S_1 <= B,
        Not(A_2 + -1*A_1 + S_1 + -1*S_2 <= 0),
        Not(A_3 + -1*A_1 + S_1 + -1*S_3 <= 0),
        S_4 ==
        If(A_4 + -1*A_1 + S_1 + B <= S_3 + C,
           A_4 + -1*A_1 + S_1 + B,
           S_3 + C)),
     Or(A_3 + -1*A_2 + S_2 + -1*S_3 <= 0,
        Not(S_3 + B <= S_2 + C)),
     Or(Not(A_1 + -1*L_0 + -1*S_1 <= B),
        A_3 + -1*A_2 + S_2 + -1*S_3 <= 0,
        A_4 + -1*A_3 + B <= C,
        S_4 ==
        If(A_4 + -1*L_0 <= S_3 + C, A_4 + -1*L_0, S_3 + C)),
     Or(S_2 ==
        If(A_2 + -1*L_0 <= S_1 + C, A_2 + -1*L_0, S_1 + C),
        Not(A_1 + -1*L_0 + -1*S_1 <= B)),
     Or(A_2 + -1*L_0 + -1*S_2 <= B,
        S_4 ==
        If(A_4 + -1*A_3 + B <= C,
           A_4 + -1*A_3 + S_3 + B,
           S_3 + C),
        Not(S_4 ==
            If(A_4 + -1*L_0 <= S_3 + C,
               A_4 + -1*L_0,
               S_3 + C))),
     Or(A_2 + -1*L_0 + -1*S_2 <= B,
        Not(S_3 ==
            If(A_3 + -1*L_0 <= S_2 + C,
               A_3 + -1*L_0,
               S_2 + C)),
        S_3 ==
        If(A_3 + -1*A_2 + B <= C,
           A_3 + -1*A_2 + S_2 + B,
           S_2 + C)),
     Or(A_3 + -1*L_0 + -1*S_3 <= B,
        S_4 ==
        If(A_4 + -1*A_3 + B <= C,
           A_4 + -1*A_3 + S_3 + B,
           S_3 + C),
        Not(S_4 ==
            If(A_4 + -1*L_0 <= S_3 + C,
               A_4 + -1*L_0,
               S_3 + C))),
     Or(Not(A_1 + -1*L_0 + -1*S_1 <= B),
        A_3 + -1*L_0 + -1*S_3 <= B,
        Not(A_2 + -1*L_0 + -1*S_2 <= B),
        S_4 ==
        If(A_4 + -1*A_3 + B <= C,
           A_4 + -1*A_3 + S_3 + B,
           S_3 + C)),
     Or(Not(A_1 + -1*L_0 + -1*S_1 <= B),
        Not(A_3 + -1*L_0 + -1*S_3 <= B),
        Not(A_2 + -1*L_0 + -1*S_2 <= B),
        S_4 ==
        If(A_4 + -1*L_0 <= S_3 + C, A_4 + -1*L_0, S_3 + C)),
     Or(S_3 ==
        If(A_3 + -1*L_0 <= S_2 + C, A_3 + -1*L_0, S_2 + C),
        Not(A_1 + -1*L_0 + -1*S_1 <= B),
        Not(A_2 + -1*L_0 + -1*S_2 <= B)),
     Or(Not(A_1 + -1*L_0 + -1*S_1 <= B),
        A_2 + -1*L_0 + -1*S_2 <= B,
        S_3 ==
        If(A_3 + -1*A_2 + B <= C,
           A_3 + -1*A_2 + S_2 + B,
           S_2 + C)),
     Or(Not(A_1 + -1*L_0 + -1*S_1 <= B),
        A_2 + -1*L_0 + -1*S_2 <= B,
        Not(A_3 + -1*A_2 + S_2 + -1*S_3 <= 0),
        S_4 ==
        If(A_4 + -1*A_2 + S_2 + B <= S_3 + C,
           A_4 + -1*A_2 + S_2 + B,
           S_3 + C)),
     Or(Not(A_1 + -1*L_0 + -1*S_1 <= B),
        A_2 + -1*L_0 + -1*S_2 <= B,
        A_3 + -1*A_2 + S_2 + -1*S_3 <= 0,
        S_4 ==
        If(A_4 + -1*A_3 + B <= C,
           A_4 + -1*A_3 + S_3 + B,
           S_3 + C)),
     B >= 5,
     C >= 5,
     L_0 >= 0)]