; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_2 () Real)
(declare-fun S_3 () Real)
(declare-fun C () Real)
(declare-fun S_4 () Real)
(declare-fun S_1 () Real)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(declare-fun S_0 () Real)
(declare-fun B () Real)
(declare-fun A_4 () Real)
(declare-fun A_2 () Real)
(declare-fun A_1 () Real)
(declare-fun A_3 () Real)
(declare-fun L_1 () Real)
(assert
 (let (($x34 (>= L_0 0.0)))
 (let (($x481 (>= C 5.0)))
 (let (($x748 (>= B 5.0)))
 (let ((?x435 (* (- 1.0) S_2)))
 (let ((?x518 (* (- 1.0) B)))
 (let ((?x393 (* (- 1.0) A_4)))
 (let ((?x455 (* (- 1.0) C)))
 (let (($x13542 (<= (+ A_2 (* (- 1.0) A_1) ?x455) 0.0)))
 (let (($x13724 (not $x13542)))
 (let (($x13717 (<= (+ (* 2.0 C) (* (- 1.0) S_4) S_1) 0.0)))
 (let (($x13522 (<= A_3 (+ A_2 C))))
 (let (($x13676 (not $x13522)))
 (let ((?x501 (* (- 1.0) L_1)))
 (let ((?x836 (+ A_3 ?x501)))
 (let (($x691 (>= S_4 ?x836)))
 (let (($x14939 (<= (+ (* (- 3.0) C) A_2 ?x393 ?x518 S_4 (* (- 1.0) S_0)) 0.0)))
 (let (($x14131 (<= (+ (* (- 1.0) L_0) (* 2.0 C) A_1 (* (- 1.0) S_4)) 0.0)))
 (let (($x13852 (<= 0.0 (+ L_0 C (* (- 1.0) A_1) S_0))))
 (let (($x13915 (not $x13852)))
 (let (($x13733 (<= (+ A_3 (* (- 1.0) A_2) B) C)))
 (let (($x2572 (>= S_4 (+ A_3 (* (- 1.0) L_0)))))
 (let (($x23956 (or $x691 $x13717 $x13733 (not (<= 0.0 (+ ?x455 (* (- 1.0) A_1) A_2))))))
 (let (($x14909 (<= (+ (* (- 2.0) C) A_2 ?x393 ?x518 S_4 (* (- 1.0) S_1)) 0.0)))
 (let (($x14887 (<= (+ L_0 (* (- 2.0) C) A_2 ?x393 ?x518 (* (- 1.0) A_0) S_4) 0.0)))
 (let (($x14295 (<= (+ (* 3.0 C) (* (- 1.0) S_4) S_0) 0.0)))
 (let ((?x413 (* (- 1.0) S_4)))
 (let ((?x401 (* (- 1.0) A_2)))
 (let ((?x562 (* (- 1.0) L_0)))
 (let (($x13772 (not $x13733)))
 (let (($x24054 (or $x2572 $x13772 $x13915 (<= (+ ?x562 C ?x401 B A_3 A_1 ?x413) 0.0))))
 (let (($x23451 (or $x691 $x13772 $x13852 (<= (+ (* 2.0 C) ?x401 B A_3 ?x413 S_0) 0.0))))
 (let (($x15051 (or $x691 (<= (+ ?x401 B A_3 ?x413 S_2) 0.0) (<= (+ C ?x413 S_2) 0.0))))
 (let (($x14863 (<= (+ (* (- 2.0) C) A_2 ?x518 (* (- 1.0) A_3) S_4 ?x435) 0.0)))
 (let (($x14525 (<= (+ ?x455 A_2 ?x518 (* (- 1.0) A_3) S_4 (* (- 1.0) S_3)) 0.0)))
 (let (($x14668 (<= (+ (* (- 3.0) C) ?x518 ?x393 A_3 S_4 (* (- 1.0) S_1)) 0.0)))
 (let (($x14748 (<= (+ L_0 (* (- 2.0) C) ?x518 ?x393 A_3 (* (- 1.0) A_1) S_4) 0.0)))
 (let (($x14673 (<= (+ L_0 (* (- 3.0) C) ?x518 ?x393 A_3 (* (- 1.0) A_0) S_4) 0.0)))
 (let (($x14683 (<= (+ (* (- 4.0) C) ?x518 ?x393 A_3 S_4 (* (- 1.0) S_0)) 0.0)))
 (let ((?x405 (* (- 1.0) A_1)))
 (let ((?x397 (* (- 1.0) A_3)))
 (let ((?x761 (* (- 2.0) C)))
 (let (($x14533 (<= (+ (* (- 3.0) C) A_2 ?x518 ?x397 S_4 (* (- 1.0) S_1)) 0.0)))
 (let (($x14482 (<= (+ (* (- 4.0) C) A_2 ?x518 ?x397 S_4 (* (- 1.0) S_0)) 0.0)))
 (let (($x14497 (<= (+ L_0 (* (- 3.0) C) A_2 ?x518 ?x397 (* (- 1.0) A_0) S_4) 0.0)))
 (let (($x14487 (<= (+ (* (- 3.0) C) A_2 ?x518 ?x397 S_3 (* (- 1.0) S_0)) 0.0)))
 (let ((?x785 (+ A_2 ?x501)))
 (let (($x813 (>= S_3 ?x785)))
 (let (($x23407 (or $x813 $x13852 (<= (+ (* 2.0 C) (* (- 1.0) S_3) S_0) 0.0))))
 (let (($x23420 (or (>= S_3 (+ A_2 ?x562)) (<= (+ ?x562 C A_1 (* (- 1.0) S_3)) 0.0) $x13915)))
 (let (($x51 (= L_1 L_0)))
 (let ((?x1129 (* 2.0 C)))
 (let ((?x13012 (+ A_1 ?x501 ?x518 ?x1129)))
 (let (($x13482 (>= S_4 ?x13012)))
 (let ((?x12455 (+ A_2 ?x501 C)))
 (let (($x12083 (>= S_4 ?x12455)))
 (let (($x358 (<= A_2 (+ A_1 ?x518 C))))
 (let (($x312 (not $x358)))
 (let (($x108 (>= S_1 S_0)))
 (let (($x111 (>= S_2 S_1)))
 (let (($x114 (>= S_3 S_2)))
 (let (($x117 (>= S_4 S_3)))
 (let (($x119 (>= A_1 A_0)))
 (let (($x120 (>= A_2 A_1)))
 (let (($x121 (>= A_3 A_2)))
 (let (($x122 (>= A_4 A_3)))
 (and $x122 $x121 $x120 $x119 $x117 $x114 $x111 $x108 (<= (+ ?x518 ?x501 A_1 ?x455) (+ A_0 ?x562)) (>= S_0 (+ ?x518 ?x501 A_1 ?x761)) (>= S_1 (+ ?x518 ?x501 A_1 ?x455)) (or $x51 (not (<= L_1 L_0))) (or $x51 (<= S_1 (+ A_1 ?x501 ?x518))) (or $x51 (<= S_0 (+ ?x518 ?x501 A_1 ?x455))) (<= S_3 ?x836) (>= S_2 (+ A_1 ?x501 ?x518)) (or $x51 (<= S_2 (+ A_1 ?x501 ?x518 C))) (or $x358 (>= S_3 (+ A_1 ?x501 ?x518 C))) (or $x312 $x813) (or $x312 $x691 $x12083) (<= S_4 (+ A_2 ?x501 ?x1129)) (or $x813 (<= (+ C (* (- 1.0) S_3) S_1) 0.0)) (<= (+ L_0 ?x405 S_1) 0.0) (or (<= (+ ?x562 A_1 ?x435) 0.0) (<= (+ C ?x435 S_0) 0.0)) (<= S_4 (+ A_3 ?x501 C)) (<= S_4 (+ A_4 ?x397 A_2 ?x501 C B)) (<= S_4 (+ A_4 ?x501)) (or $x358 $x13482 $x13522) (or $x691 $x13482 $x13676 $x13724) (or $x13482 $x13542 (>= S_4 (+ A_3 ?x401 A_1 ?x501 C))) (or $x51 (<= S_3 ?x13012)) (or $x51 (<= S_4 (+ A_1 ?x501 ?x518 (* 3.0 C)))) (or $x51 (<= S_4 (+ A_4 ?x397 A_1 ?x501 ?x1129))) (or $x51 (<= S_3 (+ A_3 ?x401 A_1 ?x501 C))) (or $x51 (<= S_4 (+ A_4 ?x401 A_1 ?x501 C))) (or $x51 (<= S_4 (+ A_3 ?x401 A_1 ?x501 ?x1129))) $x23420 $x23407 (<= S_2 ?x785) (<= (+ L_0 ?x761 (* (- 1.0) A_0) S_2) 0.0) (<= (+ (* (- 3.0) C) S_2 (* (- 1.0) S_0)) 0.0) (<= S_3 ?x12455) (<= (+ L_0 ?x455 ?x405 S_2) 0.0) (<= (+ L_0 ?x761 ?x405 S_3) 0.0) (<= (+ ?x761 S_1 (* (- 1.0) S_0)) 0.0) (<= (+ (* (- 4.0) C) S_3 (* (- 1.0) S_0)) 0.0) (<= (+ (* (- 3.0) C) S_3 (* (- 1.0) S_1)) 0.0) (<= (+ ?x761 S_2 (* (- 1.0) S_1)) 0.0) (<= (+ ?x455 A_2 ?x518 ?x397 S_3 ?x435) 0.0) (<= (+ L_0 ?x455 A_2 ?x518 ?x397 ?x405 S_3) 0.0) (or $x691 $x13772 (<= (+ C ?x401 B A_3 ?x413 S_1) 0.0)) (or $x12083 $x13522 $x13717) (<= (+ L_0 (* (- 3.0) C) ?x405 S_4) 0.0) (or $x12083 $x13522 $x13852 $x14295) (or $x13522 $x13915 $x14131 (>= S_4 (+ A_2 ?x562 C))) (<= (+ L_0 (* (- 4.0) C) (* (- 1.0) A_0) S_4) 0.0) (<= (+ ?x761 A_2 ?x518 ?x397 S_3 (* (- 1.0) S_1)) 0.0) $x14487 (<= (+ L_0 ?x761 A_2 ?x518 ?x397 (* (- 1.0) A_0) S_3) 0.0) $x14497 $x14482 $x14533 (<= (+ L_0 ?x761 A_2 ?x518 ?x397 ?x405 S_4) 0.0) (<= (+ (* (- 5.0) C) S_4 (* (- 1.0) S_0)) 0.0) (<= (+ L_0 (* (- 3.0) C) (* (- 1.0) A_0) S_3) 0.0) (<= (+ ?x455 ?x518 ?x393 A_3 S_4 (* (- 1.0) S_3)) 0.0) $x14683 $x14673 (<= (+ ?x761 ?x518 ?x393 A_3 S_4 ?x435) 0.0) $x14748 $x14668 (<= (+ (* (- 4.0) C) S_4 (* (- 1.0) S_1)) 0.0) $x14525 (<= (+ A_2 ?x393 ?x518 S_4 (* (- 1.0) S_3)) 0.0) $x14863 $x15051 $x23451 $x24054 (or $x691 $x13676 $x13733 $x13852 $x14295) $x14887 $x14909 $x23956 (or $x2572 $x13676 $x13733 $x13915 $x14131) $x14939 (or $x691 $x13676 $x13717 $x13724) (<= (+ L_0 ?x455 A_2 ?x393 ?x518 ?x405 S_4) 0.0) (<= (+ ?x455 A_2 ?x393 ?x518 S_4 ?x435) 0.0) $x748 $x481 $x34 (<= (+ L_0 (* (- 1.0) A_0) S_0) 0.0) (<= (+ L_0 ?x455 (* (- 1.0) A_0) S_1) 0.0) (<= (+ ?x761 S_4 (* (- 1.0) S_3)) 0.0) (<= (+ (* (- 3.0) C) S_4 ?x435) 0.0) (<= (+ ?x761 S_3 ?x435) 0.0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
