; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_4 () Real)
(declare-fun S_3 () Real)
(declare-fun C () Real)
(declare-fun S_2 () Real)
(declare-fun S_1 () Real)
(declare-fun S_0 () Real)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(declare-fun L0 () Real)
(declare-fun B () Real)
(declare-fun A_3 () Real)
(declare-fun A_4 () Real)
(declare-fun A_1 () Real)
(declare-fun L_2 () Real)
(declare-fun L_1 () Real)
(declare-fun A_2 () Real)
(assert
 (let (($x37 (>= L0 0.0)))
 (let (($x760 (>= C 5.0)))
 (let (($x791 (>= B 5.0)))
 (let ((?x251 (* (- 1.0) S_2)))
 (let ((?x500 (* (- 1.0) A_4)))
 (let ((?x541 (* (- 1.0) B)))
 (let ((?x1054 (* (- 2.0) C)))
 (let (($x8577 (<= (+ (* (- 3.0) C) ?x541 (* (- 1.0) S_1) ?x500 A_3 S_4) 0.0)))
 (let (($x8595 (<= (+ (* (- 4.0) C) ?x541 ?x500 A_3 S_4 (* (- 1.0) S_0)) 0.0)))
 (let (($x8556 (<= (+ (* (- 1.0) C) ?x541 (* (- 1.0) S_3) ?x500 A_3 S_4) 0.0)))
 (let (($x8551 (<= (+ L_0 (* (- 3.0) C) ?x541 ?x500 A_3 S_4 (* (- 1.0) A_0)) 0.0)))
 (let (($x8414 (<= (+ (* (- 1.0) L_0) A_1 (* 2.0 C) (* (- 1.0) S_4)) 0.0)))
 (let (($x8227 (<= 0.0 (+ L_0 C (* (- 1.0) A_1) S_0))))
 (let (($x8234 (not $x8227)))
 (let (($x842 (>= S_4 (+ A_3 (* (- 1.0) L_2)))))
 (let (($x8371 (or $x842 (<= (+ (* 3.0 C) (* (- 1.0) S_4) S_0) 0.0) $x8227)))
 (let (($x10923 (or (<= (+ (* (- 1.0) L_0) A_1 (* (- 1.0) S_3) C) 0.0) $x8234)))
 (let (($x8138 (<= S_4 (+ A_4 (* (- 1.0) A_3) A_1 (* (- 1.0) L_1) (* 2.0 C)))))
 (let (($x54 (= L_1 L_0)))
 (let (($x64 (= L_2 L_1)))
 (let (($x7891 (or $x64 (<= S_4 (+ A_4 (* (- 1.0) A_3) A_2 (* (- 1.0) L_2) C)))))
 (let (($x1077 (not (= L_1 L_2))))
 (let (($x8106 (or $x54 $x1077 (<= (+ A_2 (* (- 1.0) A_1) (* (- 1.0) C)) 0.0))))
 (let ((?x321 (* (- 1.0) C)))
 (let ((?x489 (* (- 1.0) L_2)))
 (let ((?x7647 (+ ?x541 ?x489 A_2 ?x321)))
 (let (($x7973 (<= (+ A_1 (* (- 1.0) L_0)) ?x7647)))
 (let (($x7530 (or (= (+ ?x321 A_2 ?x489 ?x541 (* (- 1.0) A_1) L_0) 0.0) (not $x7973))))
 (let (($x2489 (= L_2 L_0)))
 (let (($x1232 (not (= L_0 L_1))))
 (let (($x7619 (or $x1232 $x2489 (<= (+ A_1 (* (- 1.0) L_0) L_2 (* (- 1.0) A_2) C) 0.0))))
 (let ((?x585 (* (- 1.0) L_0)))
 (let ((?x898 (+ A_0 ?x585)))
 (let ((?x479 (* (- 1.0) L_1)))
 (let ((?x222 (+ ?x541 ?x479 A_1 ?x321)))
 (let (($x120 (>= S_4 S_3)))
 (let (($x36 (>= L_0 L0)))
 (let (($x111 (>= S_1 S_0)))
 (let (($x114 (>= S_2 S_1)))
 (let (($x117 (>= S_3 S_2)))
 (let (($x122 (>= A_1 A_0)))
 (let (($x124 (>= A_3 A_2)))
 (let (($x125 (>= A_4 A_3)))
 (and (<= (+ A_1 ?x479) S_3) (not (<= (+ A_2 ?x489) S_3)) $x125 $x124 $x122 $x117 $x114 $x111 $x36 $x120 (>= S_3 (+ A_2 ?x489 ?x541)) (or $x54 (<= S_1 (+ A_1 ?x479 ?x541))) (or $x64 (<= S_2 (+ A_2 ?x489 ?x541))) (<= ?x222 ?x898) (>= S_0 (+ ?x541 ?x479 A_1 ?x1054)) (or $x54 (not (<= L_1 L_0))) (or $x54 (<= S_0 ?x222)) (>= S_2 ?x7647) (>= S_3 (+ A_1 ?x479 ?x541 C)) (>= S_2 (+ A_1 ?x479 ?x541)) (or $x54 $x64 (= (+ A_2 ?x489) (+ A_1 ?x479 C))) (>= S_1 ?x222) (or $x64 (<= S_3 (+ A_2 ?x489 ?x541 C))) (or $x64 (<= S_4 (+ A_2 ?x489 ?x541 (* 2.0 C)))) (or $x842 (>= S_4 (+ A_2 ?x489 ?x541 C))) (or $x64 (not (<= L_2 L_1))) $x7619 (or $x54 (<= S_2 (+ A_1 ?x479 ?x541 C))) (or $x64 (<= S_1 ?x7647)) (or $x64 (<= S_0 (+ ?x541 ?x489 A_2 ?x1054)) $x7973) (<= (+ ?x541 ?x489 A_2 ?x1054) ?x898) (>= S_0 (+ ?x541 ?x489 A_2 (* (- 3.0) C))) $x7530 (>= S_1 (+ ?x541 ?x489 A_2 ?x1054)) (<= S_4 (+ A_4 ?x489)) (or $x54 (<= S_3 (+ A_1 ?x479 ?x541 (* 2.0 C)))) (or $x842 (>= S_4 (+ A_1 ?x479 ?x541 (* 2.0 C)))) (or $x54 (<= S_4 (+ A_1 ?x479 ?x541 (* 3.0 C)))) $x8106 $x7891 (or $x54 $x8138) (<= (+ ?x321 L_0 S_1 (* (- 1.0) A_0)) 0.0) (or $x842 (<= (+ (* 2.0 C) S_1 (* (- 1.0) S_4)) 0.0)) (<= (+ L_0 (* (- 1.0) A_1) ?x321 S_2) 0.0) (<= (+ L_0 ?x1054 S_2 (* (- 1.0) A_0)) 0.0) (or (<= (+ (* 2.0 C) (* (- 1.0) S_3) S_0) 0.0) $x8227) $x10923 (<= (+ (* (- 1.0) A_1) L_0 S_1) 0.0) (<= (+ (* (- 4.0) C) (* (- 1.0) S_1) S_4) 0.0) (<= (+ L_0 (* (- 1.0) A_1) (* (- 3.0) C) S_4) 0.0) (<= S_4 (+ A_3 ?x489 C)) (<= (+ (* (- 5.0) C) S_4 (* (- 1.0) S_0)) 0.0) (or $x8227 (<= (+ C ?x251 S_0) 0.0)) (or (<= (+ A_1 ?x585 ?x251) 0.0) $x8234) $x8371 (<= (+ L_0 (* (- 4.0) C) S_4 (* (- 1.0) A_0)) 0.0) (<= (+ L_0 (* (- 1.0) A_1) S_3 ?x1054) 0.0) (<= (+ L_0 (* (- 3.0) C) S_3 (* (- 1.0) A_0)) 0.0) (<= (+ (* (- 4.0) C) S_3 (* (- 1.0) S_0)) 0.0) (or $x842 (<= (+ C (* (- 1.0) S_4) S_2) 0.0)) (or $x842 $x8234 $x8414) $x8551 $x8556 $x8595 $x8577 (<= (+ L_0 ?x541 (* (- 1.0) A_1) ?x500 ?x1054 A_3 S_4) 0.0) (<= (+ ?x1054 ?x541 ?x500 A_3 S_4 ?x251) 0.0) $x791 $x760 $x37 (<= (+ C S_1 (* (- 1.0) S_3)) 0.0) (<= (+ L_0 S_0 (* (- 1.0) A_0)) 0.0) (<= (+ (* (- 3.0) C) S_2 (* (- 1.0) S_0)) 0.0) (<= (+ ?x1054 S_1 (* (- 1.0) S_0)) 0.0) (<= (+ ?x1054 (* (- 1.0) S_1) S_2) 0.0) (<= (+ (* (- 3.0) C) (* (- 1.0) S_1) S_3) 0.0) (<= (+ ?x1054 S_3 ?x251) 0.0) (<= (+ (* (- 3.0) C) S_4 ?x251) 0.0) (<= (+ ?x1054 (* (- 1.0) S_3) S_4) 0.0))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
