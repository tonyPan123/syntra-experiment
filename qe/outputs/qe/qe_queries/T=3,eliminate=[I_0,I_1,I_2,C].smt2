; benchmark generated from python API
(set-info :status unknown)
(declare-fun L_2 () Real)
(declare-fun A_2 () Real)
(declare-fun S_2 () Real)
(declare-fun S_1 () Real)
(declare-fun A_1 () Real)
(declare-fun L_1 () Real)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(declare-fun S_0 () Real)
(declare-fun B () Real)
(assert
 (let (($x672 (<= (+ (* (- 1.0) S_2) (* (- 1.0) L_1) (* (- 1.0) B) A_1) 0.0)))
 (let (($x527 (<= (+ A_0 (* (- 1.0) S_1) (* (- 1.0) B) (* (- 1.0) L_1)) 0.0)))
 (let (($x547 (>= B 0.0)))
 (let ((?x544 (* (- 2.0) A_1)))
 (let ((?x850 (* 2.0 B)))
 (let ((?x543 (* 2.0 L_1)))
 (let ((?x309 (* (- 1.0) L_0)))
 (let (($x696 (= B 0.0)))
 (let (($x532 (<= (+ (* (- 1.0) A_0) S_0 B L_1) 0.0)))
 (let ((?x318 (* (- 1.0) L_1)))
 (let (($x272 (= ?x318 ?x309)))
 (let (($x864 (<= (+ S_1 L_1 B (* (- 1.0) A_1)) 0.0)))
 (let ((?x367 (* (- 1.0) A_2)))
 (let ((?x328 (* (- 1.0) A_0)))
 (let ((?x307 (* (- 1.0) L_2)))
 (let (($x276 (= ?x307 ?x318)))
 (let (($x1819 (or $x276 (<= (+ ?x328 L_0 (* 2.0 S_1) ?x367 L_2 B) 0.0) $x864)))
 (let ((?x535 (* 2.0 A_1)))
 (let ((?x331 (* (- 1.0) B)))
 (let (($x540 (<= (+ ?x328 L_0 ?x367 L_2 ?x331 (* (- 2.0) L_1) ?x535) 0.0)))
 (let (($x1322 (or $x272 $x532 $x696 (<= (+ A_0 ?x309 A_2 ?x307 ?x543 B ?x544) 0.0))))
 (let (($x758 (<= (+ ?x318 A_1 (* (- 1.0) S_2)) 0.0)))
 (let (($x1099 (or (<= (+ A_0 (* (- 2.0) S_2) ?x309 A_2 ?x307 ?x331) 0.0) $x758)))
 (and (<= ?x318 ?x309) (<= ?x307 ?x318) (or $x276 (<= (+ S_2 ?x367 L_2 B) 0.0)) (or $x272 $x532 $x864) (or (<= (+ A_0 (* (- 1.0) S_2) ?x309) 0.0) $x758) $x1099 (or (not (<= (+ ?x328 L_0 ?x367 ?x307 ?x331 ?x535) 0.0)) $x540 $x696) $x1322 (or $x276 $x540 $x696) $x1819 (or $x272 $x532 $x696 (<= (+ A_0 S_2 ?x309 ?x543 ?x850 ?x544) 0.0)) $x547 $x527 $x672 (<= (+ (* (- 1.0) S_2) S_1) 0.0) (<= (+ (* (- 1.0) S_1) S_0) 0.0) (<= (+ S_0 L_0 ?x328) 0.0) (<= (+ L_1 (* (- 1.0) A_1) S_1) 0.0) (<= (+ S_2 ?x367 L_2) 0.0))))))))))))))))))))))))))
(check-sat)
