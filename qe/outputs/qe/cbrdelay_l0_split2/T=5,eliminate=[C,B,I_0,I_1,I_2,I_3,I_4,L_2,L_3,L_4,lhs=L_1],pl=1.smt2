; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_0 () Real)
(declare-fun A_3 () Real)
(declare-fun S_4 () Real)
(declare-fun S_3 () Real)
(declare-fun L_1 () Real)
(declare-fun S_1 () Real)
(declare-fun S_2 () Real)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(declare-fun L0 () Real)
(declare-fun A_4 () Real)
(declare-fun A_2 () Real)
(declare-fun A_1 () Real)
(assert
 (let (($x7477 (<= (+ L_1 (* (- (/ 1.0 2.0)) S_3) S_4 (* (- 1.0) A_3) (* (/ 1.0 2.0) S_0)) 0.0)))
 (let (($x2540 (<= (+ L_0 (* 2.0 S_1) (* (- 1.0) S_3) (* (- 1.0) A_0)) 0.0)))
 (let (($x3915 (<= (+ S_1 (* (- 1.0) S_3)) (- 5.0))))
 (let (($x37 (>= L0 0.0)))
 (let (($x1405 (<= (+ L_0 S_0 (* (- 1.0) A_0)) 0.0)))
 (let ((?x5170 (* (/ 1.0 2.0) S_0)))
 (let ((?x226 (* (- 1.0) A_4)))
 (let ((?x4286 (* (- (/ 1.0 2.0)) S_3)))
 (let ((?x3546 (* (- 1.0) A_1)))
 (let (($x54 (= L_1 L_0)))
 (let (($x918 (>= S_4 (+ A_3 (* (- 1.0) L_1)))))
 (let (($x3418 (or $x918 (<= (+ (* (- 1.0) S_4) (* (- 1.0) S_0) (* 2.0 S_1)) 0.0))))
 (let (($x1856 (<= (+ L_0 (* 3.0 S_2) (* (- 2.0) S_4) (* (- 1.0) A_0)) 0.0)))
 (let (($x3860 (or $x918 (<= (+ (* 4.0 S_2) (* (- 3.0) S_4) (* (- 1.0) S_0)) 0.0))))
 (let (($x6969 (or $x918 (<= (+ (* 3.0 S_2) (* (- 2.0) S_4) (* (- 1.0) S_1)) 0.0))))
 (let (($x6951 (<= (+ L_0 (* (- (/ 1.0 2.0)) S_4) (* (- 1.0) A_0) (* (/ 3.0 2.0) S_1)) 0.0)))
 (let (($x1377 (or $x54 (<= (+ L_1 ?x3546 A_2 (* (- 1.0) S_2) S_4 ?x226 S_0) 0.0))))
 (let (($x3177 (or $x54 (<= (+ L_1 ?x3546 A_2 (* (- 1.0) S_3) S_4 ?x226 S_1) 0.0))))
 (let (($x548 (not (<= (+ A_1 (* (- 1.0) L_1)) S_3))))
 (let (($x117 (>= S_3 S_2)))
 (let (($x882 (or $x54 (not (<= L_1 L_0)))))
 (let (($x125 (>= A_4 A_3)))
 (let (($x124 (>= A_3 A_2)))
 (let (($x123 (>= A_2 A_1)))
 (let (($x120 (>= S_4 S_3)))
 (let (($x114 (>= S_2 S_1)))
 (let (($x111 (>= S_1 S_0)))
 (let (($x36 (>= L_0 L0)))
 (let ((?x529 (* (- 1.0) L_0)))
 (let ((?x571 (+ A_0 ?x529)))
 (let (($x958 (<= ?x571 S_3)))
 (let (($x2650 (<= S_4 (+ A_4 (* (- 1.0) L_1)))))
 (and $x2650 $x958 $x36 $x111 $x114 $x120 $x123 $x124 $x125 $x882 $x117 $x548 $x3177 (or $x918 (<= (+ (* (- (/ 1.0 3.0)) S_4) (* (/ 1.0 3.0) S_0)) (- 5.0))) $x1377 (or $x918 (<= (+ (* (- (/ 1.0 2.0)) S_4) (* (/ 1.0 2.0) S_1)) (- 5.0))) (or $x918 $x6951) (or $x918 (<= (+ S_2 (* (- 1.0) S_4)) (- 5.0))) $x6969 $x3860 (or $x918 $x1856) $x3418 (or $x54 (<= (+ L_1 ?x3546 A_2 ?x4286 S_4 ?x226 ?x5170) 0.0)) $x1405 $x37 $x3915 (<= (+ (* 3.0 S_1) (* (- 2.0) S_3) (* (- 1.0) S_0)) 0.0) (<= (+ (* 2.0 S_1) S_4 (* (- 3.0) S_3)) 0.0) (<= (+ ?x4286 ?x5170) (- 5.0)) (<= (+ S_4 (* (- 2.0) S_3) S_0) 0.0) (<= (+ (* (- 1.0) S_2) S_0) (- 5.0)) (<= (+ S_4 (* (- 4.0) S_2) (* 3.0 S_0)) 0.0) $x2540 (<= (+ (* (- 3.0) S_2) S_3 (* 2.0 S_0)) 0.0) (<= (+ L_1 (* (- 1.0) S_2) S_4 (* (- 1.0) A_3) S_0) 0.0) (<= (+ L_1 (* (- 1.0) S_3) S_4 (* (- 1.0) A_3) S_1) 0.0) $x7477))))))))))))))))))))))))))))))))))
(check-sat)
