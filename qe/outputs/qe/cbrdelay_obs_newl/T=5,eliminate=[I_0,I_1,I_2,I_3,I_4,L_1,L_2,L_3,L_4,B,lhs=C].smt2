; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_0 () Real)
(declare-fun C () Real)
(declare-fun S_4 () Real)
(declare-fun S_1 () Real)
(declare-fun S_3 () Real)
(declare-fun L_0 () Real)
(declare-fun A_0 () Real)
(declare-fun S_2 () Real)
(declare-fun A_1 () Real)
(declare-fun A_2 () Real)
(declare-fun A_3 () Real)
(declare-fun A_4 () Real)
(assert
 (let (($x34 (>= L_0 0.0)))
 (let (($x699 (>= C 5.0)))
 (let (($x108 (>= S_1 S_0)))
 (let (($x111 (>= S_2 S_1)))
 (let (($x114 (>= S_3 S_2)))
 (let (($x117 (>= S_4 S_3)))
 (let (($x120 (>= A_2 A_1)))
 (let (($x121 (>= A_3 A_2)))
 (let (($x122 (>= A_4 A_3)))
 (and (<= (+ A_0 (* (- 1.0) L_0)) S_4) $x122 $x121 $x120 $x117 $x114 $x111 $x108 (<= (+ (* (- 1.0) A_0) L_0 (* (- 3.0) C) S_3) 0.0) (<= (+ (* (- 4.0) C) S_3 (* (- 1.0) S_0)) 0.0) (<= (+ S_4 (* (- 5.0) C) (* (- 1.0) S_0)) 0.0) $x699 $x34 (<= (+ (* (- 1.0) A_0) L_0 S_0) 0.0) (not (>= (+ S_4 L_0 (* (- 1.0) A_1)) 0.0)) (<= (+ (* (- 1.0) S_4) C S_2) 0.0) (<= (+ (* (- 1.0) A_0) L_0 (* (- 1.0) C) S_1) 0.0) (<= (+ (* (- 2.0) C) S_1 (* (- 1.0) S_0)) 0.0) (<= (+ (* (- 2.0) C) S_2 (* (- 1.0) S_1)) 0.0) (<= (+ (* (- 1.0) A_0) L_0 (* (- 2.0) C) S_2) 0.0) (<= (+ (* (- 3.0) C) S_2 (* (- 1.0) S_0)) 0.0) (<= (+ (* (- 2.0) C) S_3 (* (- 1.0) S_2)) 0.0) (<= (+ (* (- 3.0) C) S_3 (* (- 1.0) S_1)) 0.0) (<= (+ C (* (- 1.0) S_2) S_0) 0.0) (<= (+ S_4 (* (- 2.0) C) (* (- 1.0) S_3)) 0.0) (<= (+ S_4 (* (- 3.0) C) (* (- 1.0) S_2)) 0.0) (<= (+ S_4 (* (- 1.0) A_0) L_0 (* (- 4.0) C)) 0.0) (<= (+ S_4 (* (- 4.0) C) (* (- 1.0) S_1)) 0.0) (<= (+ C (* (- 1.0) S_3) S_1) 0.0) (<= (+ (* 2.0 C) (* (- 1.0) S_3) S_0) 0.0) (<= (+ (* (- 1.0) S_4) (* 2.0 C) S_1) 0.0) (<= (+ (* (- 1.0) S_4) (* 3.0 C) S_0) 0.0))))))))))))
(check-sat)
