; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_5 () Real)
(declare-fun S_4 () Real)
(declare-fun C () Real)
(declare-fun S_0 () Real)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(declare-fun L0 () Real)
(declare-fun A_1 () Real)
(declare-fun L_3 () Real)
(declare-fun A_4 () Real)
(declare-fun L_1 () Real)
(declare-fun S_1 () Real)
(declare-fun S_3 () Real)
(declare-fun L_2 () Real)
(declare-fun S_2 () Real)
(declare-fun A_3 () Real)
(declare-fun B () Real)
(declare-fun A_2 () Real)
(declare-fun A_5 () Real)
(assert
 (let (($x42 (>= L0 0.0)))
 (let (($x895 (>= C 5.0)))
 (let (($x12547 (<= 0.0 (+ C (* (- 1.0) A_1) L_0 S_0))))
 (let (($x12669 (not $x12547)))
 (let (($x12668 (<= (+ (* (- 1.0) L_0) A_1 (* 3.0 C) (* (- 1.0) S_5)) 0.0)))
 (let (($x8393 (not (= L_0 L_3))))
 (let (($x12460 (<= (+ (* 4.0 C) (* (- 1.0) S_5) S_0) 0.0)))
 (let (($x1834 (>= S_5 (+ A_4 (* (- 1.0) L_1)))))
 (let (($x1748 (not (= L_1 L_3))))
 (let (($x12395 (<= (+ C S_3 (* (- 1.0) S_5)) 0.0)))
 (let (($x1358 (not (= L_1 L_2))))
 (let (($x12415 (<= (+ (* 2.0 C) S_2 (* (- 1.0) S_5)) 0.0)))
 (let (($x4788 (>= S_5 (+ A_4 (* (- 1.0) L_2)))))
 (let ((?x693 (* 2.0 C)))
 (let ((?x642 (* (- 1.0) B)))
 (let ((?x567 (* (- 1.0) L_2)))
 (let ((?x11873 (+ A_2 ?x567 ?x642 ?x693)))
 (let (($x12019 (>= S_5 ?x11873)))
 (let (($x18084 (or (<= (+ ?x693 (* (- 1.0) S_3) S_0) 0.0) (<= (+ C A_1 (* (- 1.0) L_0) (* (- 1.0) S_3)) 0.0))))
 (let (($x18524 (or (<= (+ A_1 (* (- 1.0) L_0) (* (- 1.0) S_2)) 0.0) (<= (+ C (* (- 1.0) S_2) S_0) 0.0))))
 (let (($x18739 (or $x12669 (<= (+ (* (- 1.0) L_0) A_1 ?x693 (* (- 1.0) S_4)) 0.0))))
 (let (($x559 (<= (+ A_4 (* (- 1.0) A_3) (* (- 1.0) C)) 0.0)))
 (let (($x12390 (<= (+ (* 3.0 C) S_1 (* (- 1.0) S_5)) 0.0)))
 (let (($x1363 (not (= L_2 L_3))))
 (let (($x69 (= L_2 L_1)))
 (let (($x12043 (or $x69 $x1363 (<= (+ A_3 (* (- 1.0) A_2) (* (- 1.0) C)) 0.0))))
 (let (($x18057 (or $x1358 $x1834 (>= S_5 (+ A_1 (* (- 1.0) L_1) ?x642 (* 3.0 C))))))
 (let (($x59 (= L_1 L_0)))
 (let (($x1625 (= L_3 L_1)))
 (let (($x973 (not (<= L_1 L_0))))
 (let (($x11945 (or $x973 $x1358 $x1625 (<= (+ A_2 (* (- 1.0) L_0) L_3 (* (- 1.0) A_3) C) 0.0))))
 (let (($x79 (= L_3 L_2)))
 (let (($x1664 (not (= L_0 L_1))))
 (let (($x11941 (or $x79 $x1664 (<= (+ A_1 (* (- 1.0) L_0) L_3 (* (- 1.0) A_3) ?x693) 0.0))))
 (let ((?x948 (* (- 2.0) C)))
 (let ((?x305 (* (- 1.0) L_3)))
 (let ((?x11731 (+ ?x642 ?x305 A_3 ?x948)))
 (let ((?x702 (* (- 1.0) L_0)))
 (let ((?x1026 (+ A_1 ?x702)))
 (let (($x11821 (<= ?x1026 ?x11731)))
 (let (($x18113 (or (= (+ ?x642 L_0 (* (- 1.0) A_1) A_3 ?x305 ?x948) 0.0) (not $x11821))))
 (let (($x11880 (= (+ (* (- 1.0) C) A_2 ?x567 ?x642 (* (- 1.0) A_1) L_0) 0.0)))
 (let ((?x391 (* (- 1.0) C)))
 (let ((?x11609 (+ ?x642 ?x567 A_2 ?x391)))
 (let (($x11817 (<= ?x1026 ?x11609)))
 (let (($x2393 (<= L_2 L_0)))
 (let (($x974 (<= L_3 L_2)))
 (let (($x1652 (= L_2 L_0)))
 (let (($x11165 (or $x1652 $x1664 (<= (+ A_1 ?x702 L_2 (* (- 1.0) A_2) C) 0.0))))
 (let (($x18143 (or $x59 (<= (+ A_3 ?x567 (* (- 1.0) A_1) L_1 ?x948) 0.0) $x1363)))
 (let (($x41 (>= L_0 L0)))
 (let (($x131 (>= S_1 S_0)))
 (let (($x134 (>= S_2 S_1)))
 (let (($x137 (>= S_3 S_2)))
 (let (($x140 (>= S_4 S_3)))
 (let (($x145 (>= A_1 A_0)))
 (let (($x147 (>= A_3 A_2)))
 (let (($x148 (>= A_4 A_3)))
 (let (($x149 (>= A_5 A_4)))
 (and (<= (+ A_2 ?x567) S_5) (<= (+ A_1 (* (- 1.0) L_1)) S_4) $x149 $x148 $x147 $x145 $x140 $x137 $x134 $x131 $x41 (not (<= (+ A_2 ?x567) S_4)) (>= S_4 (+ A_3 ?x305 ?x642)) (or $x59 (<= S_1 (+ A_1 (* (- 1.0) L_1) ?x642))) (>= S_2 (+ A_1 (* (- 1.0) L_1) ?x642)) (>= S_0 (+ ?x642 (* (- 1.0) L_1) A_1 ?x948)) (>= S_1 (+ ?x642 (* (- 1.0) L_1) A_1 ?x391)) (<= (+ ?x642 (* (- 1.0) L_1) A_1 ?x391) (+ A_0 ?x702)) (or $x59 (<= S_0 (+ ?x642 (* (- 1.0) L_1) A_1 ?x391))) (or $x59 $x69 (= L_2 (+ A_2 (* (- 1.0) A_1) L_1 ?x391))) (or $x79 (<= S_3 (+ A_3 ?x305 ?x642))) (or $x59 $x973) (>= S_4 (+ A_1 (* (- 1.0) L_1) ?x642 ?x693)) (or $x59 (<= (+ A_2 (* (- 1.0) A_1) ?x391) 0.0) $x1358) (>= S_3 (+ A_1 (* (- 1.0) L_1) ?x642 C)) (>= S_5 (+ A_3 ?x305 ?x642 C)) $x18143 (or $x79 (not $x974)) (or (not (<= (+ A_2 (* (- 1.0) A_1) ?x391) 0.0)) $x69) (or $x79 (<= S_5 (+ A_3 ?x305 ?x642 ?x693))) (or $x69 (<= S_2 (+ A_2 ?x567 ?x642))) $x11165 (or $x59 (<= S_2 (+ A_1 (* (- 1.0) L_1) ?x642 C))) (or $x79 (<= S_4 (+ A_3 ?x305 ?x642 C))) (or $x79 (<= S_2 (+ ?x642 ?x305 A_3 ?x391))) (or $x59 $x974 (= (+ A_3 ?x305) (+ A_1 (* (- 1.0) L_1) ?x693))) (or $x973 $x974 $x2393 (= (+ A_3 ?x305) (+ A_2 ?x567 C))) (or (not $x2393) $x1652) (>= S_1 (+ ?x642 ?x567 A_2 ?x948)) (<= (+ ?x642 ?x567 A_2 ?x948) (+ A_0 ?x702)) (>= S_0 (+ ?x642 ?x567 A_2 (* (- 3.0) C))) (<= (+ (* (- 1.0) A_1) L_0 S_1) 0.0) (or $x69 (<= S_3 (+ A_2 ?x567 ?x642 C))) (or $x69 (<= S_1 ?x11609)) (or $x69 (<= S_4 ?x11873)) (or $x69 (<= S_0 (+ ?x642 ?x567 A_2 ?x948)) $x11817) (or $x69 (<= S_5 (+ A_2 ?x567 ?x642 (* 3.0 C)))) (>= S_3 (+ A_2 ?x567 ?x642)) (>= S_2 ?x11609) (or (not $x11817) $x11880) (>= S_2 ?x11731) (>= S_0 (+ ?x642 ?x305 A_3 (* (- 4.0) C))) (>= S_1 (+ ?x642 ?x305 A_3 (* (- 3.0) C))) (<= (+ ?x642 ?x305 A_3 (* (- 3.0) C)) (+ A_0 ?x702)) $x18113 (>= S_3 (+ ?x642 ?x305 A_3 ?x391)) (or $x79 (<= S_0 (+ ?x642 ?x305 A_3 (* (- 3.0) C))) $x11821) $x11941 (or $x79 (<= S_1 ?x11731)) $x11945 (or $x59 (<= S_3 (+ A_1 (* (- 1.0) L_1) ?x642 ?x693))) (or $x59 (<= S_4 (+ A_1 (* (- 1.0) L_1) ?x642 (* 3.0 C)))) (or $x59 (<= S_5 (+ A_1 (* (- 1.0) L_1) ?x642 (* 4.0 C)))) $x18057 (<= S_5 (+ A_4 (* (- 1.0) L_1) C)) (<= S_5 (+ A_5 ?x305)) (or $x559 $x12019) $x12043 (>= S_4 (+ A_2 ?x567 ?x642 C)) (<= (+ ?x948 (* (- 1.0) S_2) S_3) 0.0) (<= (+ ?x391 (* (- 1.0) A_1) L_0 S_2) 0.0) (<= (+ (* (- 4.0) C) S_3 (* (- 1.0) S_0)) 0.0) (<= (+ ?x948 L_0 (* (- 1.0) A_0) S_2) 0.0) (<= S_5 (+ A_4 ?x567 C)) (<= (+ C S_2 (* (- 1.0) S_4)) 0.0) (or $x559 $x12415) (<= (+ ?x948 S_2 (* (- 1.0) S_1)) 0.0) (<= (+ ?x391 L_0 (* (- 1.0) A_0) S_1) 0.0) (<= (+ ?x693 S_1 (* (- 1.0) S_4)) 0.0) (<= (+ C S_1 (* (- 1.0) S_3)) 0.0) (<= (+ (* (- 3.0) C) (* (- 1.0) S_3) S_5) 0.0) (or (<= (+ (* 3.0 C) (* (- 1.0) S_4) S_0) 0.0) $x12547) (<= (+ (* (- 4.0) C) (* (- 1.0) S_2) S_5) 0.0) (<= (+ (* (- 5.0) C) L_0 (* (- 1.0) A_0) S_5) 0.0) (<= (+ L_0 (* (- 1.0) A_1) (* (- 4.0) C) S_5) 0.0) (<= (+ ?x948 S_1 (* (- 1.0) S_0)) 0.0) (or $x559 $x12390) (or $x1748 $x1834 $x12390) (<= (+ (* (- 3.0) C) S_2 (* (- 1.0) S_0)) 0.0) (<= (+ (* (- 3.0) C) L_0 (* (- 1.0) A_0) S_3) 0.0) (<= (+ L_0 (* (- 1.0) A_1) ?x948 S_3) 0.0) (or $x559 $x12460 $x12547) (or $x559 $x12668 $x12669) $x18739 (<= (+ L_0 (* (- 1.0) A_1) (* (- 3.0) C) S_4) 0.0) $x18524 $x18084 (<= (+ ?x948 (* (- 1.0) S_3) S_4) 0.0) (<= (+ (* (- 4.0) C) L_0 (* (- 1.0) A_0) S_4) 0.0) (<= (+ (* (- 4.0) C) (* (- 1.0) S_1) S_4) 0.0) (or $x4788 $x12019) (<= (+ (* (- 3.0) C) (* (- 1.0) S_1) S_3) 0.0) (or $x4788 $x12415) (or $x559 $x12395) (<= (+ (* (- 5.0) C) S_4 (* (- 1.0) S_0)) 0.0) (<= (+ (* (- 3.0) C) (* (- 1.0) S_2) S_4) 0.0) (or $x1358 $x1834 $x12395) (<= (+ (* (- 5.0) C) (* (- 1.0) S_1) S_5) 0.0) (<= (+ (* (- 6.0) C) S_5 (* (- 1.0) S_0)) 0.0) (or $x1748 $x1834 $x12460 $x12547) (or (>= S_5 (+ A_4 ?x702)) $x8393 $x12668 $x12669) $x895 $x42 (<= (+ L_0 (* (- 1.0) A_0) S_0) 0.0) (<= (+ ?x948 (* (- 1.0) S_4) S_5) 0.0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
