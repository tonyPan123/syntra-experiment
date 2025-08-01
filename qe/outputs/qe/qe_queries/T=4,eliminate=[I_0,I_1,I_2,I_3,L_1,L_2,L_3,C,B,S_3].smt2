; benchmark generated from python API
(set-info :status unknown)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(declare-fun S_0 () Real)
(declare-fun A_2 () Real)
(declare-fun S_2 () Real)
(declare-fun A_3 () Real)
(declare-fun S_1 () Real)
(declare-fun A_1 () Real)
(declare-fun loss_rate_tol () Real)
(assert
 (let ((?x595 (* (- 1.0) A_3)))
 (let ((?x949 (* (- 1.0) S_1)))
 (let ((?x2447 (* (/ 3.0 2.0) S_2)))
 (let ((?x2454 (* (/ 1.0 2.0) L_0)))
 (let ((?x2466 (* (/ 1.0 2.0) A_0)))
 (let (($x6717 (<= 0.0 (+ (* (- 2.0) A_0) (* 3.0 L_0) (* 3.0 S_2) ?x595))))
 (let (($x6718 (not $x6717)))
 (let (($x5894 (not (<= 0.0 loss_rate_tol))))
 (let (($x2114 (<= (+ A_0 S_2 ?x949 (* (- 1.0) A_2)) 0.0)))
 (let (($x7183 (or $x2114 $x5894 $x6718 (not (<= 0.0 (+ ?x2466 ?x2454 ?x2447 ?x949 ?x595 loss_rate_tol))))))
 (let (($x6888 (<= 0.0 (+ (* (- 1.0) A_1) S_2 ?x595 L_0 A_2 loss_rate_tol))))
 (let (($x969 (<= (+ A_0 (* (- 1.0) A_1)) 0.0)))
 (let (($x517 (not (<= 0.0 (+ (* (- (/ 4.0 5.0)) A_1) S_2 L_0 (* (- (/ 1.0 5.0)) A_3))))))
 (let (($x6750 (<= 0.0 (+ (* (- 1.0) A_0) S_2 L_0 ?x595 A_1 loss_rate_tol))))
 (let (($x6751 (not $x6750)))
 (let ((?x1373 (* 2.0 S_2)))
 (let ((?x640 (* (- 1.0) A_1)))
 (let (($x13768 (or $x517 $x2114 $x5894 (not (<= 0.0 (+ ?x640 ?x1373 ?x949 ?x595 L_0 A_0 loss_rate_tol))))))
 (let (($x6725 (<= 0.0 (+ (* (/ 1.0 4.0) A_2) (* (- 1.0) A_0) L_0 S_1 (* (- (/ 1.0 4.0)) A_3)))))
 (let (($x6726 (not $x6725)))
 (let (($x6409 (not (<= 0.0 (+ A_2 ?x595 loss_rate_tol)))))
 (let (($x6063 (<= 0.0 (+ (* (- 5.0) A_0) (* 6.0 L_0) (* 6.0 S_1) ?x595))))
 (let (($x6400 (not $x6063)))
 (let (($x953 (<= (+ A_0 (* (- 1.0) L_0) (* (- 1.0) S_2)) 0.0)))
 (let (($x8348 (or $x953 $x6409 (not (<= 0.0 (+ A_1 (* (- 1.0) S_2) S_0 (* (- 1.0) A_0)))))))
 (let ((?x579 (* (- 1.0) A_0)))
 (let ((?x957 (* (- 1.0) S_2)))
 (let ((?x1275 (+ A_1 ?x957 S_0 ?x579)))
 (let (($x1293 (<= ?x1275 0.0)))
 (let (($x1996 (not (<= (+ (* (- 1.0) A_2) A_3 A_0 ?x957 (* (- 1.0) L_0)) 0.0))))
 (let (($x1192 (<= (+ A_1 (* (- 1.0) A_2)) 0.0)))
 (let (($x13418 (or (not (<= 0.0 (+ (* (/ 1.0 5.0) A_1) (* (- (/ 1.0 5.0)) A_3)))) $x953 $x5894)))
 (let (($x1748 (<= (+ ?x640 A_3 S_2 (* (- 1.0) S_0) A_0 (* (- 1.0) A_2)) 0.0)))
 (let (($x1086 (<= (+ A_1 ?x957 (* (- 1.0) L_0)) 0.0)))
 (let (($x965 (<= (+ ?x595 A_2) 0.0)))
 (let (($x2069 (or $x965 (<= (+ (* (- (/ 1.0 2.0)) A_0) L_0 (* (- (/ 1.0 2.0)) A_3) S_1) 0.0))))
 (let (($x429 (or $x953 $x965 $x1086 (<= (+ A_1 ?x595 ?x957 S_0 ?x579 A_2) 0.0))))
 (and (or $x953 (<= (+ (* (/ 3.0 5.0) A_1) (* (- (/ 3.0 5.0)) A_3)) 0.0)) (or $x953 $x1192) $x429 $x2069 (or $x953 $x1086 (not $x1293) (not $x1748) $x5894) $x13418 (or $x965 $x5894 $x6400) (or $x1192 $x1996 $x5894 $x6400) (or $x1192 $x5894 $x6718 $x6751) (or $x1192 $x5894 $x6400 $x6726 $x6751) (or $x953 $x1293 $x6409) $x8348 (or $x5894 $x6400 $x6409 $x6726) (or $x517 $x5894 $x6409) $x13768 (or $x2114 $x5894 $x6718 $x6751) (or $x5894 $x6409 $x6718) (or $x517 $x969 $x5894 (not $x6888)) $x7183 (<= (+ ?x949 S_0) 0.0) (<= (+ ?x640 S_1 L_0) 0.0) (<= (+ ?x957 S_1) 0.0) (<= (+ ?x595 S_2 L_0) 0.0) (<= (+ S_2 L_0 (* (- 1.0) A_2)) 0.0) (<= (+ S_0 L_0 ?x579) 0.0))))))))))))))))))))))))))))))))))))))))
(check-sat)
