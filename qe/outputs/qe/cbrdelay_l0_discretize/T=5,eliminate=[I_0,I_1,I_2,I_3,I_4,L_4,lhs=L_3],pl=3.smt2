; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_0 () Real)
(declare-fun S_3 () Real)
(declare-fun C () Real)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(declare-fun S_1 () Real)
(declare-fun S_2 () Real)
(declare-fun L0 () Real)
(declare-fun B () Real)
(declare-fun L_1 () Real)
(declare-fun A_2 () Real)
(declare-fun S_4 () Real)
(declare-fun A_1 () Real)
(declare-fun A_3 () Real)
(declare-fun L_2 () Real)
(declare-fun L_3 () Real)
(declare-fun A_4 () Real)
(assert
 (let (($x37 (>= L0 0.0)))
 (let (($x568 (>= C 5.0)))
 (let (($x770 (>= B 5.0)))
 (let (($x10098 (<= (+ (* 2.0 C) A_1 (* (- 1.0) L_0) (* (- 1.0) S_4)) 0.0)))
 (let (($x9900 (<= 0.0 (+ C L_0 (* (- 1.0) A_1) S_0))))
 (let (($x10090 (not $x9900)))
 (let (($x8846 (<= (+ A_2 (* (- 1.0) A_1) (* (- 1.0) C)) 0.0)))
 (let (($x5682 (>= S_4 (+ A_3 (* (- 1.0) L_0)))))
 (let (($x1618 (not (<= L_2 L_0))))
 (let ((?x331 (* (- 1.0) L_1)))
 (let ((?x8932 (+ A_2 ?x331 C)))
 (let (($x9307 (>= S_4 ?x8932)))
 (let (($x2216 (>= S_4 (+ A_3 ?x331))))
 (let (($x821 (not (<= L_2 L_1))))
 (let (($x15113 (or $x821 $x2216 $x9307 (<= (+ (* 2.0 C) (* (- 1.0) S_4) S_1) 0.0))))
 (let (($x14821 (or $x821 $x2216 $x9307 (<= (+ (* 3.0 C) S_0 (* (- 1.0) S_4)) 0.0) $x9900)))
 (let (($x1848 (not (= L_1 L_3))))
 (let (($x14698 (or (<= (+ A_1 (* (- 1.0) L_0) (* (- 1.0) S_2)) 0.0) (<= (+ C (* (- 1.0) S_2) S_0) 0.0))))
 (let (($x1701 (= L_3 L_1)))
 (let (($x1198 (not (= L_1 L_2))))
 (let (($x818 (not (<= L_1 L_0))))
 (let (($x9627 (or $x818 $x1198 $x1701 (<= (+ A_2 (* (- 1.0) L_0) L_3 (* (- 1.0) A_3) C) 0.0))))
 (let (($x9434 (<= (+ A_1 (* (- 1.0) L_0) L_3 (* (- 1.0) A_3) (* 2.0 C)) 0.0)))
 (let ((?x230 (* (- 1.0) C)))
 (let ((?x482 (* (- 1.0) L_3)))
 (let ((?x533 (* (- 1.0) B)))
 (let ((?x9376 (+ ?x533 ?x482 A_3 ?x230)))
 (let (($x9377 (<= (+ A_2 (* (- 1.0) L_0)) ?x9376)))
 (let (($x74 (= L_3 L_2)))
 (let ((?x1058 (* (- 2.0) C)))
 (let ((?x9370 (+ ?x533 ?x482 A_3 ?x1058)))
 (let ((?x577 (* (- 1.0) L_0)))
 (let ((?x861 (+ A_1 ?x577)))
 (let (($x9507 (<= ?x861 ?x9370)))
 (let (($x14695 (or (= (+ ?x1058 ?x533 ?x482 (* (- 1.0) A_1) A_3 L_0) 0.0) (not $x9507))))
 (let (($x14686 (or $x74 $x818 $x9377 (<= S_0 (+ ?x533 ?x482 A_3 (* (- 3.0) C))) $x9507)))
 (let (($x8911 (<= A_2 (+ A_1 ?x533 C))))
 (let (($x8790 (not $x8911)))
 (let (($x734 (not (= L_2 L_3))))
 (let (($x54 (= L_1 L_0)))
 (let (($x9266 (<= A_3 (+ A_1 ?x533 (* 2.0 C)))))
 (let (($x9259 (= (+ ?x230 A_2 (* (- 1.0) L_2) ?x533 (* (- 1.0) A_1) L_0) 0.0)))
 (let ((?x472 (* (- 1.0) L_2)))
 (let ((?x7194 (+ ?x533 ?x472 A_2 ?x230)))
 (let (($x9246 (<= ?x861 ?x7194)))
 (let (($x64 (= L_2 L_1)))
 (let (($x8793 (<= A_3 (+ A_2 ?x533 C))))
 (let (($x14520 (or $x54 $x74 $x8911 (= (+ A_3 ?x482) (+ A_1 ?x331 (* 2.0 C))))))
 (let (($x1561 (= L_2 L_0)))
 (let (($x1548 (not (= L_0 L_1))))
 (let (($x8606 (or $x1548 $x1561 (<= (+ A_1 ?x577 L_2 (* (- 1.0) A_2) C) 0.0))))
 (let (($x36 (>= L_0 L0)))
 (let (($x111 (>= S_1 S_0)))
 (let (($x114 (>= S_2 S_1)))
 (let (($x120 (>= S_4 S_3)))
 (let (($x122 (>= A_1 A_0)))
 (let (($x123 (>= A_2 A_1)))
 (let (($x125 (>= A_4 A_3)))
 (and (not (<= (+ A_3 ?x482) S_3)) $x125 $x123 $x122 $x120 $x114 $x111 $x36 (<= (+ A_2 ?x472) S_3) (or $x64 (<= S_2 (+ A_2 ?x472 ?x533))) (or $x54 (<= S_1 (+ A_1 ?x331 ?x533))) (>= S_4 (+ A_3 ?x482 ?x533)) (<= (+ ?x533 ?x331 A_1 ?x230) (+ A_0 ?x577)) (or $x74 (not (<= L_3 L_2))) (>= S_0 (+ ?x533 ?x331 A_1 ?x1058)) (or $x54 (<= S_0 (+ ?x533 ?x331 A_1 ?x230))) (or $x74 (<= S_4 (+ A_3 ?x482 ?x533 C))) (or $x74 (<= S_3 (+ A_3 ?x482 ?x533))) (>= S_1 (+ ?x533 ?x331 A_1 ?x230)) (or $x64 $x821) (or $x54 $x64 (= (+ A_2 ?x472) (+ A_1 ?x331 C))) (or $x64 $x74 (= (+ A_3 ?x482) (+ A_2 ?x472 C))) (>= S_2 (+ A_1 ?x331 ?x533)) (or $x64 (<= S_3 (+ A_2 ?x472 ?x533 C))) (or $x64 (<= S_4 (+ A_2 ?x472 ?x533 (* 2.0 C)))) (<= S_2 (+ A_2 ?x331)) (or $x54 $x818) (or $x54 (<= S_2 (+ A_1 ?x331 ?x533 C))) (or $x54 (<= S_3 (+ A_1 ?x331 ?x533 (* 2.0 C)))) (<= S_4 (+ A_4 ?x482)) $x8606 $x14520 (or $x1701 $x8790 (= (+ A_3 ?x482 ?x533) ?x8932)) (or $x54 $x821 $x8846) (or $x8793 (>= S_4 (+ A_2 ?x472 ?x533 C))) (or (>= S_4 (+ A_3 ?x472)) (not $x8793)) (or $x64 $x734 (<= (+ A_3 (* (- 1.0) A_2) ?x230) 0.0)) (>= S_2 ?x7194) (<= (+ ?x533 ?x472 A_2 ?x1058) (+ A_0 ?x577)) (or $x64 (<= S_1 ?x7194)) (or $x64 (<= S_0 (+ ?x533 ?x472 A_2 ?x1058)) $x9246) (<= (+ (* (- 1.0) A_1) L_0 S_1) 0.0) (or $x9259 (not $x9246)) (or $x821 (>= S_4 (+ A_1 ?x331 ?x533 (* 2.0 C))) $x8911 $x9266) (or $x54 (<= S_4 (+ A_1 ?x331 ?x533 (* 3.0 C)))) (or $x1848 $x2216 $x8911 (not $x9266)) (or $x54 $x734 $x821 (<= (+ A_3 (* (- 1.0) A_1) ?x1058) 0.0)) (or (<= (+ A_3 (* (- 1.0) A_2) ?x230) 0.0) $x8790 $x9307) (or $x2216 $x8790 (not (<= (+ A_3 (* (- 1.0) A_2) ?x230) 0.0))) (or (= (+ A_3 ?x482 ?x533) (+ A_2 ?x577 C)) (not $x9377)) (or $x74 (<= S_2 ?x9376)) (>= S_2 ?x9370) (<= (+ ?x533 ?x482 A_3 (* (- 3.0) C)) (+ A_0 ?x577)) (or $x74 $x818 $x9377 (<= S_1 ?x9370)) $x14686 (>= S_0 (+ ?x533 ?x482 A_3 (* (- 4.0) C))) (>= S_1 (+ ?x533 ?x482 A_3 (* (- 3.0) C))) $x14695 (or $x74 $x1618 $x9377 $x9434) (<= (+ ?x230 L_0 S_1 (* (- 1.0) A_0)) 0.0) (>= S_1 (+ ?x533 ?x472 A_2 ?x1058)) $x9627 $x14698 (<= (+ ?x1058 (* (- 1.0) S_0) S_1) 0.0) (>= S_0 (+ ?x533 ?x472 A_2 (* (- 3.0) C))) (<= S_4 (+ A_3 ?x472 C)) (or $x1848 (<= (+ A_3 (* (- 1.0) A_2) ?x230) B)) (or $x821 $x2216 (<= (+ C S_2 (* (- 1.0) S_4)) 0.0)) (<= (+ (* (- 3.0) C) (* (- 1.0) S_2) S_4) 0.0) $x14821 (<= (+ (* (- 5.0) C) (* (- 1.0) S_0) S_4) 0.0) $x15113 (<= (+ ?x230 (* (- 1.0) A_1) L_0 S_2) 0.0) (<= (+ (* (- 3.0) C) S_2 (* (- 1.0) S_0)) 0.0) (<= (+ ?x1058 L_0 S_2 (* (- 1.0) A_0)) 0.0) (<= (+ (* (- 4.0) C) L_0 S_4 (* (- 1.0) A_0)) 0.0) (<= (+ (* (- 3.0) C) (* (- 1.0) A_1) L_0 S_4) 0.0) (<= (+ ?x1058 (* (- 1.0) A_1) L_0 S_3) 0.0) (<= S_3 ?x8932) (or $x5682 (>= S_4 (+ A_2 ?x577 C)) $x10090 (not $x8846)) (or $x1618 $x5682 $x8846 $x10090 $x10098) (<= (+ (* (- 3.0) C) S_3 (* (- 1.0) S_1)) 0.0) (<= (+ (* (- 4.0) C) S_4 (* (- 1.0) S_1)) 0.0) (<= S_4 (+ A_2 ?x331 (* 2.0 C))) $x770 $x568 $x37 (<= (+ L_0 S_0 (* (- 1.0) A_0)) 0.0) (<= (+ ?x1058 (* (- 1.0) S_2) S_3) 0.0) (<= (+ ?x1058 S_2 (* (- 1.0) S_1)) 0.0) (<= (+ (* (- 3.0) C) L_0 S_3 (* (- 1.0) A_0)) 0.0) (<= (+ (* (- 4.0) C) S_3 (* (- 1.0) S_0)) 0.0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
