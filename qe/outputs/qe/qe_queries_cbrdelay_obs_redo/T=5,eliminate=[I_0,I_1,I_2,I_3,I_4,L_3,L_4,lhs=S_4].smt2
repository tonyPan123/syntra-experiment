; benchmark generated from python API
(set-info :status unknown)
(declare-fun C () Real)
(declare-fun S_3 () Real)
(declare-fun L_2 () Real)
(declare-fun A_2 () Real)
(declare-fun S_2 () Real)
(declare-fun S_4 () Real)
(declare-fun A_4 () Real)
(declare-fun S_0 () Real)
(declare-fun S_1 () Real)
(declare-fun L_1 () Real)
(declare-fun A_1 () Real)
(declare-fun L_0 () Real)
(declare-fun A_0 () Real)
(declare-fun A_3 () Real)
(declare-fun B () Real)
(assert
 (let (($x34 (>= L_0 0.0)))
 (let (($x785 (>= C 5.0)))
 (let (($x856 (>= B 5.0)))
 (let ((?x340 (* (- 1.0) S_1)))
 (let ((?x374 (* (- 1.0) A_4)))
 (let ((?x1554 (* (- 3.0) C)))
 (let ((?x230 (* (- 1.0) B)))
 (let (($x6694 (<= (+ ?x230 (* (- 4.0) C) ?x374 A_3 S_4 (* (- 1.0) S_0)) 0.0)))
 (let (($x6777 (<= (+ ?x230 (* (- 2.0) C) ?x374 A_3 S_4 (* (- 1.0) S_2)) 0.0)))
 (let (($x1788 (<= (+ (* (- 1.0) A_2) L_2 ?x230 (* (- 1.0) C) ?x374 A_3 S_4) 0.0)))
 (let (($x4411 (<= (+ L_1 (* (- 1.0) A_1) ?x230 (* (- 2.0) C) ?x374 A_3 S_4) 0.0)))
 (let (($x1358 (<= (+ A_1 (* (- 1.0) S_2) (* (- 1.0) L_1)) 0.0)))
 (let (($x2346 (<= (+ (* (- 1.0) L_1) A_1 (* 2.0 C) (* (- 1.0) S_4)) 0.0)))
 (let (($x1312 (<= (+ A_2 (* (- 1.0) L_2) C (* (- 1.0) S_4)) 0.0)))
 (let (($x1011 (<= (+ (* (- 1.0) L_2) A_3 (* (- 1.0) S_4)) 0.0)))
 (let (($x4937 (or $x1011 $x1312 $x2346 (<= (+ (* 3.0 C) (* (- 1.0) S_4) S_0) 0.0))))
 (let (($x4855 (or $x1011 $x1312 (<= (+ (* 2.0 C) (* (- 1.0) S_4) S_1) 0.0))))
 (let (($x3061 (<= (+ (* (- 1.0) A_2) L_2 (* (- 1.0) C) ?x374 A_3 S_4) 0.0)))
 (let (($x61 (= L_2 L_1)))
 (let (($x2047 (<= (+ A_2 (* (- 1.0) L_2) ?x230 (* (- 1.0) C) (* (- 1.0) S_2)) 0.0)))
 (let (($x11445 (or $x1011 (<= (+ A_2 (* (- 1.0) L_2) ?x230 C (* (- 1.0) S_4)) 0.0))))
 (let (($x3080 (or $x61 (<= (+ (* (- 1.0) A_2) L_2 S_3 B (* (- 1.0) C)) 0.0))))
 (let (($x2870 (or $x61 (<= (+ (* (- 1.0) A_2) L_2 B (* (- 2.0) C) S_4) 0.0))))
 (let ((?x366 (* (- 1.0) A_1)))
 (let ((?x297 (* (- 1.0) C)))
 (let ((?x256 (* (- 1.0) L_2)))
 (let (($x6822 (<= 0.0 (+ A_2 ?x256 ?x230 ?x297 ?x366 L_1))))
 (let (($x2850 (= (+ (* (- 1.0) A_2) L_2 (* (- 1.0) L_1) A_1 B C) 0.0)))
 (let (($x2393 (<= (+ A_2 ?x256 ?x230 (* (- 2.0) C) (* (- 1.0) A_0) L_0) 0.0)))
 (let (($x7503 (or $x61 $x6822 (<= (+ (* (- 1.0) A_2) L_2 B (* 2.0 C) S_0) 0.0))))
 (let (($x51 (= L_1 L_0)))
 (let (($x11415 (or $x51 (<= (+ (* (- 2.0) C) ?x374 A_3 ?x366 S_4 L_1) 0.0))))
 (let (($x7764 (<= 0.0 (+ (* (- 1.0) A_2) L_2 A_1 C (* (- 1.0) L_1) ?x230))))
 (let (($x1572 (<= (+ ?x230 (* 2.0 C) A_1 (* (- 1.0) S_4) (* (- 1.0) L_1)) 0.0)))
 (let (($x11403 (or $x61 (= (+ (* (- 1.0) A_2) L_2 A_1 C (* (- 1.0) L_1)) 0.0) (not (<= (+ A_2 ?x256 ?x366 ?x297 L_1) 0.0)))))
 (let (($x1033 (<= (+ A_1 (* (- 2.0) C) (* (- 1.0) S_0) (* (- 1.0) L_1) ?x230) 0.0)))
 (let (($x1056 (<= (+ A_1 (* (- 1.0) A_0) ?x297 (* (- 1.0) L_1) ?x230 L_0) 0.0)))
 (let (($x1022 (<= (+ A_1 (* (- 1.0) S_2) (* (- 1.0) L_1) ?x230) 0.0)))
 (let (($x108 (>= S_1 S_0)))
 (let (($x111 (>= S_2 S_1)))
 (let (($x117 (>= S_4 S_3)))
 (let (($x119 (>= A_1 A_0)))
 (let (($x120 (>= A_2 A_1)))
 (let (($x122 (>= A_4 A_3)))
 (and (<= (+ A_2 ?x256) S_3) $x122 $x120 $x119 $x117 $x111 $x108 (or (not (<= 0.0 (+ (* (- 1.0) L_1) L_0))) $x51) $x1022 $x1056 $x1033 (<= (+ A_1 ?x297 ?x340 (* (- 1.0) L_1) ?x230) 0.0) (or $x51 (<= (+ ?x366 S_1 L_1 B) 0.0)) (or $x51 (<= (+ ?x366 C S_0 L_1 B) 0.0)) (or $x51 (<= (+ A_2 ?x256 ?x366 ?x297 L_1) 0.0)) $x11403 (or $x7764 $x1011 $x1572) (or $x51 (<= (+ ?x366 ?x297 S_2 L_1 B) 0.0)) (or $x51 (<= (+ S_3 B (* (- 2.0) C) ?x366 L_1) 0.0)) (or $x51 (<= (+ B ?x1554 ?x366 S_4 L_1) 0.0)) (or $x1011 $x1312 (not $x7764)) $x11415 (or $x61 (<= (+ (* (- 1.0) A_2) L_2 B C S_1) 0.0)) $x7503 (or $x61 (not (<= 0.0 (+ ?x256 L_1)))) (or $x61 (<= (+ (* (- 1.0) A_2) L_2 B S_2) 0.0)) $x2393 (or $x2850 (not $x6822)) $x2870 $x3080 (<= (+ ?x297 (* (- 1.0) A_0) S_1 L_0) 0.0) $x11445 (<= (+ A_2 ?x256 ?x230 (* (- 2.0) C) ?x340) 0.0) $x2047 (<= (+ A_2 ?x256 ?x230 ?x1554 (* (- 1.0) S_0)) 0.0) (or $x61 $x3061) (or $x1011 (<= (+ C (* (- 1.0) S_4) S_2) 0.0)) $x4855 $x4937 (<= (+ (* (- 2.0) C) S_2 ?x340) 0.0) (<= (+ ?x1554 S_2 (* (- 1.0) S_0)) 0.0) (<= (+ L_1 ?x366 ?x1554 S_4) 0.0) (or $x1358 (<= (+ C (* (- 1.0) S_2) S_0) 0.0)) (<= (+ S_3 L_1 ?x366 (* (- 2.0) C)) 0.0) (<= (+ L_1 ?x366 ?x297 S_2) 0.0) (<= (+ (* (- 4.0) C) (* (- 1.0) A_0) S_4 L_0) 0.0) (<= (+ ?x1554 S_4 (* (- 1.0) S_2)) 0.0) (<= (+ S_3 ?x1554 (* (- 1.0) A_0) L_0) 0.0) (<= (+ (* (- 2.0) C) (* (- 1.0) A_0) S_2 L_0) 0.0) (<= (+ S_3 ?x1554 ?x340) 0.0) (<= (+ (* (- 4.0) C) S_4 ?x340) 0.0) (<= (+ (* (- 5.0) C) S_4 (* (- 1.0) S_0)) 0.0) (<= (+ S_3 (* (- 4.0) C) (* (- 1.0) S_0)) 0.0) $x4411 $x1788 $x6777 (<= (+ ?x230 ?x1554 ?x374 A_3 (* (- 1.0) A_0) S_4 L_0) 0.0) $x6694 (<= (+ ?x230 ?x1554 ?x374 A_3 S_4 ?x340) 0.0) $x856 $x785 $x34 (not (>= (+ L_2 S_3 (* (- 1.0) A_3)) 0.0)) (<= (+ L_2 (* (- 1.0) A_3) ?x297 S_4) 0.0) (<= (+ (* (- 1.0) A_0) S_0 L_0) 0.0) (<= (+ ?x366 S_1 L_1) 0.0) (<= (+ (* (- 2.0) C) S_1 (* (- 1.0) S_0)) 0.0) (<= (+ L_2 ?x374 S_4) 0.0) (<= (+ (* (- 1.0) A_2) L_2 S_2) 0.0) (<= (+ (* (- 1.0) A_2) L_2 (* (- 2.0) C) S_4) 0.0) (<= (+ S_3 (* (- 2.0) C) (* (- 1.0) S_2)) 0.0) (<= (+ (* (- 1.0) A_2) L_2 S_3 ?x297) 0.0)))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
