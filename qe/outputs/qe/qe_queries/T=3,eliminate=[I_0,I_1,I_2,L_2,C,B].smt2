; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_1 () Real)
(declare-fun A_1 () Real)
(declare-fun L_1 () Real)
(declare-fun A_2 () Real)
(declare-fun S_2 () Real)
(declare-fun S_0 () Real)
(declare-fun L_0 () Real)
(declare-fun A_0 () Real)
(assert
 (let (($x525 (<= (+ A_0 (* (- 1.0) S_2) (* (- 1.0) L_0)) 0.0)))
 (and (<= (* (- 1.0) L_1) (* (- 1.0) L_0)) (or $x525 (<= (+ (* (- 1.0) L_1) A_1 (* (- 1.0) S_2)) 0.0)) (<= (+ (* (- 1.0) A_0) L_0 S_0) 0.0) (<= (+ (* (- 1.0) S_2) S_1) 0.0) (<= (+ (* (- 1.0) S_1) S_0) 0.0) (<= (+ L_1 S_2 (* (- 1.0) A_2)) 0.0) (<= (+ L_1 (* (- 1.0) A_1) S_1) 0.0))))
(check-sat)
