; benchmark generated from python API
(set-info :status unknown)
(declare-fun L_2 () Real)
(declare-fun S_2 () Real)
(declare-fun A_2 () Real)
(declare-fun L_1 () Real)
(declare-fun S_1 () Real)
(declare-fun A_1 () Real)
(declare-fun L_0 () Real)
(declare-fun S_0 () Real)
(declare-fun A_0 () Real)
(declare-fun S_3 () Real)
(declare-fun A_3 () Real)
(declare-fun L_3 () Real)
(declare-fun S_4 () Real)
(declare-fun A_4 () Real)
(declare-fun B () Real)
(assert
 (let (($x34 (>= L_0 0.0)))
 (let (($x709 (>= B 5.0)))
 (let ((?x871 (* 3.0 L_2)))
 (let ((?x913 (* (- 3.0) A_2)))
 (let ((?x1970 (* 3.0 B)))
 (let ((?x902 (* 2.0 A_1)))
 (let ((?x909 (* (- 2.0) L_1)))
 (let (($x5129 (<= (+ S_4 (* 2.0 B) (* (- 2.0) A_2) S_0 (* 2.0 L_2)) 0.0)))
 (let (($x61 (= L_2 L_1)))
 (let (($x8566 (<= (+ (* (/ 1.0 2.0) L_1) (* (- (/ 1.0 2.0)) A_1) (* (- (/ 1.0 2.0)) S_4) S_2) 0.0)))
 (let (($x1287 (<= (+ (* (- 1.0) L_3) (* (- 1.0) S_4) A_3) 0.0)))
 (let (($x27105 (or $x1287 (<= (+ (* (- 2.0) S_4) (* 3.0 S_2) (* (- 1.0) S_1)) 0.0))))
 (let ((?x3205 (* 3.0 L_3)))
 (let ((?x3983 (* (- 3.0) A_3)))
 (let ((?x3520 (* 2.0 S_4)))
 (let ((?x503 (* (- 1.0) L_1)))
 (let ((?x3010 (* 2.0 L_3)))
 (let ((?x3737 (* (- 2.0) A_3)))
 (let ((?x688 (* 2.0 B)))
 (let ((?x490 (* (- 1.0) L_2)))
 (let (($x6186 (<= (+ S_4 A_2 ?x490 ?x688 ?x3737 ?x3010) 0.0)))
 (let ((?x4716 (* (/ 1.0 3.0) S_0)))
 (let (($x4714 (<= (+ S_4 (* (/ 4.0 3.0) B) (* (- (/ 4.0 3.0)) A_3) ?x4716 (* (/ 4.0 3.0) L_3)) 0.0)))
 (let (($x71 (= L_3 L_2)))
 (let (($x27339 (<= (+ (* (/ 1.0 3.0) B) (* (- (/ 1.0 3.0)) A_3) ?x4716 (* (/ 1.0 3.0) L_3)) (- 5.0))))
 (let (($x24853 (<= (+ A_2 ?x490 B (* (- 1.0) A_3) L_3) (- 5.0))))
 (let (($x51417 (or $x71 (<= (+ ?x503 A_1 B (* (- 1.0) A_3) L_3) (- 10.0)) $x24853 $x27339)))
 (let (($x1254 (<= (+ A_2 (* (- 1.0) S_3) ?x490) 0.0)))
 (let (($x29620 (or $x1254 (<= (+ ?x503 A_1 (* (- 1.0) S_3)) (- 5.0)) (<= (+ (* (- (/ 1.0 2.0)) S_3) (* (/ 1.0 2.0) S_0)) (- 5.0)))))
 (let (($x28761 (<= (+ (* (- 1.0) S_4) A_2 ?x490) (- 5.0))))
 (let (($x29610 (or $x1287 (<= (+ (* (- (/ 1.0 2.0)) L_1) (* (/ 1.0 2.0) A_1) (* (- (/ 1.0 2.0)) S_4)) (- 5.0)) (<= (+ (* (- (/ 1.0 3.0)) S_4) ?x4716) (- 5.0)) $x28761)))
 (let (($x24781 (<= (+ L_3 S_4 (* (- 1.0) A_3) (* (- 1.0) A_2) S_1 L_2 B) 0.0)))
 (let ((?x664 (+ L_1 ?x490)))
 (let (($x19609 (<= 0.0 ?x664)))
 (let ((?x983 (* (- 3.0) L_2)))
 (let ((?x451 (* (- 1.0) S_1)))
 (let ((?x982 (* 3.0 A_2)))
 (let ((?x1361 (* (- 3.0) B)))
 (let ((?x7694 (* (- 2.0) S_4)))
 (let ((?x4890 (* (- (/ 1.0 2.0)) L_2)))
 (let ((?x3275 (* (/ 1.0 2.0) S_0)))
 (let ((?x440 (* (- 1.0) S_2)))
 (let ((?x5140 (* (/ 1.0 2.0) A_2)))
 (let ((?x1670 (* (- (/ 1.0 2.0)) B)))
 (let (($x2994 (<= (+ A_1 ?x440 ?x503) 0.0)))
 (let ((?x1563 (* (/ 1.0 2.0) B)))
 (let ((?x5131 (* (/ 1.0 2.0) L_2)))
 (let ((?x3377 (* (- (/ 1.0 2.0)) A_2)))
 (let ((?x403 (* (- 1.0) A_3)))
 (let (($x6824 (<= (+ S_4 B L_3 ?x403 (* (- 1.0) A_2) A_1 ?x503 L_2) 0.0)))
 (let (($x51969 (or $x61 (<= (+ ?x503 A_1 B (* (- 1.0) A_2) L_2) (- 5.0)) (not (<= 0.0 (+ ?x1670 ?x5140 (* (- 1.0) A_1) ?x3275 L_1 ?x4890))))))
 (let (($x28541 (<= 0.0 (+ ?x1670 ?x5140 (* (- 1.0) A_1) ?x3275 L_1 ?x4890))))
 (let ((?x3012 (* (- 4.0) L_2)))
 (let ((?x975 (* (- 1.0) S_0)))
 (let ((?x3211 (* 4.0 A_2)))
 (let ((?x2117 (* (- 4.0) B)))
 (let ((?x16837 (* (- 3.0) S_4)))
 (let (($x3120 (<= (+ B (* 2.0 A_3) ?x913 S_0 ?x871 (* (- 2.0) L_3)) 0.0)))
 (let ((?x520 (* (- 1.0) B)))
 (let ((?x874 (* (- 2.0) L_2)))
 (let ((?x411 (* (- 1.0) A_1)))
 (let ((?x866 (* 2.0 A_2)))
 (let (($x304 (<= 0.0 (+ L_3 ?x403 ?x866 ?x411 L_1 ?x874 ?x520))))
 (let (($x24388 (or $x1254 (<= (+ S_4 L_3 ?x403 A_1 (* (- 1.0) S_3) ?x503) 0.0) (<= (+ S_4 L_3 ?x403 (* (- (/ 1.0 2.0)) S_3) ?x3275) 0.0))))
 (let (($x25510 (or $x1287 (<= (+ ?x7694 ?x866 ?x874 S_1 ?x975) 0.0) (<= (+ (* (- 1.0) S_4) (* 2.0 S_1) ?x975) 0.0))))
 (let (($x22929 (<= (+ (* (- (/ 1.0 2.0)) S_4) (* (- 1.0) A_0) (* (/ 3.0 2.0) S_1) L_0) 0.0)))
 (let (($x11915 (<= (+ (* (- 1.0) S_4) A_2 ?x490 (* (- 1.0) A_0) S_1 L_0) 0.0)))
 (let (($x23954 (or $x1287 (<= (+ ?x7694 (* (- 1.0) A_0) (* 3.0 S_2) L_0) 0.0))))
 (let (($x25582 (or $x71 (<= (+ B ?x403 (* 2.0 S_1) ?x975 L_3) 0.0) (<= (+ ?x866 ?x874 ?x688 ?x3737 S_1 ?x975 ?x3010) 0.0))))
 (let (($x24896 (or $x71 (<= (+ L_1 ?x411 B ?x403 (* 2.0 S_2) L_3) 0.0))))
 (let (($x6235 (<= (+ A_2 ?x490 B ?x403 (* (- 1.0) A_0) S_1 L_3 L_0) 0.0)))
 (let ((?x4825 (* (/ 1.0 2.0) L_3)))
 (let ((?x5996 (* (/ 3.0 2.0) S_1)))
 (let ((?x999 (* (- 1.0) A_0)))
 (let ((?x4828 (* (- (/ 1.0 2.0)) A_3)))
 (let (($x24219 (or $x71 (<= (+ ?x688 ?x3737 ?x999 (* 3.0 S_2) ?x3010 L_0) 0.0))))
 (let (($x12409 (<= (+ B (* (- 1.0) A_2) ?x999 (* 2.0 S_1) L_2 L_0) 0.0)))
 (let (($x51112 (or $x1287 (<= (+ (* (- 1.0) S_4) (* (- 2.0) B) ?x866 ?x440 ?x874) 0.0))))
 (let ((?x5984 (* (/ 1.0 2.0) S_1)))
 (let ((?x1520 (* (/ 3.0 2.0) B)))
 (let (($x21509 (or $x71 (<= (+ S_4 ?x1520 (* (- (/ 3.0 2.0)) A_3) ?x5984 (* (/ 3.0 2.0) L_3)) 0.0) $x6186)))
 (let (($x19631 (or $x1254 (<= (+ ?x999 (* (- 1.0) S_3) (* 2.0 S_1) L_0) 0.0))))
 (let (($x7127 (<= (+ ?x503 A_1 ?x688 (* (- 2.0) A_2) S_3 (* 2.0 L_2)) 0.0)))
 (let (($x22540 (or $x61 (<= (+ ?x1520 (* (- (/ 3.0 2.0)) A_2) S_3 ?x3275 (* (/ 3.0 2.0) L_2)) 0.0) $x7127)))
 (let (($x21903 (or $x1254 (<= (+ (* (/ 1.0 2.0) S_4) (* (- 1.0) S_3) ?x3275) 0.0) (<= (+ ?x909 ?x902 S_4 (* (- 3.0) S_3)) 0.0))))
 (let (($x300 (not $x304)))
 (let ((?x861 (* 2.0 L_2)))
 (let ((?x863 (* (- 2.0) A_2)))
 (let ((?x477 (* (- 1.0) L_3)))
 (let (($x51 (= L_1 L_0)))
 (let (($x35407 (or $x71 (<= (+ ?x520 ?x403 ?x902 ?x975 ?x909 L_3) 0.0) (<= (+ ?x3010 ?x3737 ?x866 A_1 ?x874 ?x975 ?x503 B) 0.0))))
 (let ((?x976 (* (- 3.0) L_1)))
 (let ((?x3232 (* (- 2.0) S_1)))
 (let ((?x974 (* 3.0 A_1)))
 (let ((?x467 (* (- 2.0) B)))
 (let (($x50586 (or $x71 (<= (+ ?x467 ?x403 ?x974 ?x3232 ?x976 L_3) 0.0) (<= (+ L_3 ?x403 A_2 A_1 ?x490 ?x451 ?x503) 0.0))))
 (let ((?x971 (* 2.0 L_1)))
 (let ((?x1556 (* 2.0 S_0)))
 (let ((?x970 (* (- 2.0) A_1)))
 (let ((?x407 (* (- 1.0) A_2)))
 (let (($x27190 (<= (+ (* (- (/ 1.0 2.0)) S_4) (* (/ 1.0 2.0) A_1) (* (- (/ 1.0 2.0)) L_1) ?x1670) (- 5.0))))
 (let (($x29845 (or (<= (+ (* (- 1.0) S_4) ?x866 ?x411 L_1 ?x874 B) 0.0) $x1287 (<= (+ (* (- 1.0) S_4) ?x902 ?x975 ?x909 ?x467) 0.0))))
 (let (($x51426 (or $x1254 (<= (+ S_4 ?x520 L_3 ?x403 A_1 (* (- 1.0) S_3) ?x503) 0.0))))
 (let (($x17469 (or $x51 (<= (+ ?x1970 (* (- 3.0) A_1) S_3 ?x1556 (* 3.0 L_1)) 0.0))))
 (let (($x3989 (<= (+ ?x467 ?x403 ?x974 (* (- 2.0) A_0) ?x976 L_3 (* 2.0 L_0)) 0.0)))
 (let (($x51600 (or $x71 $x3989 (<= (+ L_3 ?x403 A_2 A_1 ?x999 ?x490 ?x503 L_0) 0.0))))
 (let (($x3973 (<= (+ ?x688 A_3 (* (- 3.0) A_1) ?x1556 (* 3.0 L_1) ?x477) 0.0)))
 (let (($x28530 (or $x51 $x71 (<= (+ ?x688 ?x403 ?x411 (* 2.0 S_2) L_1 L_3) 0.0))))
 (let ((?x2481 (* (- (/ 1.0 3.0)) L_3)))
 (let ((?x5099 (* (/ 2.0 3.0) S_0)))
 (let ((?x4739 (* (/ 1.0 3.0) A_3)))
 (let ((?x2333 (* (- (/ 1.0 3.0)) B)))
 (let (($x50897 (or $x1254 (<= (+ ?x467 A_3 A_1 (* (- 2.0) S_3) ?x503 ?x477) 0.0))))
 (let (($x885 (<= (+ (* (- 1.0) S_4) ?x866 ?x411 L_1 ?x874 ?x520) 0.0)))
 (let ((?x1340 (* (- (/ 3.0 2.0)) B)))
 (let ((?x1532 (* (- (/ 3.0 2.0)) L_1)))
 (let ((?x1669 (* (/ 3.0 2.0) A_1)))
 (let ((?x1696 (* (- (/ 1.0 2.0)) S_4)))
 (let (($x50955 (or $x1287 (<= (+ ?x1696 ?x1669 ?x451 ?x1532 ?x1340) 0.0) (<= (+ (* (- 1.0) S_4) A_2 ?x490 ?x520 A_1 ?x451 ?x503) 0.0))))
 (let (($x10116 (<= (+ (* (- 1.0) S_4) A_2 ?x490 ?x520 A_1 ?x999 ?x503 L_0) 0.0)))
 (let (($x28381 (or $x51 $x1287 (<= (+ ?x1696 (* (- (/ 1.0 2.0)) A_1) S_2 (* (/ 1.0 2.0) L_1) ?x1563) 0.0))))
 (let (($x31939 (or $x1287 (<= (+ ?x7694 ?x866 ?x874 ?x520 A_1 ?x975 ?x503) 0.0) (not (<= 0.0 (+ ?x863 ?x974 ?x975 ?x976 ?x861 ?x1361))))))
 (let ((?x1983 (+ S_4 (* 4.0 B) (* (- 4.0) A_1) (* 3.0 S_0) (* 4.0 L_1))))
 (let ((?x2458 (* (- (/ 2.0 3.0)) L_3)))
 (let ((?x429 (* (- 1.0) S_3)))
 (let ((?x4724 (* (/ 2.0 3.0) A_3)))
 (let ((?x2434 (* (- (/ 2.0 3.0)) B)))
 (let (($x34561 (or $x1254 (<= (+ ?x520 ?x477 A_3 A_1 (* (- 2.0) S_3) ?x503) 0.0) (<= (+ ?x2434 ?x4724 ?x429 ?x4716 ?x2458) 0.0))))
 (let (($x50488 (or $x1287 (<= (+ L_1 ?x411 ?x467 (* (- 1.0) S_4) ?x866 ?x874) 0.0))))
 (let (($x22660 (not (<= 0.0 (+ L_2 ?x477)))))
 (let (($x50373 (or $x1254 (<= (+ ?x467 A_3 A_1 (* (- 2.0) S_3) ?x503 ?x490) 0.0) $x22660)))
 (let (($x27928 (or $x1254 (<= (+ ?x1670 (* (/ 1.0 2.0) A_3) ?x429 ?x5984 (* (- (/ 1.0 2.0)) L_3)) 0.0))))
 (let (($x963 (<= (+ A_1 ?x440 ?x503 ?x520) 0.0)))
 (let (($x957 (<= (+ A_2 ?x429 ?x490 ?x520) 0.0)))
 (let (($x108 (>= S_1 S_0)))
 (let (($x111 (>= S_2 S_1)))
 (let (($x114 (>= S_3 S_2)))
 (let (($x117 (>= S_4 S_3)))
 (let (($x119 (>= A_1 A_0)))
 (let (($x120 (>= A_2 A_1)))
 (let (($x121 (>= A_3 A_2)))
 (let (($x122 (>= A_4 A_3)))
 (and $x122 $x121 $x120 $x119 $x117 $x114 $x111 $x108 (or (not (<= 0.0 (+ ?x503 L_0))) $x51) (or $x61 (<= (+ ?x407 S_2 L_2 B) 0.0)) (or $x61 (<= (+ ?x407 A_1 ?x503 L_2) (- 5.0))) (or $x61 (<= 0.0 (+ ?x403 ?x866 ?x411 L_1 ?x490)) (not $x71)) (or $x51 $x61 $x71 (= (+ L_3 ?x403 ?x866 ?x411 L_1 ?x874) 0.0)) (or $x61 (<= (+ S_4 ?x913 ?x902 ?x909 ?x871 B) 0.0)) (or $x51 (<= (+ ?x411 S_1 L_1 B) 0.0)) $x957 $x963 (or $x51 $x304 $x885) (or $x61 (<= (+ ?x407 ?x902 ?x451 ?x909 L_2 ?x520) 0.0)) (or $x61 (<= (+ ?x407 ?x902 ?x999 ?x909 L_2 ?x520 L_0) 0.0)) (or $x61 (<= (+ ?x863 ?x974 ?x975 ?x976 ?x861 ?x520) 0.0)) (or $x61 (<= (+ ?x863 A_1 S_3 ?x503 ?x861 B) 0.0)) (or $x51 (<= (+ A_2 ?x970 S_0 ?x971 ?x490 B) 0.0)) (<= (+ ?x520 A_1 ?x429 ?x503) (- 5.0)) (or $x1254 (<= (+ ?x1361 ?x974 (* (- 2.0) S_3) ?x975 ?x976) 0.0)) (or $x1254 (<= (+ ?x467 ?x902 ?x999 ?x429 ?x909 L_0) 0.0)) (or $x1254 (<= (+ ?x467 ?x902 ?x429 ?x451 ?x909) 0.0)) (or $x51 (<= (+ B ?x411 S_0 L_1) (- 5.0))) (or $x1254 (<= (+ ?x429 S_1) (- 5.0))) (or $x71 (<= (+ B ?x403 S_3 L_3) 0.0)) (or $x71 (<= (+ ?x403 A_2 ?x490 L_3) (- 5.0))) (or $x2994 (<= (+ ?x440 S_0) (- 5.0))) (or $x71 (<= (+ S_4 B ?x3737 A_2 ?x490 ?x3010) 0.0)) (or $x71 (<= (+ ?x520 ?x3737 ?x982 ?x451 ?x983 ?x3010) 0.0)) (<= (+ (* (- 1.0) S_4) ?x520 A_3 ?x477) 0.0) (or $x71 $x22660) (or $x1254 (<= (+ S_4 (* (- 3.0) S_3) (* 2.0 S_1)) 0.0)) (or $x1254 (<= (+ S_4 ?x467 ?x902 (* (- 3.0) S_3) ?x909) 0.0)) $x27928 $x50373 (or $x61 (not $x19609)) $x50488 $x34561 (or $x61 (<= 0.0 (+ L_3 ?x403 ?x866 ?x411 ?x874 L_1))) (or $x71 $x24853 (<= (+ ?x1563 ?x4828 ?x5984 ?x4825) (- 5.0))) (or $x2994 (<= (+ ?x477 A_3 ?x407 L_2 ?x440 S_0 ?x520) 0.0)) (or $x51 (<= ?x1983 0.0)) (or (<= (+ L_3 S_4 ?x403 ?x407 A_1 ?x503 L_2) 0.0) $x19609) (or $x61 (<= (+ ?x688 ?x863 S_3 S_1 ?x861) 0.0)) $x31939 $x28381 (or $x1287 (<= (+ ?x1696 ?x1669 ?x999 ?x1532 ?x1340 L_0) 0.0) $x10116) $x50955 (or $x51 $x885 $x1287) $x50897 (or $x51 (<= (+ ?x688 ?x970 S_2 S_0 ?x971) 0.0)) (or $x71 (<= (+ ?x3520 ?x688 ?x3983 A_1 ?x503 ?x3205) 0.0) $x6186) (or $x71 (<= (+ S_4 ?x688 ?x3737 S_2 ?x3010) 0.0)) (or $x2994 (<= (+ ?x2333 ?x4739 ?x440 ?x5099 ?x2481) 0.0)) $x28530 (or $x51 $x3973) $x51600 $x17469 (or $x51 (<= (+ ?x407 ?x411 S_3 L_2 S_0 L_1 B) 0.0)) (or $x1287 (<= (+ ?x7694 ?x1361 ?x982 ?x999 ?x983 L_0) 0.0)) (or $x51 (<= (+ S_4 B L_3 ?x403 ?x411 S_0 L_1) 0.0)) (or $x2994 (<= (+ S_4 L_3 ?x403 ?x440 S_0) 0.0)) (or $x2994 (<= (+ (* (/ 1.0 4.0) S_4) ?x440 (* (/ 3.0 4.0) S_0)) 0.0)) (or $x61 (<= (+ B ?x407 S_1 L_2) (- 5.0))) (or $x71 (<= (+ ?x520 ?x3737 ?x982 ?x999 ?x983 ?x3010 L_0) 0.0)) (or $x71 (<= (+ ?x520 ?x3983 ?x3211 ?x975 ?x3012 ?x3205) 0.0)) (<= (+ (* (- 1.0) S_4) ?x520 A_2 ?x490) (- 5.0)) (or $x71 (<= (+ B ?x403 S_2 L_3) (- 5.0))) $x51426 (or $x71 (<= (+ ?x403 A_1 ?x503 L_3) (- 10.0))) $x29845 (or $x1254 (<= (+ (* (- 2.0) S_3) (* 3.0 S_1) ?x975) 0.0)) (or $x61 (<= (+ ?x688 ?x863 (* 3.0 S_1) ?x975 ?x861) 0.0)) (or $x1287 $x27190) (or $x2994 (<= (+ S_4 ?x407 L_2 (* (- 2.0) S_2) ?x1556) 0.0)) (or $x2994 (<= (+ ?x407 L_2 S_3 ?x440 S_0) 0.0)) (or $x51 (<= (+ ?x477 A_3 ?x407 ?x411 L_2 S_0 L_1) 0.0)) (or $x51 (<= (+ S_4 ?x407 L_2 ?x688 ?x970 ?x1556 ?x971) 0.0)) $x50586 (or $x61 (<= (+ B A_3 ?x863 S_1 ?x861 ?x477) 0.0)) (or $x71 $x300 $x2994) $x35407 (or $x51 $x71 (<= 0.0 (+ ?x477 A_3 ?x863 A_1 ?x503 ?x861))) (or $x71 (<= (+ ?x520 ?x403 ?x866 ?x440 ?x874 L_3) 0.0)) (or $x71 $x300 (= (+ L_1 ?x411 ?x520 ?x403 ?x866 ?x874 L_3) 0.0)) $x21903 $x22540 (or $x1287 (<= (+ (* (- 1.0) S_4) S_2) (- 5.0))) $x19631 $x21509 $x51112 (or $x61 $x12409) (or $x61 (<= (+ S_4 ?x1970 ?x913 (* 2.0 S_1) ?x871) 0.0)) (or $x1254 (<= (+ S_4 L_3 ?x403 ?x429 S_1) 0.0)) $x24219 (or $x71 (<= (+ ?x1563 ?x4828 ?x999 ?x5996 ?x4825 L_0) 0.0) $x6235) (or $x71 (<= (+ ?x688 ?x3737 (* 3.0 S_2) ?x451 ?x3010) 0.0)) $x24896 (or $x2994 (<= (+ (* (/ 1.0 3.0) S_3) ?x440 ?x5099) 0.0)) (or $x71 (<= (+ ?x1970 ?x3983 (* 4.0 S_2) ?x975 ?x3205) 0.0)) $x25582 (or $x1287 (<= (+ ?x16837 (* 4.0 S_2) ?x975) 0.0)) $x23954 (or $x1287 $x11915 $x22929) $x25510 $x24388 (or $x61 $x304 $x3120) (or $x1287 (<= (+ ?x16837 ?x2117 ?x3211 ?x975 ?x3012) 0.0)) (or $x61 (<= (+ ?x1563 ?x3377 ?x3275 ?x5131) (- 5.0)) $x28541) $x51969 (or $x61 $x6824 (<= (+ L_3 S_4 ?x403 ?x3377 ?x3275 ?x5131 ?x1563) 0.0)) (or $x2994 (<= (+ ?x1670 ?x5140 ?x440 ?x3275 ?x4890) 0.0)) (or $x1287 (<= (+ ?x7694 ?x1361 ?x982 ?x451 ?x983) 0.0)) (or $x19609 $x24781) (or $x1287 $x28761 (<= (+ ?x1696 ?x5984) (- 5.0))) $x29610 $x29620 $x51417 (or $x71 $x4714 $x6186 (<= (+ ?x503 A_1 ?x1970 ?x3520 ?x3983 ?x3205) 0.0)) $x27105 (or $x1287 $x8566) (or $x61 $x5129 (<= (+ ?x909 ?x902 ?x1970 S_4 ?x913 ?x871) 0.0)) $x709 $x34 (not (>= (+ (* (- 1.0) A_4) L_3 S_4) 0.0)) (<= (+ L_3 ?x403 S_3) 0.0) (<= (+ ?x999 S_0 L_0) 0.0) (<= (+ ?x411 S_1 L_1) 0.0) (<= (+ ?x407 S_2 L_2) 0.0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
