; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_1 () Real)
(declare-fun A_1 () Real)
(declare-fun L_1 () Real)
(declare-fun S_3 () Real)
(declare-fun S_2 () Real)
(declare-fun C () Real)
(declare-fun S_0 () Real)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(declare-fun L0 () Real)
(declare-fun A_4 () Real)
(declare-fun L_4 () Real)
(declare-fun L_2 () Real)
(declare-fun A_3 () Real)
(declare-fun A_2 () Real)
(declare-fun L_3 () Real)
(declare-fun S_4 () Real)
(assert
 (let (($x37 (>= L0 0.0)))
 (let (($x749 (>= C 5.0)))
 (let ((?x216 (* (- 1.0) L_4)))
 (let ((?x283 (* (- 1.0) C)))
 (let ((?x497 (* (- 1.0) A_3)))
 (let ((?x17055 (+ ?x497 L_2 ?x283 ?x216 A_4)))
 (let (($x17056 (>= ?x17055 5.0)))
 (let (($x17086 (not $x17056)))
 (let (($x16462 (<= 0.0 (+ (* 3.0 C) (* (- 1.0) A_4) L_4 A_1 (* (- 1.0) L_0)))))
 (let (($x16738 (not $x16462)))
 (let ((?x501 (* (- 1.0) A_2)))
 (let ((?x575 (* (- 1.0) L_0)))
 (let ((?x3520 (* 2.0 L_2)))
 (let (($x10404 (= (+ ?x3520 A_4 ?x497 ?x216 ?x575 A_1 ?x501) 0.0)))
 (let ((?x493 (* (- 1.0) A_4)))
 (let ((?x3508 (* (- 2.0) L_2)))
 (let ((?x3529 (+ A_2 A_3 ?x3508 L_4 ?x493)))
 (let (($x4227 (<= (+ A_1 ?x575) ?x3529)))
 (let (($x4422 (not $x4227)))
 (let (($x3152 (= L_4 L_2)))
 (let ((?x17066 (+ A_3 ?x3508 C L_4 ?x493 A_2)))
 (let (($x17067 (>= S_3 ?x17066)))
 (let (($x6896 (= L_4 L_0)))
 (let (($x6116 (not (= L_0 L_3))))
 (let (($x33029 (or $x6116 $x6896 (<= (+ ?x493 A_3 L_4 ?x575 (* (- 1.0) A_1) A_2) 0.0) (<= (+ ?x575 (* 2.0 C) ?x493 L_4 A_2) 0.0))))
 (let (($x4241 (not (= L_1 L_3))))
 (let (($x3005 (= L_4 L_1)))
 (let (($x32786 (or $x3005 $x4241 (<= (+ (* (- 1.0) L_1) (* 2.0 C) ?x493 L_4 A_2) 0.0) (>= S_3 (+ A_3 (* (- 2.0) L_1) C L_4 ?x493 A_2)))))
 (let (($x16965 (<= 0.0 (+ (* (- 1.0) L_2) (* 2.0 C) L_4 ?x493 A_2))))
 (let (($x17094 (not $x16965)))
 (let (($x17093 (= (+ (* (- 2.0) C) ?x501 L_2 A_4 ?x216) 0.0)))
 (let (($x1338 (not (= L_2 L_3))))
 (let (($x32040 (or $x1338 $x3152 (not (<= (+ (* 2.0 C) L_2 ?x497 A_1 ?x575) 0.0)) $x17093 $x17094)))
 (let (($x19579 (<= 0.0 (+ L_0 (* (- 2.0) C) (* (- 1.0) A_1) (* (- 1.0) L_2) A_3))))
 (let (($x16914 (<= 0.0 (+ (* (- 1.0) A_1) (* (- 3.0) C) A_4 ?x216 L_0))))
 (let (($x16915 (not $x16914)))
 (let ((?x16953 (+ A_2 A_3 ?x3508 ?x283 L_4 ?x493)))
 (let (($x16954 (<= S_0 ?x16953)))
 (let (($x1027 (<= 0.0 (+ (* (- 1.0) L_2) L_1))))
 (let (($x416 (<= 0.0 (+ C S_0 (* (- 1.0) A_1) L_1))))
 (let (($x16150 (<= 0.0 (+ C S_0 (* (- 1.0) A_1) L_0))))
 (let (($x3931 (= L_2 L_0)))
 (let (($x18833 (<= (+ ?x283 (* (- 1.0) L_2) (* (- 1.0) S_3) A_3) 0.0)))
 (let (($x31640 (or $x3152 $x16462 $x17093 $x17094 (not (<= 0.0 (+ (* 2.0 C) L_2 ?x497 A_1 ?x575))) $x18833)))
 (let (($x17440 (<= (+ (* 4.0 C) ?x493 L_4 S_0) (- 5.0))))
 (let (($x465 (not $x16150)))
 (let (($x19924 (or $x465 $x1338 $x3152 $x17056 (<= (+ (* 3.0 C) A_1 ?x493 L_4 ?x575) (- 5.0)))))
 (let (($x16404 (<= (+ C A_1 ?x575 (* (- 1.0) S_3)) 0.0)))
 (let (($x18262 (not (>= (+ ?x497 L_1 ?x283 ?x216 A_4) 5.0))))
 (let (($x17326 (not (<= 0.0 (+ (* (- 1.0) L_1) (* 2.0 C) L_4 ?x493 A_2)))))
 (let ((?x4280 (* (- 2.0) L_1)))
 (let ((?x4304 (+ A_3 ?x4280 L_4 ?x493 A_1)))
 (let (($x4319 (>= S_1 ?x4304)))
 (let (($x17064 (<= L_1 (+ L_4 ?x493 A_1 (* 3.0 C)))))
 (let (($x17065 (not $x17064)))
 (let (($x16920 (= (+ (* (- 1.0) L_1) A_1 (* 3.0 C) ?x493 L_4) 0.0)))
 (let (($x54 (= L_1 L_0)))
 (let (($x19071 (or $x54 (<= (+ (* (- 3.0) C) (* (- 1.0) A_1) L_1 S_4) (- 5.0)))))
 (let (($x16156 (<= 0.0 (+ C A_1 ?x501))))
 (let (($x15414 (not $x16156)))
 (let (($x31806 (or $x3152 $x15414 $x16920 $x17065 $x17086 (>= S_0 (+ A_3 ?x4280 L_4 ?x493 A_1 ?x283)))))
 (let (($x1800 (= L_3 L_0)))
 (let (($x1608 (not (= L_0 L_2))))
 (let (($x1028 (not $x1027)))
 (let (($x31878 (or $x1028 $x3152 $x16920 $x17065 $x17086 (>= S_2 (+ A_3 ?x4280 L_4 ?x493 A_1 C)))))
 (let ((?x318 (* (- 1.0) S_1)))
 (let ((?x476 (* (- 1.0) L_1)))
 (let ((?x732 (* (- 2.0) C)))
 (let (($x466 (not (= 0.0 (+ ?x283 A_2 (* (- 1.0) L_2) (* (- 1.0) A_1) L_1)))))
 (let (($x1945 (= L_3 L_1)))
 (let (($x31398 (or $x1945 (<= (+ (* 2.0 C) ?x501 L_1 S_0) (- 5.0)) (<= (+ C ?x501 L_1 A_1 ?x575) (- 5.0)) (not (= 0.0 (+ ?x283 ?x501 (* (- 1.0) L_3) L_1 A_3))))))
 (let (($x15481 (<= (+ C S_0 (* (- 1.0) S_2)) 0.0)))
 (let (($x17102 (<= (+ C ?x501 L_2 S_1) (- 5.0))))
 (let (($x74 (= L_3 L_2)))
 (let (($x18008 (or $x74 (not (= 0.0 (+ ?x283 ?x501 (* (- 1.0) L_3) L_2 A_3))) $x17102)))
 (let (($x467 (not $x416)))
 (let (($x64 (= L_2 L_1)))
 (let (($x32943 (or $x3152 (>= S_0 (+ A_2 A_3 ?x3508 ?x732 L_4 ?x493)) $x17086 $x17093 $x17094)))
 (let (($x1944 (not (= L_1 L_2))))
 (let (($x17754 (or $x1944 $x1945 (not (<= 0.0 (+ ?x476 L_0))) (<= (+ C L_3 ?x497 ?x575 A_2) 0.0))))
 (let (($x21377 (or $x1028 $x1338 $x3152 $x16920 $x17065 (>= S_3 (+ A_3 ?x4280 L_4 ?x493 A_1 (* 2.0 C))))))
 (let (($x485 (not (= L_0 L_1))))
 (let (($x17105 (or (<= 0.0 (+ ?x283 A_2 (* (- 1.0) L_2) L_0 (* (- 1.0) A_1))) $x485 $x3931)))
 (let (($x16869 (or $x54 $x64 (= (+ ?x283 A_2 (* (- 1.0) L_2) (* (- 1.0) A_1) L_1) 0.0))))
 (let (($x14582 (or $x54 $x74 (= (+ ?x732 (* (- 1.0) L_3) A_3 L_1 (* (- 1.0) A_1)) 0.0))))
 (let (($x84 (= L_4 L_3)))
 (let (($x15946 (or $x64 $x74 (= (+ ?x283 ?x501 (* (- 1.0) L_3) L_2 A_3) 0.0))))
 (let (($x36 (>= L_0 L0)))
 (let (($x111 (>= S_1 S_0)))
 (let (($x114 (>= S_2 S_1)))
 (let (($x117 (>= S_3 S_2)))
 (let (($x122 (>= A_1 A_0)))
 (let (($x124 (>= A_3 A_2)))
 (and (<= (+ A_3 (* (- 1.0) L_3)) S_4) (<= (+ A_1 ?x476) S_3) $x124 $x122 $x117 $x114 $x111 $x36 (or $x64 $x1028) (or $x74 $x465 (<= (+ (* 2.0 C) L_3 ?x497 A_1 ?x575) (- 5.0))) (or $x84 (not (<= 0.0 (+ C ?x493 A_3)))) $x15946 (or $x54 $x1028 $x16156) (or $x466 $x15481) (or $x74 $x84 (= (+ C (* (- 1.0) L_3) ?x493 A_3 L_4) 0.0)) (not (<= (+ A_2 (* (- 1.0) L_2)) S_3)) (or $x74 (not (= L_3 L_4)) (<= 0.0 (+ C ?x493 A_3))) $x14582 (or $x1945 (not (<= 0.0 (+ (* (- 1.0) L_3) L_1)))) (<= (+ (* (- 3.0) C) (* (- 1.0) S_0) S_2) 0.0) (<= (+ ?x732 (* (- 1.0) A_0) L_0 S_2) 0.0) (<= (+ L_3 S_4 ?x493) 0.0) (or $x74 (<= (+ ?x283 L_3 ?x497 S_4) (- 5.0))) (<= (+ (* (- 5.0) C) (* (- 1.0) S_0) S_4) 0.0) (<= (+ ?x732 ?x318 S_2) 0.0) (or $x54 (<= (+ (* 2.0 C) S_0 (* (- 1.0) S_3)) 0.0)) (or $x74 (<= (+ C L_3 ?x497 S_2) (- 5.0))) $x16869 (or $x84 (<= (+ ?x493 L_4 S_4) (- 5.0))) (or $x64 $x16965) (or (not (<= 0.0 (+ C A_2 ?x497))) $x74) (or $x64 (<= 0.0 (+ C A_2 ?x497)) $x1338) (<= (+ ?x732 (* (- 1.0) S_0) S_1) 0.0) (<= (+ ?x283 (* (- 1.0) A_0) L_0 S_1) 0.0) (or $x3152 (not (<= 0.0 (+ L_2 ?x216)))) (or $x54 (not (<= 0.0 (+ L_0 ?x476)))) (or $x54 $x1338 (<= 0.0 (+ L_2 ?x216)) $x16920 $x17056) (or $x1338 $x3152 $x16920 $x17065 $x17067) (or $x1338 $x3152 $x17056 $x17093 $x17094) (or $x64 $x17102) $x17105 (or $x54 $x17064) $x21377 (<= (+ (* (- 3.0) C) (* (- 1.0) S_2) S_4) 0.0) (<= (+ ?x732 (* (- 1.0) S_3) S_4) 0.0) (<= (+ (* (- 4.0) C) (* (- 1.0) A_0) L_0 S_4) 0.0) (or $x64 $x416 (<= (+ (* 2.0 C) ?x501 L_2 S_0) (- 5.0))) (<= (+ (* (- 3.0) C) (* (- 1.0) A_0) L_0 S_3) 0.0) (or $x54 (<= (+ (* (- 1.0) A_1) L_1 S_1) (- 5.0))) (or $x15414 $x15481) (or $x64 (<= S_1 ?x3529)) $x17754 (<= (+ ?x283 (* (- 1.0) A_1) L_0 S_2) 0.0) (or $x64 (<= (+ ?x501 L_2 S_2) (- 5.0))) (or $x3152 (<= ?x16953 (+ A_0 ?x575)) $x17086 $x17093 $x17094) (or $x1027 (<= S_2 ?x17066)) $x32943 (<= S_4 (+ A_3 (* (- 1.0) L_2) C)) (or $x64 (<= (+ ?x732 ?x501 L_2 S_4) (- 5.0))) (or $x3152 (>= S_2 ?x3529) $x17086 $x17093 $x17094) (or $x64 $x467 (<= (+ C ?x501 L_2 A_1 ?x575) (- 5.0))) (or (<= (+ (* 2.0 C) S_0 (* (- 1.0) S_3)) 0.0) $x16404) $x18008 (or $x1608 $x1800 (<= (+ (* 2.0 C) L_3 ?x497 A_1 ?x575) 0.0)) (or $x485 $x1338 $x3152 $x16914 $x17056) (or (<= (+ A_1 ?x575 (* (- 1.0) S_2)) 0.0) $x15481) $x31398 (or $x54 (<= (+ ?x283 (* (- 1.0) A_1) L_1 S_2) (- 5.0))) (or $x466 $x1027 $x16954) (or $x54 $x1028 $x1338 (<= (+ ?x732 (* (- 1.0) A_1) A_3) 0.0)) (or $x54 (<= S_2 (+ A_3 ?x4280 L_4 ?x493 A_1 (* 2.0 C)))) (or $x54 (<= (+ C (* (- 1.0) A_1) S_0 L_1) (- 5.0))) (or $x1608 $x1800 $x16150 (<= (+ (* 3.0 C) L_3 ?x497 S_0) (- 5.0))) (<= (+ (* (- 3.0) C) (* (- 1.0) A_1) L_0 S_4) 0.0) (or $x3152 (>= S_1 ?x16953) $x17086 $x17093 $x17094) (<= (+ (* (- 4.0) C) ?x318 S_4) 0.0) (<= (+ (* (- 4.0) C) (* (- 1.0) S_0) S_3) 0.0) (or $x466 (<= (+ ?x732 ?x476 A_1 L_2 ?x501 ?x318 S_3) 0.0)) $x31878 (or $x54 (<= S_0 ?x4304)) (or $x1028 $x3152 (<= ?x4304 (+ A_0 ?x575)) $x16920 $x17065 $x18262) (or $x1608 $x1800 (<= (+ (* 2.0 C) L_3 ?x497 S_1) (- 5.0))) $x31806 (or $x54 (<= S_1 (+ A_3 ?x4280 L_4 ?x493 A_1 C))) (or $x1338 $x3152 (<= (+ (* 2.0 C) ?x493 L_4 S_2) (- 5.0)) $x17056) (or $x1338 $x3152 (<= 0.0 ?x17055)) $x19071 (or $x3152 $x4319 $x16920 $x16965 $x17065 $x17086) (or $x3005 $x4319 $x17326 $x18262 (<= (+ A_1 C ?x501) 0.0)) (<= (+ (* (- 3.0) C) ?x318 S_3) 0.0) (or $x64 $x467 $x4227) (or $x1338 $x3152 (<= (+ (* 3.0 C) ?x493 L_4 S_1) (- 5.0)) $x17056) (or $x1338 $x3152 $x16404 $x17056 $x17440) $x19924 (or $x1338 $x3152 $x16150 $x17056 $x17440) (or $x3152 $x17067 (not $x18833)) $x31640 (<= (+ ?x732 (* (- 1.0) A_1) L_0 S_3) 0.0) (or $x3931 $x16150 $x16915 $x16954) (or $x416 $x1027 $x16954) (or $x3152 $x4422 $x10404 $x16915 $x19579) $x32040 $x32786 $x33029 (or $x3152 $x16738 (<= 0.0 (+ C ?x501 L_2 A_1 ?x575)) $x17067 $x17086) (or $x3152 $x4422 $x10404 $x16738 $x17086) $x749 $x37 (<= (+ L_0 (* (- 1.0) A_0) S_0) 0.0) (<= (+ C S_1 (* (- 1.0) S_3)) 0.0) (<= (+ ?x732 (* (- 1.0) S_2) S_3) 0.0) (<= (+ L_1 (* (- 1.0) A_1) S_1) 0.0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
