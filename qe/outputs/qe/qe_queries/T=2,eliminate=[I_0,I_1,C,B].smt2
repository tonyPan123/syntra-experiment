; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_0 () Real)
(declare-fun S_1 () Real)
(declare-fun A_1 () Real)
(declare-fun L_1 () Real)
(declare-fun L_0 () Real)
(declare-fun A_0 () Real)
(assert
 (and (<= (* (- 1.0) L_1) (* (- 1.0) L_0)) (<= (+ (* (- 1.0) A_0) L_0 S_0) 0.0) (<= (+ S_1 L_1 (* (- 1.0) A_1)) 0.0) (<= (+ (* (- 1.0) S_1) S_0) 0.0)))
(check-sat)
