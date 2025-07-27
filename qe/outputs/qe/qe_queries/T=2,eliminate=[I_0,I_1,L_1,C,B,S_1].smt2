; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_0 () Real)
(declare-fun L_0 () Real)
(declare-fun A_0 () Real)
(declare-fun A_1 () Real)
(declare-fun loss_rate_tol () Real)
(assert
 (let (($x180 (or (not (<= 0.0 (+ (* (- (/ 3.0 4.0)) A_0) L_0 S_0 (* (- (/ 1.0 4.0)) A_1)))) (not (<= 0.0 loss_rate_tol)))))
 (and $x180 (<= (+ L_0 S_0 (* (- 1.0) A_1)) 0.0) (<= (+ (* (- 1.0) A_0) L_0 S_0) 0.0))))
(check-sat)
