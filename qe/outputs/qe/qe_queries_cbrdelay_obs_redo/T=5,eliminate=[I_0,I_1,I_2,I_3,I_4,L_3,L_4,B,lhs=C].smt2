; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_2 () Real)
(declare-fun C () Real)
(declare-fun L_1 () Real)
(declare-fun A_1 () Real)
(declare-fun S_4 () Real)
(declare-fun L_2 () Real)
(declare-fun A_2 () Real)
(declare-fun S_0 () Real)
(declare-fun S_3 () Real)
(declare-fun S_1 () Real)
(declare-fun L_0 () Real)
(declare-fun A_0 () Real)
(declare-fun A_3 () Real)
(declare-fun A_4 () Real)
(assert
 (let (($x34 (>= L_0 0.0)))
 (let (($x825 (>= C 5.0)))
 (let (($x6075 (<= 0.0 (+ (* (- 1.0) A_1) C S_0 L_1))))
 (let (($x6076 (not $x6075)))
 (let (($x5842 (<= 0.0 (+ (* (- 1.0) A_2) L_2 S_4 (* (- 1.0) C)))))
 (let (($x1803 (<= (+ (* (- 1.0) S_4) A_1 (* (- 1.0) L_1) (* 2.0 C)) 0.0)))
 (let (($x6307 (or (<= (+ (* (- 1.0) S_4) (* 3.0 C) S_0) 0.0) $x5842 $x6075)))
 (let (($x3375 (<= (+ A_2 (* (- 1.0) L_2) (* (- 1.0) S_3)) 0.0)))
 (let (($x1789 (<= (+ A_1 (* (- 1.0) L_1) C (* (- 1.0) S_3)) 0.0)))
 (let (($x6302 (or $x1789 $x3375 (not (<= 0.0 (+ (* (- 1.0) A_2) L_2 (* 2.0 C) S_0))))))
 (let ((?x893 (* 2.0 C)))
 (let ((?x369 (* (- 1.0) A_2)))
 (let ((?x2296 (+ ?x369 L_2 ?x893 S_0)))
 (let (($x5979 (<= 0.0 ?x2296)))
 (let (($x61 (= L_2 L_1)))
 (let (($x8836 (or $x61 (<= (+ ?x369 L_2 A_1 (* (- 1.0) L_1) C) (- 5.0)) $x6076)))
 (let (($x51 (= L_1 L_0)))
 (let (($x8886 (or $x51 (not (<= 0.0 (+ ?x369 L_2 S_4 (* (- 1.0) A_1) S_0 L_1))))))
 (let (($x6023 (<= 0.0 (+ ?x369 L_2 S_4 (* (- 1.0) C) (* (- 1.0) A_1) S_1 L_1))))
 (let (($x6060 (or $x51 (<= (+ (* (- 1.0) A_1) (* (- 1.0) C) S_2 L_1) (- 5.0)))))
 (let (($x6035 (or $x51 (<= (+ (* (- 2.0) C) (* (- 1.0) A_1) S_3 L_1) (- 5.0)))))
 (let ((?x2073 (+ ?x369 L_2 C S_1)))
 (let (($x5973 (<= 0.0 ?x2073)))
 (let (($x2515 (or (<= (+ A_1 (* (- 1.0) L_1) (* (- 1.0) S_2)) 0.0) (<= (+ C (* (- 1.0) S_2) S_0) 0.0))))
 (let (($x1067 (= (+ ?x369 L_2 A_1 C (* (- 1.0) L_1)) 0.0)))
 (let (($x8850 (or $x61 $x1067 (not (<= 0.0 (+ ?x369 L_2 A_1 (* (- 1.0) L_1) C))))))
 (let (($x108 (>= S_1 S_0)))
 (let (($x111 (>= S_2 S_1)))
 (let (($x114 (>= S_3 S_2)))
 (let (($x117 (>= S_4 S_3)))
 (let (($x119 (>= A_1 A_0)))
 (let (($x120 (>= A_2 A_1)))
 (let (($x122 (>= A_4 A_3)))
 (and (<= (+ A_2 (* (- 1.0) L_2)) S_4) $x122 $x120 $x119 $x117 $x114 $x111 $x108 (or $x51 (not (<= 0.0 (+ (* (- 1.0) L_1) L_0)))) (or $x51 $x61 $x1067) (or (not $x61) $x51 (<= 0.0 (+ ?x369 A_1 C))) (or (not (<= 0.0 (+ (* (- 1.0) L_2) L_1))) $x61) (or $x61 (not $x5842)) (or $x61 (<= ?x2073 (- 5.0))) $x8850 (<= (+ (* (- 1.0) C) (* (- 1.0) A_0) S_1 L_0) 0.0) $x2515 (or $x51 (<= (+ (* (- 1.0) A_1) S_1 L_1) (- 5.0))) (or $x5973 (<= (+ C (* (- 1.0) S_3) S_1) 0.0)) (or $x51 (<= (+ C (* (- 1.0) A_1) S_0 L_1) (- 5.0))) (or $x51 (not $x1803)) (or $x61 (<= (+ ?x369 L_2 (* (- 1.0) C) S_3) (- 5.0))) $x6035 (<= (+ (* (- 1.0) A_0) (* (- 2.0) C) S_2 L_0) 0.0) $x6060 (<= (+ ?x369 L_2 S_2) 0.0) (or $x3375 (not $x5973)) (<= (+ S_4 (* (- 4.0) C) (* (- 1.0) A_0) L_0) 0.0) (or $x5842 (<= (+ (* (- 1.0) S_4) ?x893 S_1) 0.0)) (or $x51 (not $x6023)) $x8886 (or $x61 (<= (+ ?x369 L_2 S_2) (- 5.0))) (or $x61 (<= ?x2296 (- 5.0)) $x6075) $x8836 (<= (+ S_4 (* (- 5.0) C) (* (- 1.0) S_0)) 0.0) (<= (+ S_4 (* (- 1.0) A_1) L_1 (* (- 3.0) C)) 0.0) (<= (+ (* (- 3.0) C) S_2 (* (- 1.0) S_0)) 0.0) (<= (+ (* (- 3.0) C) S_3 (* (- 1.0) S_1)) 0.0) (<= (+ S_4 (* (- 4.0) C) (* (- 1.0) S_1)) 0.0) (or $x1789 (<= (+ ?x893 (* (- 1.0) S_3) S_0) 0.0) $x5979) $x6302 $x6307 (<= (+ (* (- 2.0) C) S_2 (* (- 1.0) S_1)) 0.0) (or $x1803 $x5842 $x6076) $x825 $x34 (not (>= (+ L_2 S_4 (* (- 1.0) A_3)) 0.0)) (<= (+ (* (- 1.0) A_0) S_0 L_0) 0.0) (<= (+ S_4 (* (- 2.0) C) (* (- 1.0) S_3)) 0.0) (<= (+ (* (- 1.0) A_1) L_1 S_1) 0.0) (<= (+ (* (- 2.0) C) S_3 (* (- 1.0) S_2)) 0.0) (<= (+ (* (- 3.0) C) (* (- 1.0) A_0) S_3 L_0) 0.0) (<= (+ (* (- 1.0) A_1) L_1 (* (- 2.0) C) S_3) 0.0) (<= (+ ?x369 L_2 (* (- 1.0) C) S_3) 0.0) (<= (+ (* (- 1.0) S_4) C S_2) 0.0) (<= (+ S_4 (* (- 3.0) C) (* (- 1.0) S_2)) 0.0) (<= (+ (* (- 2.0) C) S_1 (* (- 1.0) S_0)) 0.0) (<= (+ (* (- 4.0) C) S_3 (* (- 1.0) S_0)) 0.0) (<= (+ ?x369 L_2 S_4 (* (- 2.0) C)) 0.0) (<= (+ (* (- 1.0) A_1) L_1 (* (- 1.0) C) S_2) 0.0))))))))))))))))))))))))))))))))))))
(check-sat)
