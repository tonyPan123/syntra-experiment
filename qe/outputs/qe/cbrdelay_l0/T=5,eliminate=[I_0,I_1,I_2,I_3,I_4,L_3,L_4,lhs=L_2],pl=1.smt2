; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_3 () Real)
(declare-fun S_4 () Real)
(declare-fun C () Real)
(declare-fun S_0 () Real)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(declare-fun L0 () Real)
(declare-fun S_1 () Real)
(declare-fun L_1 () Real)
(declare-fun A_3 () Real)
(declare-fun L_2 () Real)
(declare-fun S_2 () Real)
(declare-fun A_2 () Real)
(declare-fun B () Real)
(declare-fun A_1 () Real)
(declare-fun A_4 () Real)
(assert
 (let (($x37 (>= L0 0.0)))
 (let (($x777 (>= C 5.0)))
 (let (($x7122 (<= (+ (* 2.0 C) (* (- 1.0) S_4) S_1) 0.0)))
 (let (($x957 (>= S_4 (+ A_3 (* (- 1.0) L_1)))))
 (let (($x7130 (<= (+ (* 3.0 C) (* (- 1.0) S_4) S_0) 0.0)))
 (let (($x5556 (>= S_4 (+ A_3 (* (- 1.0) L_0)))))
 (let (($x1894 (not (= L_0 L_2))))
 (let (($x7189 (<= (+ C (* (- 1.0) S_4) S_2) 0.0)))
 (let (($x6440 (<= (+ A_3 (* (- 1.0) A_2) (* (- 1.0) C)) 0.0)))
 (let (($x1310 (not (= L_0 L_1))))
 (let (($x1205 (= L_2 L_0)))
 (let (($x10065 (or $x1205 $x1310 (<= (+ A_1 (* (- 1.0) L_0) L_2 (* (- 1.0) A_2) C) 0.0))))
 (let (($x64 (= L_2 L_1)))
 (let (($x9961 (or $x64 (<= S_1 (+ (* (- 1.0) B) (* (- 1.0) L_2) A_2 (* (- 1.0) C))))))
 (let (($x10119 (or $x1205 $x1310 (<= S_0 (+ (* (- 1.0) B) (* (- 1.0) L_2) A_2 (* (- 2.0) C))))))
 (let ((?x219 (* (- 1.0) L_0)))
 (let ((?x785 (+ A_0 ?x219)))
 (let ((?x696 (* (- 2.0) C)))
 (let ((?x262 (* (- 1.0) L_2)))
 (let ((?x236 (* (- 1.0) B)))
 (let ((?x6286 (+ ?x236 ?x262 A_2 ?x696)))
 (let (($x54 (= L_1 L_0)))
 (let (($x1676 (not (= L_1 L_2))))
 (let (($x6925 (or $x54 $x1676 (<= (+ A_2 (* (- 1.0) A_1) (* (- 1.0) C)) 0.0))))
 (let (($x36 (>= L_0 L0)))
 (let (($x111 (>= S_1 S_0)))
 (let (($x114 (>= S_2 S_1)))
 (let (($x117 (>= S_3 S_2)))
 (let (($x123 (>= A_2 A_1)))
 (let (($x124 (>= A_3 A_2)))
 (let (($x125 (>= A_4 A_3)))
 (and (<= (+ A_1 (* (- 1.0) L_1)) S_4) (<= ?x785 S_3) $x125 $x124 $x123 $x117 $x114 $x111 $x36 (>= S_2 (+ A_1 (* (- 1.0) L_1) ?x236)) (or $x64 (<= S_2 (+ A_2 ?x262 ?x236))) (<= (+ ?x236 (* (- 1.0) L_1) A_1 (* (- 1.0) C)) ?x785) (>= S_1 (+ ?x236 (* (- 1.0) L_1) A_1 (* (- 1.0) C))) (or $x54 (<= S_1 (+ A_1 (* (- 1.0) L_1) ?x236))) (or $x54 $x64 (= (+ A_2 ?x262) (+ A_1 (* (- 1.0) L_1) C))) (or $x64 (<= S_4 (+ A_2 ?x262 ?x236 (* 2.0 C)))) (or $x64 (not (<= L_2 L_1))) (>= S_3 (+ A_2 ?x262 ?x236)) (>= S_4 (+ A_2 ?x262 ?x236 C)) (or $x54 (not (<= L_1 L_0))) (>= S_0 (+ ?x236 (* (- 1.0) L_1) A_1 ?x696)) (not (<= (+ A_1 (* (- 1.0) L_1)) S_3)) (or $x64 (<= S_3 (+ A_2 ?x262 ?x236 C))) (or $x54 (<= S_0 (+ ?x236 (* (- 1.0) L_1) A_1 (* (- 1.0) C)))) $x6925 (or $x54 (<= S_4 (+ A_1 (* (- 1.0) L_1) ?x236 (* 3.0 C)))) (or $x54 (<= S_2 (+ A_1 (* (- 1.0) L_1) ?x236 C))) (or $x54 (<= S_3 (+ A_1 (* (- 1.0) L_1) ?x236 (* 2.0 C)))) (>= S_3 (+ A_1 (* (- 1.0) L_1) ?x236 C)) (or $x6440 (>= S_4 (+ A_1 (* (- 1.0) L_1) ?x236 (* 2.0 C)))) (<= S_4 (+ A_4 (* (- 1.0) L_1))) (or $x957 (>= S_4 (+ A_1 (* (- 1.0) L_1) ?x236 (* 2.0 C)))) (<= S_4 (+ A_3 (* (- 1.0) L_1) C)) (<= S_4 (+ A_4 ?x262)) (<= ?x6286 ?x785) (>= S_1 ?x6286) $x10119 (>= S_2 (+ ?x236 ?x262 A_2 (* (- 1.0) C))) $x9961 $x10065 (>= S_0 (+ ?x236 ?x262 A_2 (* (- 3.0) C))) (<= (+ C (* (- 1.0) S_2) S_0) 0.0) (<= (+ (* 2.0 C) (* (- 1.0) S_3) S_0) 0.0) (<= (+ ?x696 S_3 (* (- 1.0) S_2)) 0.0) (<= (+ (* (- 3.0) C) S_3 (* (- 1.0) S_1)) 0.0) (<= (+ L_0 ?x696 (* (- 1.0) A_0) S_2) 0.0) (<= (+ ?x696 S_1 (* (- 1.0) S_0)) 0.0) (<= (+ (* (- 3.0) C) S_2 (* (- 1.0) S_0)) 0.0) (<= (+ (* (- 4.0) C) S_3 (* (- 1.0) S_0)) 0.0) (<= (+ ?x696 S_2 (* (- 1.0) S_1)) 0.0) (<= (+ C (* (- 1.0) S_3) S_1) 0.0) (<= (+ L_0 (* (- 1.0) C) (* (- 1.0) A_0) S_1) 0.0) (or $x6440 $x7122) (or $x6440 $x7189) (or $x6440 $x7130) (<= (+ L_0 (* (- 4.0) C) S_4 (* (- 1.0) A_0)) 0.0) (<= (+ (* (- 5.0) C) S_4 (* (- 1.0) S_0)) 0.0) (<= (+ (* (- 4.0) C) S_4 (* (- 1.0) S_1)) 0.0) (<= (+ (* (- 3.0) C) S_4 (* (- 1.0) S_2)) 0.0) (or $x1894 $x5556 $x7189) (or $x1894 $x5556 $x7130) (<= (+ L_0 (* (- 3.0) C) (* (- 1.0) A_0) S_3) 0.0) (or $x957 $x7122) $x777 $x37 (<= (+ L_0 (* (- 1.0) A_0) S_0) 0.0) (<= (+ ?x696 S_4 (* (- 1.0) S_3)) 0.0))))))))))))))))))))))))))))))))))
(check-sat)
