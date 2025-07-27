; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_1 () Real)
(declare-fun Q_1 () Real)
(declare-fun A_1 () Real)
(declare-fun L_0 () Real)
(declare-fun S_0 () Real)
(declare-fun A_0 () Real)
(assert
 (let (($x209 (>= Q_1 0.0)))
 (and $x209 (<= (+ (* (- 1.0) S_1) S_0) 0.0) (<= (+ L_0 (* (- 1.0) A_0) S_0) 0.0) (<= (+ L_0 (* (- 1.0) A_1) Q_1 S_1) 0.0))))
(check-sat)
