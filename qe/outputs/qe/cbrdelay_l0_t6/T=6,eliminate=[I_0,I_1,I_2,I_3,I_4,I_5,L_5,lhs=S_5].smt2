; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_1 () Real)
(declare-fun S_0 () Real)
(declare-fun C () Real)
(declare-fun L_0 () Real)
(declare-fun A_0 () Real)
(declare-fun L0 () Real)
(declare-fun B () Real)
(declare-fun S_3 () Real)
(declare-fun A_2 () Real)
(declare-fun A_3 () Real)
(declare-fun L_3 () Real)
(declare-fun L_1 () Real)
(declare-fun S_2 () Real)
(declare-fun A_1 () Real)
(declare-fun A_4 () Real)
(declare-fun L_2 () Real)
(declare-fun S_5 () Real)
(declare-fun S_4 () Real)
(declare-fun A_5 () Real)
(assert
 (let (($x42 (>= L0 0.0)))
 (let (($x631 (>= C 5.0)))
 (let (($x841 (>= B 5.0)))
 (let (($x2917 (not (= L_1 L_3))))
 (let ((?x386 (* (- 1.0) L_1)))
 (let ((?x1041 (+ A_2 ?x386)))
 (let (($x2859 (>= S_3 ?x1041)))
 (let (($x11369 (or $x2859 (<= (+ (* (- 1.0) L_0) C A_1 (* (- 1.0) S_3)) 0.0) (<= (+ (* 2.0 C) S_0 (* (- 1.0) S_3)) 0.0))))
 (let (($x1459 (not (= L_2 L_3))))
 (let (($x972 (not (<= L_2 L_1))))
 (let (($x11678 (or $x972 $x1459 (<= (+ (* (- 3.0) C) A_4 (* (- 1.0) A_1)) 0.0))))
 (let (($x7926 (<= (+ (* (- 5.0) C) (* (- 1.0) L_0) (* (- 1.0) S_0) A_4) 0.0)))
 (let (($x971 (not (<= L_1 L_0))))
 (let (($x7904 (<= (+ (* (- 4.0) C) (* (- 1.0) L_0) A_4 (* (- 1.0) S_1)) 0.0)))
 (let (($x11252 (or $x971 $x972 $x1459 (<= (+ (* (- 4.0) C) (* (- 1.0) A_0) A_4) 0.0))))
 (let (($x7909 (<= (+ (* (- 3.0) C) (* (- 1.0) L_0) A_4 (* (- 1.0) S_2)) 0.0)))
 (let (($x7914 (<= (+ (* (- 2.0) C) (* (- 1.0) L_0) A_4 (* (- 1.0) S_3)) 0.0)))
 (let (($x7861 (<= (+ A_1 (* (- 1.0) L_0) L_3 (* (- 1.0) A_3) (* 2.0 C)) 0.0)))
 (let ((?x298 (* (- 1.0) C)))
 (let ((?x361 (* (- 1.0) L_3)))
 (let ((?x619 (* (- 1.0) B)))
 (let ((?x7731 (+ ?x619 ?x361 A_3 ?x298)))
 (let (($x7744 (<= (+ A_2 (* (- 1.0) L_0)) ?x7731)))
 (let (($x79 (= L_3 L_2)))
 (let (($x7781 (<= 0.0 (+ C (* (- 1.0) A_1) L_0 S_0))))
 (let (($x7798 (not $x7781)))
 (let ((?x1275 (* (- 2.0) C)))
 (let ((?x7728 (+ ?x619 ?x361 A_3 ?x1275)))
 (let ((?x679 (* (- 1.0) L_0)))
 (let ((?x1028 (+ A_1 ?x679)))
 (let (($x7801 (<= ?x1028 ?x7728)))
 (let (($x11401 (or (= (+ ?x619 L_0 ?x1275 ?x361 (* (- 1.0) A_1) A_3) 0.0) (not $x7801))))
 (let (($x3073 (= L_3 L_1)))
 (let (($x867 (not (= L_1 L_2))))
 (let (($x7817 (or $x867 $x971 $x3073 (<= (+ A_2 ?x679 L_3 (* (- 1.0) A_3) C) 0.0))))
 (let (($x2672 (= L_3 L_0)))
 (let (($x11258 (or $x2672 (not (<= (+ A_2 (* (- 1.0) A_1) ?x298) 0.0)) $x7744 $x7798)))
 (let (($x11339 (or $x79 $x971 $x7744 (<= S_0 (+ ?x619 ?x361 A_3 (* (- 3.0) C))) $x7781)))
 (let (($x7745 (not $x7744)))
 (let (($x11473 (or (= (+ ?x298 ?x619 L_0 ?x361 (* (- 1.0) A_2) A_3) 0.0) $x7745)))
 (let ((?x573 (* (- 1.0) A_2)))
 (let ((?x7604 (+ A_3 ?x573 ?x298)))
 (let (($x7615 (<= ?x7604 0.0)))
 (let (($x59 (= L_1 L_0)))
 (let (($x7442 (<= A_2 (+ A_1 ?x619 C))))
 (let (($x11666 (or $x59 $x79 $x7442 (= (+ A_3 ?x361) (+ A_1 ?x386 (* 2.0 C))))))
 (let (($x1818 (= L_2 L_0)))
 (let (($x1812 (not (= L_0 L_1))))
 (let (($x7550 (= (+ ?x298 A_2 (* (- 1.0) L_2) ?x619 L_0 (* (- 1.0) A_1)) 0.0)))
 (let ((?x286 (* (- 1.0) L_2)))
 (let ((?x7531 (+ ?x619 ?x286 A_2 ?x298)))
 (let (($x7544 (<= ?x1028 ?x7531)))
 (let (($x69 (= L_2 L_1)))
 (let (($x41 (>= L_0 L0)))
 (let (($x131 (>= S_1 S_0)))
 (let (($x134 (>= S_2 S_1)))
 (let (($x137 (>= S_3 S_2)))
 (let (($x143 (>= S_5 S_4)))
 (let (($x145 (>= A_1 A_0)))
 (let (($x146 (>= A_2 A_1)))
 (let (($x147 (>= A_3 A_2)))
 (let (($x148 (>= A_4 A_3)))
 (and (<= (+ A_4 ?x361) S_4) $x148 $x147 $x146 $x145 $x143 $x137 $x134 $x131 $x41 (>= S_2 (+ A_1 ?x386 ?x619)) (or $x59 (<= S_1 (+ A_1 ?x386 ?x619))) (>= S_3 (+ A_2 ?x286 ?x619)) (>= S_0 (+ ?x619 ?x386 A_1 ?x1275)) (or $x69 $x972) (<= (+ ?x619 ?x386 A_1 ?x298) (+ A_0 ?x679)) (or $x59 $x69 (= (+ A_2 ?x286) (+ A_1 ?x386 C))) (<= S_5 (+ A_5 ?x361)) (<= S_4 (+ A_4 ?x361)) (<= S_4 (+ A_4 ?x286)) (or $x69 (<= S_2 (+ A_2 ?x286 ?x619))) (or $x69 $x79 (= L_3 (+ A_3 ?x573 L_2 ?x298))) (or $x79 (<= A_4 (+ A_3 ?x619 C))) (or $x59 (<= S_2 (+ A_1 ?x386 ?x619 C))) (or $x59 (<= S_0 (+ ?x619 ?x386 A_1 ?x298))) (or $x59 $x971) (<= S_5 (+ A_4 ?x361 C)) (>= S_1 (+ ?x619 ?x386 A_1 ?x298)) (or $x69 (<= (+ A_4 ?x361) (+ A_2 ?x286 ?x619 (* 2.0 C)))) (or $x69 (<= S_3 (+ A_2 ?x286 ?x619 C))) (<= (+ L_0 (* (- 1.0) A_1) S_1) 0.0) (or $x69 (<= S_1 ?x7531)) (or $x69 (<= S_0 (+ ?x619 ?x286 A_2 ?x1275)) $x7544) (<= (+ ?x619 ?x286 A_2 ?x1275) (+ A_0 ?x679)) (>= S_2 ?x7531) (or $x7550 (not $x7544)) (<= A_4 (+ A_3 C)) (or $x59 (<= S_3 (+ A_1 ?x386 ?x619 (* 2.0 C)))) (or $x59 $x972 $x1459 (<= A_4 (+ A_1 ?x619 (* 3.0 C)))) (or $x69 $x1459 $x7615) (or $x1812 $x1818 (<= (+ A_1 ?x679 L_2 ?x573 C) 0.0)) (>= S_1 (+ ?x619 ?x286 A_2 ?x1275)) (>= S_0 (+ ?x619 ?x286 A_2 (* (- 3.0) C))) (or $x79 (<= (+ B L_3 S_3 (* (- 1.0) A_3)) 0.0)) $x11666 (or $x3073 (not $x7442) (= (+ A_3 ?x361 ?x619) (+ A_2 ?x386 C))) (or (>= S_3 (+ A_1 ?x386 ?x619 C)) $x7442) (or $x2859 (not $x7442)) (or $x59 $x867 (<= (+ A_2 (* (- 1.0) A_1) ?x298) 0.0)) (or $x59 $x1459 (<= (+ A_3 (* (- 1.0) A_1) ?x1275) 0.0) $x7615) (<= S_3 (+ A_3 ?x286)) (<= S_2 ?x1041) (>= S_3 ?x7731) (or $x79 (<= S_2 ?x7731)) (<= (+ ?x298 L_0 (* (- 1.0) A_0) S_1) 0.0) $x11473 (or $x79 $x971 $x7744 (<= S_1 ?x7728)) (<= (+ ?x619 ?x361 A_3 (* (- 3.0) C)) (+ A_0 ?x679)) $x11339 (or $x79 (<= (+ A_2 (* (- 1.0) A_1) ?x298) 0.0) $x7798 $x7801) $x11258 (>= S_0 (+ ?x619 ?x361 A_3 (* (- 4.0) C))) $x7817 (>= S_2 ?x7728) (or (<= (+ C S_0 (* (- 1.0) S_2)) 0.0) $x7781) (or (<= (+ A_2 (* (- 1.0) A_1) ?x298) 0.0) $x7745) (<= (+ L_0 ?x298 (* (- 1.0) A_1) S_2) 0.0) $x11401 (or (<= (+ ?x679 (* (- 1.0) S_2) A_1) 0.0) $x7798) (or $x79 (not (<= L_2 L_0)) $x7744 $x7861) (>= S_1 (+ ?x619 ?x361 A_3 (* (- 3.0) C))) (or $x2859 (<= (+ C (* (- 1.0) S_3) S_1) 0.0)) (or $x971 $x972 $x1459 $x7914) (<= (+ (* (- 4.0) C) (* (- 1.0) S_0) S_3) 0.0) (<= S_3 (+ A_2 ?x386 C)) (<= (+ ?x1275 L_0 (* (- 1.0) A_0) S_2) 0.0) (<= (+ (* (- 3.0) C) L_0 (* (- 1.0) A_0) S_3) 0.0) (<= (+ L_0 ?x1275 (* (- 1.0) A_1) S_3) 0.0) (or $x971 $x972 $x1459 $x7909) (or $x1459 (<= A_4 (+ A_2 (* 2.0 C)))) $x11252 (or $x971 $x972 $x1459 $x7904) (or $x971 $x972 $x1459 $x7926) $x11678 $x11369 (<= (+ (* (- 3.0) C) (* (- 1.0) S_0) S_2) 0.0) (<= (+ ?x1275 S_3 (* (- 1.0) S_2)) 0.0) (<= (+ ?x1275 S_2 (* (- 1.0) S_1)) 0.0) (or $x2917 (<= ?x7604 B)) (<= (+ (* (- 3.0) C) S_3 (* (- 1.0) S_1)) 0.0) $x841 $x631 $x42 (<= (+ (* (- 1.0) A_0) L_0 S_0) 0.0) (<= (+ ?x1275 (* (- 1.0) S_0) S_1) 0.0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
