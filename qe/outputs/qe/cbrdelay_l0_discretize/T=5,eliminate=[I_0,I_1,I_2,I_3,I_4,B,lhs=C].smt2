; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_3 () Real)
(declare-fun C () Real)
(declare-fun A_1 () Real)
(declare-fun L_1 () Real)
(declare-fun S_2 () Real)
(declare-fun S_1 () Real)
(declare-fun L_3 () Real)
(declare-fun A_4 () Real)
(declare-fun A_3 () Real)
(declare-fun S_0 () Real)
(declare-fun L_0 () Real)
(declare-fun A_0 () Real)
(declare-fun L_2 () Real)
(declare-fun A_2 () Real)
(declare-fun S_4 () Real)
(declare-fun L0 () Real)
(assert
 (let (($x8674 (<= (+ (* (- 3.0) C) A_4 (* (- 1.0) L_3) (* (- 1.0) S_2)) 0.0)))
 (let (($x8698 (<= (+ (* (- 2.0) C) (* (- 1.0) S_3) A_4 (* (- 1.0) L_3)) 0.0)))
 (let (($x37 (>= L0 0.0)))
 (let (($x727 (>= C 5.0)))
 (let (($x9546 (<= (+ (* (- 1.0) L_0) C A_1 (* (- 1.0) S_3)) 0.0)))
 (let (($x8893 (<= (+ (* 2.0 C) S_0 (* (- 1.0) S_3)) 0.0)))
 (let (($x8882 (not (<= (+ (* 2.0 C) L_2 (* (- 1.0) A_2) S_0) 0.0))))
 (let (($x9352 (<= (+ (* 2.0 C) L_1 (* (- 1.0) A_2) S_0) 0.0)))
 (let (($x4641 (>= S_3 (+ A_2 (* (- 1.0) L_1)))))
 (let ((?x247 (* (- 1.0) L_3)))
 (let ((?x730 (* (- 3.0) C)))
 (let ((?x482 (* (- 1.0) A_1)))
 (let ((?x8671 (+ L_1 ?x482 ?x730 A_4 ?x247)))
 (let (($x9206 (>= (+ (* (- 1.0) A_2) L_1 (* (- 1.0) C) ?x247 A_3) 5.0)))
 (let (($x1754 (= L_3 L_1)))
 (let (($x1637 (not (= L_1 L_2))))
 (let (($x9646 (or $x1637 $x1754 (<= (+ L_3 (* 2.0 C) (* (- 1.0) A_3) S_1) (- 5.0)) $x9206)))
 (let (($x9395 (<= (+ L_3 (* 2.0 C) A_1 (* (- 1.0) A_3) (* (- 1.0) L_0)) (- 5.0))))
 (let (($x13112 (or $x1637 $x1754 $x9206 $x9395 (<= (+ L_3 (* 3.0 C) (* (- 1.0) A_3) S_0) (- 5.0)))))
 (let (($x64 (= L_2 L_1)))
 (let (($x9561 (or $x64 (<= (+ (* (- 2.0) C) (* (- 1.0) A_2) ?x247 L_2 A_4) (- 5.0)))))
 (let (($x8810 (<= (+ (* (- 1.0) L_0) C A_1 L_2 (* (- 1.0) A_2)) (- 5.0))))
 (let ((?x8624 (+ L_1 ?x482 C S_0)))
 (let (($x8629 (<= 0.0 ?x8624)))
 (let (($x8630 (not $x8629)))
 (let (($x12679 (or $x64 $x8810 (<= (+ (* 2.0 C) L_2 (* (- 1.0) A_2) S_0) (- 5.0)))))
 (let (($x74 (= L_3 L_2)))
 (let ((?x474 (* (- 1.0) A_3)))
 (let ((?x4664 (* (- 2.0) L_1)))
 (let ((?x9210 (+ A_2 ?x4664 C L_3 ?x474 A_1)))
 (let (($x54 (= L_1 L_0)))
 (let (($x2677 (not (<= (+ (* (- 1.0) L_2) A_4 (* (- 1.0) S_4)) 0.0))))
 (let (($x9227 (<= 0.0 (+ (* (- 1.0) L_1) (* 2.0 C) L_3 ?x474 A_1))))
 (let (($x9228 (not $x9227)))
 (let (($x8618 (= (+ L_1 ?x482 (* (- 2.0) C) A_3 ?x247) 0.0)))
 (let (($x9269 (not $x9206)))
 (let (($x12599 (or $x1754 (<= (+ A_1 A_2 ?x4664 L_3 ?x474) (+ A_0 (* (- 1.0) L_0))) $x8618 $x9228 $x9269)))
 (let (($x12692 (or $x1754 $x8618 (>= S_0 (+ A_1 A_2 ?x4664 L_3 ?x474 (* (- 1.0) C))) $x9228 $x9269)))
 (let (($x9218 (or (<= (+ C S_1 (* (- 1.0) S_3)) 0.0) (<= 0.0 (+ (* (- 1.0) A_2) L_2 C S_1)))))
 (let (($x8937 (or $x64 (<= (+ (* (- 1.0) C) (* (- 1.0) A_2) L_2 S_3) (- 5.0)))))
 (let (($x952 (not (<= 0.0 (+ (* (- 1.0) L_1) L_0)))))
 (let (($x8914 (or $x952 $x1637 $x1754 (<= (+ L_3 C ?x474 (* (- 1.0) L_0) A_2) 0.0))))
 (let (($x8778 (or $x64 $x74 (= (+ (* (- 1.0) C) (* (- 1.0) A_2) ?x247 L_2 A_3) 0.0))))
 (let (($x1728 (= L_2 L_0)))
 (let (($x1689 (not (= L_0 L_1))))
 (let (($x8592 (or $x1689 $x1728 (<= (+ C (* (- 1.0) A_2) L_2 A_1 (* (- 1.0) L_0)) 0.0))))
 (let (($x8168 (or $x54 $x64 (= (+ L_1 A_2 (* (- 1.0) L_2) ?x482 (* (- 1.0) C)) 0.0))))
 (let (($x36 (>= L_0 L0)))
 (let (($x111 (>= S_1 S_0)))
 (let (($x114 (>= S_2 S_1)))
 (let (($x117 (>= S_3 S_2)))
 (let (($x122 (>= A_1 A_0)))
 (let (($x123 (>= A_2 A_1)))
 (let (($x124 (>= A_3 A_2)))
 (let (($x125 (>= A_4 A_3)))
 (and (<= (+ A_4 ?x247) S_4) $x125 $x124 $x123 $x122 $x117 $x114 $x111 $x36 (or $x54 (<= (+ L_1 ?x482 S_1) (- 5.0))) (or $x64 (not (<= 0.0 (+ (* (- 1.0) A_2) A_1 C)))) $x8168 (or (not (<= 0.0 (+ (* (- 1.0) L_2) L_0))) $x1728) (or $x54 $x952) $x8592 (or $x54 (<= ?x8624 (- 5.0))) (or $x54 $x1637 (<= 0.0 (+ (* (- 1.0) A_2) A_1 C))) $x8778 (or $x74 (<= (+ L_3 C ?x474 S_2) (- 5.0))) $x8914 (or $x64 (<= (+ L_2 (* (- 1.0) A_2) S_2) (- 5.0))) (<= (+ L_2 ?x474 S_3) 0.0) $x8937 (or $x64 (<= (+ C L_2 (* (- 1.0) A_2) S_1) (- 5.0))) (or $x64 $x2677 (<= 0.0 (+ C A_2 ?x474))) $x9218 (or $x54 $x9227) (or $x1637 $x1754 $x8618 $x9206 $x9228) $x12692 $x12599 (or $x1637 $x1754 $x8618 (>= S_2 ?x9210) $x9228) (or $x1637 $x1754 (>= S_1 (+ A_1 A_2 ?x4664 L_3 ?x474)) $x8618 $x9228) (<= (+ L_2 (* (- 1.0) A_2) S_2) 0.0) (or $x1637 $x1754 $x4641 $x8618 $x9228) (<= (+ A_4 ?x247) (+ A_2 (* (- 1.0) L_1) (* 2.0 C))) (or $x74 $x2677) (<= (+ (* (- 4.0) C) A_4 ?x247 (* (- 1.0) A_0) L_0) 0.0) (or $x54 $x8882 $x8893) (<= (+ ?x730 L_0 S_3 (* (- 1.0) A_0)) 0.0) (or $x54 (<= (+ L_1 ?x482 (* (- 2.0) C) S_3) (- 5.0))) (<= (+ ?x730 (* (- 1.0) S_1) S_3) 0.0) (or $x54 (<= (+ L_1 ?x482 (* (- 1.0) C) S_2) (- 5.0))) (or $x54 (<= ?x8671 (- 5.0))) (<= (+ (* (- 5.0) C) (* (- 1.0) S_0) A_4 ?x247) 0.0) (<= (+ (* (- 4.0) C) (* (- 1.0) S_1) A_4 ?x247) 0.0) (<= (+ (* (- 4.0) C) (* (- 1.0) S_0) S_3) 0.0) (or $x54 $x4641 $x9352) (or $x54 (<= S_0 (+ A_1 A_2 ?x4664 L_3 ?x474))) (or $x54 (<= S_1 ?x9210)) (<= (+ L_1 ?x482 (* (- 1.0) C) S_2) 0.0) (or $x74 (<= (+ (* (- 1.0) C) ?x474 A_4) (- 5.0))) (or $x8629 (<= (+ C S_0 (* (- 1.0) S_2)) 0.0)) $x12679 (or (<= (+ (* (- 1.0) L_0) A_1 (* (- 1.0) S_2)) 0.0) $x8630) (or $x8630 (not $x8810) $x9546) $x9561 (or $x74 (<= (+ L_3 ?x474 S_3) (- 5.0))) $x13112 $x9646 (or $x4641 (not (<= 0.0 (+ (* (- 1.0) A_2) L_1 C S_1)))) (<= ?x8671 0.0) (or $x4641 $x9352 $x9546) (or $x8882 $x8893 $x9546) $x727 $x37 (<= (+ (* (- 2.0) C) S_1 (* (- 1.0) S_0)) 0.0) (<= (+ L_1 ?x482 S_1) 0.0) (<= (+ (* (- 1.0) A_4) L_3 S_4) 0.0) (<= (+ (* (- 1.0) C) (* (- 1.0) A_2) L_2 S_3) 0.0) (<= (+ S_0 (* (- 1.0) A_0) L_0) 0.0) (<= (+ (* (- 1.0) C) S_1 (* (- 1.0) A_0) L_0) 0.0) (<= (+ (* (- 2.0) C) (* (- 1.0) A_0) S_2 L_0) 0.0) (<= (+ ?x730 (* (- 1.0) S_0) S_2) 0.0) (<= (+ (* (- 1.0) C) ?x474 A_4) 0.0) $x8698 (<= (+ (* (- 2.0) C) S_3 (* (- 1.0) S_2)) 0.0) $x8674 (<= (+ (* (- 2.0) C) (* (- 1.0) S_1) S_2) 0.0) (<= (+ L_1 ?x482 (* (- 2.0) C) S_3) 0.0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
