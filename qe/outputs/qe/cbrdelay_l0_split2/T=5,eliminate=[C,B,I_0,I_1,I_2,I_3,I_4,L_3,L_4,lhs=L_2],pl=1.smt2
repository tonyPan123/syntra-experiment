; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_1 () Real)
(declare-fun S_3 () Real)
(declare-fun A_3 () Real)
(declare-fun S_4 () Real)
(declare-fun L_1 () Real)
(declare-fun S_0 () Real)
(declare-fun S_2 () Real)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(declare-fun L0 () Real)
(declare-fun A_1 () Real)
(declare-fun A_2 () Real)
(declare-fun L_2 () Real)
(declare-fun A_4 () Real)
(assert
 (let (($x3260 (<= (+ L_1 S_4 (* (- 1.0) A_3) (* (- (/ 1.0 2.0)) S_3) (* (/ 1.0 2.0) S_0)) 0.0)))
 (let (($x4181 (<= (+ L_0 (* (- 1.0) A_0) (* (- 1.0) S_3) (* 2.0 S_1)) 0.0)))
 (let (($x37 (>= L0 0.0)))
 (let (($x1784 (<= (+ L_0 S_0 (* (- 1.0) A_0)) 0.0)))
 (let (($x2721 (>= S_4 (+ A_3 (* (- 1.0) L_1)))))
 (let (($x742 (or $x2721 (<= (+ (* (- 1.0) S_4) (* 2.0 S_1) (* (- 1.0) S_0)) 0.0))))
 (let (($x4603 (or $x2721 (<= (+ (* (- 3.0) S_4) (* 4.0 S_2) (* (- 1.0) S_0)) 0.0))))
 (let ((?x215 (* (- 1.0) S_3)))
 (let ((?x237 (* (- 1.0) A_1)))
 (let ((?x561 (* (- 1.0) L_2)))
 (let (($x54 (= L_1 L_0)))
 (let (($x1482 (or $x54 (<= (+ L_1 ?x561 A_2 ?x237 S_2 (* (- 1.0) S_4)) 0.0))))
 (let (($x4378 (or $x2721 (<= (+ (* (- 2.0) S_4) (* 3.0 S_2) (* (- 1.0) S_1)) 0.0))))
 (let (($x6406 (<= (+ L_0 (* (- 2.0) S_4) (* (- 1.0) A_0) (* 3.0 S_2)) 0.0)))
 (let ((?x1097 (* (- 1.0) S_0)))
 (let ((?x2173 (* 4.0 A_1)))
 (let ((?x1928 (* (- 4.0) A_2)))
 (let ((?x2221 (* 4.0 L_2)))
 (let ((?x1705 (* (- 4.0) L_1)))
 (let (($x64 (= L_2 L_1)))
 (let ((?x2662 (* (- 2.0) A_1)))
 (let ((?x1728 (* 2.0 A_2)))
 (let ((?x1727 (* (- 2.0) L_2)))
 (let ((?x6035 (* 2.0 L_1)))
 (let ((?x1670 (* 5.0 A_1)))
 (let ((?x2175 (* (- 5.0) A_2)))
 (let ((?x4683 (* 5.0 L_2)))
 (let ((?x2020 (* (- 5.0) L_1)))
 (let ((?x2447 (* 2.0 A_1)))
 (let ((?x5816 (* (- 2.0) A_2)))
 (let ((?x884 (* 2.0 L_2)))
 (let ((?x3976 (* (- 2.0) L_1)))
 (let ((?x1925 (* 3.0 A_1)))
 (let ((?x2979 (* (- 3.0) A_2)))
 (let ((?x5578 (* 3.0 L_2)))
 (let ((?x1936 (* (- 3.0) L_1)))
 (let (($x557 (or $x64 (<= (+ ?x3976 ?x884 ?x5816 ?x2447 S_2 (* (- 1.0) A_0) L_0) 0.0))))
 (let (($x529 (or $x64 (<= (+ ?x1705 ?x2221 ?x1928 ?x2173 S_4 (* (- 1.0) S_1)) 0.0))))
 (let (($x2494 (<= (+ L_0 (* (- 1.0) A_0) (* (- (/ 1.0 2.0)) S_4) (* (/ 3.0 2.0) S_1)) 0.0)))
 (let (($x1053 (or $x64 (<= (+ ?x1936 ?x5578 ?x2979 ?x1925 (* (- 1.0) A_0) L_0 S_3) 0.0))))
 (let (($x3982 (or $x64 (<= (+ ?x1705 ?x2221 ?x1928 ?x2173 (* (- 1.0) A_0) L_0 S_4) 0.0))))
 (let (($x793 (or $x64 (<= (+ ?x1936 ?x5578 ?x2979 ?x1925 S_3 (* (- 1.0) S_1)) 0.0))))
 (let ((?x524 (* (- 1.0) S_4)))
 (let ((?x3952 (* (- 3.0) A_1)))
 (let ((?x4814 (* 3.0 A_2)))
 (let ((?x1910 (* (- 3.0) L_2)))
 (let ((?x3073 (* 3.0 L_1)))
 (let (($x7869 (<= (+ (* (- (/ 1.0 2.0)) S_4) (* (/ 1.0 2.0) S_1)) (- 5.0))))
 (let (($x3432 (= L_2 L_0)))
 (let (($x1994 (not (= L_0 L_1))))
 (let (($x1009 (or $x54 (<= (+ L_1 ?x561 A_2 ?x237 (* (- 1.0) S_2) S_0) 0.0))))
 (let (($x4839 (<= (+ (* (- 4.0) L_0) ?x2221 ?x1928 ?x2173 S_4 (* (- 1.0) S_1)) 0.0)))
 (let (($x1217 (or $x1994 $x3432 (<= (+ (* (- 5.0) L_0) ?x4683 ?x2175 ?x1670 S_4 ?x1097) 0.0))))
 (let (($x4276 (<= (+ (* (- 3.0) L_0) ?x2221 ?x1928 ?x2173 (* (- 1.0) A_0) S_4) 0.0)))
 (let (($x2322 (or $x64 (<= (+ ?x1936 ?x5578 ?x2979 ?x1925 (* (- 1.0) S_2) S_4) 0.0))))
 (let (($x733 (or $x64 (<= (+ ?x3976 ?x884 ?x5816 ?x2447 (* (- 1.0) S_2) S_3) 0.0))))
 (let (($x2836 (<= (+ (* (- 2.0) L_0) ?x884 ?x5816 ?x2447 (* (- 1.0) S_2) S_3) 0.0)))
 (let (($x1090 (<= (+ (* (- 3.0) L_0) ?x5578 ?x2979 ?x1925 (* (- 1.0) S_2) S_4) 0.0)))
 (let (($x8527 (<= (+ (* (- 3.0) L_0) ?x5578 ?x2979 ?x1925 S_3 (* (- 1.0) S_1)) 0.0)))
 (let ((?x528 (* (- 1.0) L_0)))
 (let ((?x800 (+ A_0 ?x528)))
 (let (($x794 (<= ?x800 S_3)))
 (let (($x4330 (or $x64 (<= (+ ?x3976 ?x884 ?x5816 ?x2447 S_2 (* (- 1.0) S_1)) 0.0))))
 (let ((?x1335 (* (- 1.0) A_0)))
 (let ((?x253 (* (- 1.0) A_2)))
 (let ((?x522 (* (- 1.0) L_1)))
 (let (($x537 (or $x54 (not (<= L_1 L_0)))))
 (let (($x3287 (or $x64 (not (<= L_2 L_1)))))
 (let (($x913 (not (<= (+ A_1 ?x522) S_3))))
 (let ((?x523 (+ A_1 ?x522)))
 (let (($x587 (<= ?x523 S_4)))
 (let (($x123 (>= A_2 A_1)))
 (let (($x117 (>= S_3 S_2)))
 (let (($x114 (>= S_2 S_1)))
 (let (($x111 (>= S_1 S_0)))
 (let (($x36 (>= L_0 L0)))
 (let (($x125 (>= A_4 A_3)))
 (let (($x124 (>= A_3 A_2)))
 (let (($x3588 (<= S_4 (+ A_4 ?x561))))
 (and $x3588 $x124 $x125 $x36 $x111 $x114 $x117 $x123 $x587 $x913 $x3287 $x537 (or $x64 (<= (+ ?x522 L_2 ?x253 A_1) (- 5.0))) (or $x64 (<= (+ ?x522 L_2 ?x253 A_1 ?x1335 L_0 S_1) 0.0)) (or $x64 (<= (+ ?x3976 ?x884 ?x5816 ?x2447 ?x215 S_4) 0.0)) $x4330 $x794 (or $x1994 $x3432 $x8527) (or $x1090 $x1994 $x3432) (or $x1994 $x2836 $x3432) $x733 $x2322 (or $x2721 (<= (+ (* (- (/ 1.0 3.0)) S_4) (* (/ 1.0 3.0) S_0)) (- 5.0))) (or $x1994 $x3432 $x4276) $x1217 (or $x1994 $x3432 $x4839) $x1009 (or $x54 (<= (+ ?x6035 ?x1727 ?x1728 ?x2662 ?x524 S_1) 0.0)) (or $x1994 $x2494 $x3432) (or $x1994 $x3432 $x7869) (or $x54 (<= (+ ?x3073 ?x1910 ?x4814 ?x3952 ?x524 S_0) 0.0)) $x793 $x3982 $x1053 (or $x2721 $x7869) (or $x2494 $x2721) $x529 $x557 (or $x64 (<= (+ ?x1936 ?x5578 ?x2979 ?x1925 S_2 ?x1097) 0.0)) (or $x64 (<= (+ ?x3976 ?x884 ?x5816 ?x2447 S_1 ?x1097) 0.0)) (or $x64 (<= (+ ?x2020 ?x4683 ?x2175 ?x1670 S_4 ?x1097) 0.0)) (or $x54 (<= (+ ?x6035 ?x1727 ?x1728 ?x2662 ?x215 S_0) 0.0)) (or $x64 (<= (+ ?x1705 ?x2221 ?x1928 ?x2173 S_3 ?x1097) 0.0)) (or $x2721 $x6406) $x4378 (or $x2721 (<= (+ ?x524 S_2) (- 5.0))) $x1482 (or $x54 (<= (+ L_1 ?x561 A_2 ?x237 ?x215 S_1) 0.0)) $x4603 $x742 $x1784 $x37 (<= (+ S_4 (* (- 4.0) S_2) (* 3.0 S_0)) 0.0) $x4181 (<= (+ (* (- 1.0) S_2) S_0) (- 5.0)) (<= (+ (* (- 3.0) S_2) S_3 (* 2.0 S_0)) 0.0) (<= (+ S_4 (* (- 2.0) S_3) S_0) 0.0) $x3260 (<= (+ L_1 S_4 (* (- 1.0) A_3) (* (- 1.0) S_2) S_0) 0.0) (<= (+ (* (- 2.0) S_3) (* 3.0 S_1) ?x1097) 0.0) (<= (+ ?x215 S_1) (- 5.0)) (<= (+ (* (- (/ 1.0 2.0)) S_3) (* (/ 1.0 2.0) S_0)) (- 5.0)) (<= (+ (* (- 3.0) S_3) S_4 (* 2.0 S_1)) 0.0) (<= (+ L_1 S_4 (* (- 1.0) A_3) ?x215 S_1) 0.0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
