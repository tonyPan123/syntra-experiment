; benchmark generated from python API
(set-info :status unknown)
(declare-fun L_0 () Real)
(declare-fun S_1 () Real)
(declare-fun A_1 () Real)
(declare-fun S_2 () Real)
(declare-fun S_0 () Real)
(declare-fun Q_2 () Real)
(declare-fun A_2 () Real)
(declare-fun A_0 () Real)
(assert
 (let (($x595 (>= Q_2 0.0)))
 (let (($x752 (= Q_2 0.0)))
 (let (($x747 (<= (+ A_1 (* (- 1.0) S_2) (* (- 1.0) L_0)) 0.0)))
 (let (($x563 (<= (+ (* (/ 1.0 2.0) A_0) (* (- (/ 1.0 2.0)) L_0) (* (- (/ 1.0 2.0)) S_2)) 0.0)))
 (let (($x288 (or $x563 $x747 $x752 (<= (+ A_1 Q_2 (* (- 1.0) S_2) S_0 (* (- 1.0) A_0)) 0.0))))
 (let ((?x358 (* (- 1.0) A_0)))
 (let ((?x549 (* (- 1.0) A_2)))
 (let (($x296 (or $x752 (<= (+ ?x549 ?x358 Q_2 (* 2.0 L_0) (* 2.0 S_1)) 0.0))))
 (and $x296 (or $x563 (<= (+ ?x549 A_1 Q_2) 0.0)) $x288 $x595 (<= (+ ?x358 L_0 S_0) 0.0) (<= (+ ?x549 Q_2 L_0 S_2) 0.0) (<= (+ (* (- 1.0) S_1) S_0) 0.0) (<= (+ (* (- 1.0) S_2) S_1) 0.0) (<= (+ (* (- 1.0) A_1) S_1 L_0) 0.0)))))))))))
(check-sat)
