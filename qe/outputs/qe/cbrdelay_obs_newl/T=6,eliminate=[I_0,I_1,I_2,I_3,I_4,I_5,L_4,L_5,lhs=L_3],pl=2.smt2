; benchmark generated from python API
(set-info :status unknown)
(declare-fun C () Real)
(declare-fun S_4 () Real)
(declare-fun S_5 () Real)
(declare-fun S_1 () Real)
(declare-fun S_2 () Real)
(declare-fun S_3 () Real)
(declare-fun A_1 () Real)
(declare-fun L_1 () Real)
(declare-fun L_0 () Real)
(declare-fun S_0 () Real)
(declare-fun A_0 () Real)
(declare-fun L_3 () Real)
(declare-fun A_4 () Real)
(declare-fun B () Real)
(declare-fun L_2 () Real)
(declare-fun A_2 () Real)
(declare-fun A_3 () Real)
(declare-fun A_5 () Real)
(assert
 (let (($x39 (>= L_0 0.0)))
 (let (($x1022 (>= C 5.0)))
 (let (($x9503 (or (<= (+ (* (- 1.0) L_1) A_1 (* (- 1.0) S_2)) 0.0) (<= (+ C (* (- 1.0) S_2) S_0) 0.0))))
 (let (($x2204 (<= (+ (* (- 1.0) S_5) A_4 (* (- 1.0) L_3)) 0.0)))
 (let (($x2914 (<= (+ (* (- 1.0) S_5) (* (- 1.0) L_1) A_1 (* 3.0 C)) 0.0)))
 (let (($x18528 (or $x2204 $x2914 (<= (+ (* (- 1.0) S_5) (* 4.0 C) S_0) 0.0))))
 (let ((?x268 (* (- 1.0) B)))
 (let ((?x1126 (* 3.0 C)))
 (let ((?x277 (* (- 1.0) L_1)))
 (let ((?x431 (* (- 1.0) S_5)))
 (let (($x1139 (<= (+ ?x431 ?x277 A_1 ?x1126 ?x268) 0.0)))
 (let (($x18097 (or (<= (+ ?x277 A_1 (* (- 1.0) S_4) (* 2.0 C)) 0.0) (not (<= 0.0 (+ L_1 (* (- 1.0) A_1) C S_0))))))
 (let (($x10801 (<= 0.0 (+ L_1 (* (- 1.0) A_1) C S_0))))
 (let (($x5658 (or (<= (+ ?x277 A_1 C (* (- 1.0) S_3)) 0.0) (<= (+ (* 2.0 C) (* (- 1.0) S_3) S_0) 0.0))))
 (let (($x17820 (or (<= 0.0 (+ ?x277 A_1 (* (- 1.0) A_4) ?x1126 L_3 ?x268)) $x1139)))
 (let (($x56 (= L_1 L_0)))
 (let (($x17807 (or $x56 (<= (+ L_1 (* (- 1.0) A_1) (* (- 2.0) C) S_3 B) 0.0))))
 (let (($x17950 (or (<= (+ A_2 (* (- 1.0) L_2) ?x431 (* 2.0 C) ?x268) 0.0) $x2204)))
 (let (($x76 (= L_3 L_2)))
 (let (($x1553 (not $x76)))
 (let (($x66 (= L_2 L_1)))
 (let (($x18271 (or $x56 (<= (+ S_5 L_1 (* (- 1.0) A_1) (* (- 4.0) C) B) 0.0))))
 (let (($x18548 (or $x56 (<= (+ L_1 (* (- 1.0) A_1) S_4 (* (- 3.0) C) B) 0.0))))
 (let ((?x352 (* (- 1.0) C)))
 (let ((?x437 (* (- 1.0) A_1)))
 (let ((?x294 (* (- 1.0) L_2)))
 (let (($x610 (<= 0.0 (+ A_2 ?x294 L_1 ?x437 ?x352 ?x268))))
 (let (($x18442 (or (not $x610) (= (+ (* (- 1.0) A_2) L_2 ?x277 A_1 C B) 0.0))))
 (let (($x1995 (not $x56)))
 (let (($x18468 (or $x66 (<= (+ (* (- 1.0) A_2) L_2 A_1 C (* (- 1.0) L_0)) 0.0) $x1995)))
 (let (($x3890 (or $x76 (<= (+ S_5 (* (- 1.0) A_3) (* (- 2.0) C) L_3 B) 0.0))))
 (let (($x531 (<= 0.0 (+ L_1 ?x437 A_3 (* (- 1.0) L_3) (* (- 2.0) C) ?x268))))
 (let (($x18183 (or (not $x531) (= (+ ?x277 A_1 (* (- 1.0) A_3) (* 2.0 C) L_3 B) 0.0))))
 (let ((?x1065 (* 2.0 C)))
 (let ((?x442 (* (- 1.0) A_3)))
 (let ((?x1304 (+ ?x277 A_1 ?x442 ?x1065 L_3)))
 (let (($x10580 (<= 0.0 ?x1304)))
 (let ((?x1155 (* (- 3.0) C)))
 (let ((?x311 (* (- 1.0) L_3)))
 (let ((?x1316 (* (- 1.0) A_0)))
 (let (($x18146 (or $x66 (<= (+ (* (- 1.0) A_2) L_2 S_4 (* (- 2.0) C) B) 0.0))))
 (let (($x605 (or $x66 $x610 (<= (+ (* (- 1.0) A_2) L_2 ?x1065 S_0 B) 0.0))))
 (let (($x128 (>= S_1 S_0)))
 (let (($x131 (>= S_2 S_1)))
 (let (($x134 (>= S_3 S_2)))
 (let (($x137 (>= S_4 S_3)))
 (let (($x142 (>= A_1 A_0)))
 (let (($x144 (>= A_3 A_2)))
 (let (($x145 (>= A_4 A_3)))
 (let (($x146 (>= A_5 A_4)))
 (and (<= (+ A_2 ?x294) S_5) (<= (+ A_1 ?x277) S_4) $x146 $x145 $x144 $x142 $x137 $x134 $x131 $x128 (not (<= (+ A_2 ?x294) S_4)) (or (not (<= 0.0 (+ ?x277 L_0))) $x56) (or (not (<= 0.0 (+ L_2 ?x311))) $x76) (or $x56 (<= (+ L_1 ?x437 S_1 B) 0.0)) (or $x76 (<= (+ ?x442 L_3 S_3 B) 0.0)) (<= (+ (* (- 1.0) S_4) A_3 ?x311 ?x268) 0.0) (or $x76 (<= (+ ?x442 L_3 C S_2 B) 0.0)) (<= (+ ?x431 A_3 ?x311 C ?x268) 0.0) (or $x66 (not (<= 0.0 (+ ?x294 L_1)))) (or $x66 (<= (+ (* (- 1.0) A_2) L_2 C S_1 B) 0.0)) (or $x66 (<= (+ (* (- 1.0) A_2) L_2 S_2 B) 0.0)) (or $x66 (<= (+ (* (- 1.0) A_2) L_2 ?x352 S_3 B) 0.0)) $x605 (<= (+ A_2 ?x294 ?x1316 (* (- 2.0) C) ?x268 L_0) 0.0) (<= (+ A_2 ?x294 ?x352 (* (- 1.0) S_2) ?x268) 0.0) (<= (+ A_2 ?x294 (* (- 1.0) S_3) ?x268) 0.0) (or $x56 $x66 (= (+ (* (- 1.0) A_2) L_2 ?x277 A_1 C) 0.0)) (or $x66 $x76 (= (+ A_2 ?x294 ?x442 C L_3) 0.0)) (<= (+ ?x277 A_1 (* (- 1.0) S_2) ?x268) 0.0) (<= (+ ?x277 A_1 C (* (- 1.0) S_3) ?x268) 0.0) (<= (+ A_3 ?x311 (* (- 2.0) C) (* (- 1.0) S_2) ?x268) 0.0) (<= (+ ?x277 A_1 ?x1316 ?x352 ?x268 L_0) 0.0) (<= (+ A_2 ?x294 ?x1155 (* (- 1.0) S_0) ?x268) 0.0) (<= (+ A_2 ?x294 (* (- 2.0) C) (* (- 1.0) S_1) ?x268) 0.0) (or $x66 (<= (+ (* (- 1.0) A_2) L_2 S_5 ?x1155 B) 0.0)) $x18146 (<= (+ A_2 ?x294 (* (- 1.0) S_4) C ?x268) 0.0) (or $x56 (<= 0.0 (+ (* (- 1.0) A_2) L_2 ?x277 A_1 C))) (or $x76 (<= (+ A_2 ?x277 ?x442 L_3 C) 0.0) (not $x66)) (<= (+ A_3 ?x311 (* (- 4.0) C) (* (- 1.0) S_0) ?x268) 0.0) (or $x76 (<= (+ ?x442 L_3 ?x1065 S_1 B) 0.0)) (<= (+ A_3 ?x311 ?x352 (* (- 1.0) S_3) ?x268) 0.0) (or $x76 (<= (+ S_4 ?x442 L_3 ?x352 B) 0.0)) (<= (+ A_3 ?x311 ?x1155 (* (- 1.0) S_1) ?x268) 0.0) (<= (+ A_3 ?x1316 ?x311 ?x1155 ?x268 L_0) 0.0) (or $x76 $x531 (<= (+ ?x442 L_3 ?x1126 S_0 B) 0.0)) (or $x56 (<= (+ L_1 ?x437 ?x352 S_2 B) 0.0)) (<= (+ ?x277 A_1 ?x352 (* (- 1.0) S_1) ?x268) 0.0) (<= (+ ?x277 A_1 (* (- 2.0) C) (* (- 1.0) S_0) ?x268) 0.0) (or $x76 (= ?x1304 0.0) (not $x10580)) (or $x56 (<= (+ L_1 ?x437 C S_0 B) 0.0)) (or $x56 $x10580) $x18183 $x3890 (<= (+ S_5 (* (- 1.0) A_5) L_3) 0.0) $x18468 $x18442 $x18548 $x18271 (or $x66 $x1553 (<= 0.0 (+ A_2 ?x442 C))) $x17950 $x17807 $x17820 (<= (+ ?x277 A_1 (* (- 1.0) S_4) ?x1065 ?x268) 0.0) (<= (+ L_1 ?x437 (* (- 2.0) C) S_3) 0.0) (<= (+ L_1 ?x437 S_4 ?x1155) 0.0) (<= (+ S_5 L_1 ?x437 (* (- 4.0) C)) 0.0) (<= (+ S_5 (* (- 1.0) A_4) L_3 ?x352) 0.0) (<= (+ ?x1155 S_3 (* (- 1.0) S_1)) 0.0) (<= (+ ?x1316 ?x1155 S_3 L_0) 0.0) $x5658 (or (<= (+ (* (- 1.0) S_4) ?x1126 S_0) 0.0) $x10801) $x18097 (or $x1139 $x2204) (<= (+ ?x1316 (* (- 2.0) C) S_2 L_0) 0.0) (<= (+ ?x1155 S_2 (* (- 1.0) S_0)) 0.0) (<= (+ S_4 ?x1316 (* (- 4.0) C) L_0) 0.0) $x18528 (or $x2204 (<= (+ ?x431 C S_3) 0.0)) (<= (+ S_4 (* (- 2.0) C) (* (- 1.0) S_3)) 0.0) (<= (+ (* (- 2.0) C) S_1 (* (- 1.0) S_0)) 0.0) (<= (+ (* (- 1.0) S_4) C S_2) 0.0) (<= (+ S_5 (* (- 6.0) C) (* (- 1.0) S_0)) 0.0) (or $x2204 (<= (+ ?x431 ?x1065 S_2) 0.0)) (<= (+ S_4 (* (- 4.0) C) (* (- 1.0) S_1)) 0.0) (<= (+ (* (- 4.0) C) S_3 (* (- 1.0) S_0)) 0.0) (<= (+ S_4 (* (- 5.0) C) (* (- 1.0) S_0)) 0.0) (<= (+ ?x1316 ?x352 S_1 L_0) 0.0) (<= (+ (* (- 2.0) C) S_3 (* (- 1.0) S_2)) 0.0) (<= (+ S_5 (* (- 4.0) C) (* (- 1.0) S_2)) 0.0) (or $x2204 (<= (+ ?x431 ?x1126 S_1) 0.0)) (<= (+ (* (- 1.0) S_4) ?x1065 S_1) 0.0) (<= (+ S_4 ?x1155 (* (- 1.0) S_2)) 0.0) $x9503 (<= (+ S_5 (* (- 5.0) C) (* (- 1.0) S_1)) 0.0) (<= (+ S_5 ?x1155 (* (- 1.0) S_3)) 0.0) (<= (+ S_5 ?x1316 (* (- 5.0) C) L_0) 0.0) $x1022 $x39 (<= (+ ?x1316 S_0 L_0) 0.0) (<= (+ L_1 ?x437 S_1) 0.0) (<= (+ L_1 ?x437 ?x352 S_2) 0.0) (<= (+ C (* (- 1.0) S_3) S_1) 0.0) (<= (+ (* (- 2.0) C) S_2 (* (- 1.0) S_1)) 0.0) (<= (+ S_5 (* (- 1.0) S_4) (* (- 2.0) C)) 0.0)))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
