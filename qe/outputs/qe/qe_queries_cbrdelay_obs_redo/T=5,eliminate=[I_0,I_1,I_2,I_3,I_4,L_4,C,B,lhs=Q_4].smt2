; benchmark generated from python API
(set-info :status unknown)
(declare-fun L_1 () Real)
(declare-fun S_1 () Real)
(declare-fun A_1 () Real)
(declare-fun Q_4 () Real)
(declare-fun A_4 () Real)
(declare-fun S_4 () Real)
(declare-fun L_3 () Real)
(declare-fun L_0 () Real)
(declare-fun S_0 () Real)
(declare-fun A_0 () Real)
(declare-fun S_3 () Real)
(declare-fun A_3 () Real)
(declare-fun L_2 () Real)
(declare-fun A_2 () Real)
(declare-fun S_2 () Real)
(assert
 (let (($x34 (>= L_0 0.0)))
 (let ((?x1915 (* (- (/ 1.0 2.0)) S_0)))
 (let ((?x2758 (* (/ 1.0 2.0) S_1)))
 (let ((?x259 (* (- 1.0) L_2)))
 (let ((?x372 (* (- 1.0) A_3)))
 (let ((?x45734 (+ L_3 ?x372 A_2 ?x259 ?x2758 ?x1915)))
 (let (($x71 (= L_3 L_2)))
 (let (($x78203 (or $x71 (<= (+ L_3 ?x372 (* 2.0 S_1) (* (- 1.0) S_0)) (- 5.0)) (<= ?x45734 (- 5.0)))))
 (let (($x70838 (<= (+ L_3 ?x372 (* (- 2.0) A_0) (* 3.0 S_1) (* 2.0 L_0)) (- 5.0))))
 (let (($x78050 (or $x71 $x70838 (<= (+ L_3 ?x372 A_2 (* (- 1.0) A_0) ?x259 S_1 L_0) (- 5.0)))))
 (let (($x77961 (or $x71 (<= (+ L_3 ?x372 (* (- 1.0) A_1) L_1 (* 2.0 S_2)) (- 5.0)))))
 (let (($x77958 (or $x71 (<= (+ L_3 ?x372 (* (/ 3.0 2.0) S_2) (* (- (/ 1.0 2.0)) S_1)) (- 5.0)))))
 (let ((?x11479 (* (- 4.0) L_2)))
 (let ((?x1079 (* (- 1.0) S_0)))
 (let ((?x11409 (* 4.0 A_2)))
 (let ((?x3135 (* (- 4.0) A_3)))
 (let ((?x12671 (* 4.0 L_3)))
 (let ((?x1074 (* (- 2.0) L_2)))
 (let ((?x341 (* (- 1.0) S_1)))
 (let ((?x1071 (* 2.0 A_2)))
 (let ((?x2556 (* (- 2.0) A_3)))
 (let ((?x2555 (* 2.0 L_3)))
 (let ((?x4684 (* (- 3.0) L_2)))
 (let ((?x4680 (* 3.0 A_2)))
 (let ((?x2473 (* (- 3.0) A_3)))
 (let ((?x2296 (* 3.0 L_3)))
 (let (($x169507 (or $x71 (<= (+ ?x2296 ?x2473 ?x4680 (* (- 1.0) A_0) S_3 ?x4684 L_0) 0.0))))
 (let (($x167339 (or $x71 (<= (+ ?x2555 ?x2556 ?x1071 (* (- 1.0) A_1) S_3 L_1 ?x1074) 0.0))))
 (let (($x169857 (or $x71 (<= (+ L_3 ?x372 A_2 (* (- 1.0) A_0) ?x259 S_1 L_0) 0.0))))
 (let (($x172767 (or $x71 (<= (+ ?x2555 ?x2556 ?x1071 (* (- 1.0) A_0) S_2 ?x1074 L_0) 0.0))))
 (let ((?x1077 (* (- 3.0) A_2)))
 (let ((?x1081 (* 3.0 L_2)))
 (let ((?x4800 (* 3.0 Q_4)))
 (let ((?x1066 (* 2.0 A_1)))
 (let ((?x1067 (* (- 2.0) L_1)))
 (let (($x1860 (<= (+ S_4 (* 2.0 Q_4) (* 2.0 L_2) (* (- 2.0) A_2) S_0) 0.0)))
 (let (($x61 (= L_2 L_1)))
 (let (($x77587 (<= (+ (* (- 1.0) A_2) S_0 L_2) (- 15.0))))
 (let (($x169712 (or $x61 (<= (+ (* (- 1.0) A_2) A_1 (* (- 1.0) L_1) L_2) (- 10.0)) $x77587)))
 (let (($x74026 (<= (+ (* (- 1.0) A_2) (* (/ 2.0 3.0) S_3) (* (/ 1.0 3.0) S_0) L_2) (- 5.0))))
 (let ((?x1068 (* 2.0 L_2)))
 (let ((?x242 (* (- 1.0) L_1)))
 (let ((?x1065 (* (- 2.0) A_2)))
 (let ((?x12550 (+ ?x1065 A_1 S_3 ?x242 ?x1068)))
 (let ((?x2294 (* (- 2.0) S_3)))
 (let ((?x2036 (* (- 2.0) Q_4)))
 (let ((?x276 (* (- 1.0) L_3)))
 (let (($x30623 (<= (+ ?x276 A_3 ?x2036 A_1 ?x2294 ?x242) 0.0)))
 (let (($x11747 (<= (+ ?x276 A_4 ?x1067 (* (- 1.0) Q_4) ?x1066 (* (- 3.0) S_3)) 0.0)))
 (let (($x4876 (<= (+ ?x2556 (* 2.0 A_4) ?x2036 (* (- 1.0) S_3) S_0) 0.0)))
 (let (($x2151 (<= (+ A_2 (* (- 1.0) S_3) ?x259) 0.0)))
 (let ((?x367 (* (- 1.0) A_1)))
 (let ((?x380 (* (- 1.0) Q_4)))
 (let (($x70785 (<= 0.0 (+ ?x2555 ?x2473 A_4 ?x380 ?x4680 ?x367 L_1 ?x4684))))
 (let ((?x1925 (* (- (/ 1.0 2.0)) L_2)))
 (let ((?x1926 (* (/ 1.0 2.0) A_2)))
 (let ((?x1343 (* (/ 1.0 2.0) A_4)))
 (let ((?x833 (* (/ 1.0 2.0) L_3)))
 (let ((?x20568 (+ ?x833 ?x372 ?x1343 ?x1926 ?x1925)))
 (let (($x26828 (<= ?x20568 0.0)))
 (let (($x26800 (not $x26828)))
 (let (($x171113 (or $x71 $x26800 (= (+ ?x2555 ?x2473 A_4 L_1 ?x380 ?x367 ?x4680 ?x4684) 0.0) (not $x70785))))
 (let (($x169948 (or $x61 (<= (+ ?x276 A_3 ?x1065 A_1 ?x242 ?x1068) (- 5.0)) (<= (+ (* (- 2.0) L_3) (* 2.0 A_3) ?x1077 S_0 ?x1081) (- 5.0)))))
 (let (($x77560 (or $x61 (<= (+ (* (- 1.0) A_2) (* (/ 1.0 2.0) S_3) ?x2758 L_2) (- 5.0)))))
 (let (($x79861 (or $x71 (<= (+ ?x2555 ?x2556 ?x1071 ?x1074 (* 2.0 Q_4) S_1 ?x1079) 0.0) (<= (+ L_3 ?x372 Q_4 (* 2.0 S_1) ?x1079) 0.0))))
 (let (($x69690 (or $x71 (not (<= (+ ?x276 A_3 Q_4 ?x1065 A_1 ?x242 ?x1068) 0.0)) $x26828 (= (+ L_3 ?x372 L_1 ?x367 ?x380 ?x1071 ?x1074) 0.0))))
 (let (($x167319 (or $x71 (<= (+ ?x2555 ?x2556 (* 2.0 Q_4) (* 3.0 S_2) ?x341) 0.0))))
 (let (($x77276 (or $x71 (<= (+ L_3 ?x372 (* (/ 4.0 3.0) S_2) (* (- (/ 1.0 3.0)) S_0)) (- 5.0)))))
 (let ((?x15368 (* 4.0 L_2)))
 (let ((?x15387 (* (- 4.0) A_2)))
 (let ((?x375 (* (- 1.0) A_4)))
 (let ((?x4868 (* 4.0 A_3)))
 (let ((?x2524 (* (- 3.0) L_3)))
 (let (($x659 (= Q_4 0.0)))
 (let (($x173026 (or $x61 $x659 (<= (+ ?x2524 ?x4868 ?x375 Q_4 ?x15387 S_0 ?x15368) 0.0) $x70785)))
 (let ((?x354 (* (- 1.0) S_3)))
 (let ((?x2881 (* 2.0 A_3)))
 (let ((?x2916 (* (- 2.0) L_3)))
 (let (($x172318 (or $x61 (<= (+ ?x276 A_3 (* (- 1.0) A_2) A_1 ?x354 ?x242 L_2) 0.0) (<= (+ ?x2916 ?x2881 ?x1065 ?x354 S_0 ?x1068) 0.0))))
 (let (($x170121 (or $x61 (<= (+ ?x276 A_3 (* (- 1.0) A_2) ?x354 S_1 L_2) 0.0))))
 (let (($x15896 (<= (+ ?x2296 ?x3135 A_4 ?x380 ?x11409 ?x341 ?x11479) 0.0)))
 (let ((?x15903 (* (- 5.0) L_2)))
 (let ((?x15884 (* 5.0 A_2)))
 (let ((?x15888 (* (- 5.0) A_3)))
 (let (($x15905 (<= (+ ?x12671 ?x15888 A_4 ?x380 ?x15884 ?x1079 ?x15903) 0.0)))
 (let (($x1764 (<= (+ ?x276 A_3 Q_4 ?x1065 A_1 ?x242 ?x1068) 0.0)))
 (let (($x27413 (<= (+ ?x4800 (* (- 3.0) A_1) S_3 (* 2.0 S_0) (* 3.0 L_1)) 0.0)))
 (let (($x51 (= L_1 L_0)))
 (let (($x168072 (or $x51 (<= (+ (* (- 1.0) A_2) L_2 Q_4 ?x367 S_3 S_0 L_1) 0.0))))
 (let ((?x3901 (* (/ 1.0 3.0) S_0)))
 (let (($x37199 (<= (+ (* (/ 4.0 3.0) L_3) (* (- (/ 4.0 3.0)) A_3) S_4 (* (/ 4.0 3.0) Q_4) ?x3901) 0.0)))
 (let (($x22451 (<= (+ ?x2555 ?x2556 S_4 A_2 ?x259 (* 2.0 Q_4)) 0.0)))
 (let (($x166060 (or $x71 $x22451 (<= (+ ?x2296 ?x2473 (* 2.0 S_4) ?x242 A_1 ?x4800) 0.0) $x37199)))
 (let (($x29522 (<= (+ S_4 ?x2036 ?x1066 (* (- 3.0) S_3) ?x1067) 0.0)))
 (let (($x20475 (<= (+ L_3 ?x372 A_2 A_1 ?x259 ?x341 ?x242) 0.0)))
 (let ((?x1080 (* (- 3.0) L_1)))
 (let ((?x2412 (* (- 2.0) S_1)))
 (let ((?x2538 (* 2.0 S_3)))
 (let ((?x1078 (* 3.0 A_1)))
 (let (($x15923 (<= (+ ?x2296 ?x3135 A_4 ?x380 ?x11409 (* (- 1.0) A_0) ?x11479 L_0) 0.0)))
 (let (($x172908 (or $x71 $x15923 (<= (+ ?x2555 ?x2556 ?x380 L_0 ?x4680 (* (- 1.0) A_0) ?x4684) 0.0))))
 (let (($x2305 (not $x61)))
 (let (($x172058 (or $x71 $x2305 $x15905 (<= (+ ?x2296 ?x2473 ?x380 (* (- 4.0) L_1) ?x11409 ?x1079) 0.0))))
 (let ((?x2190 (* 2.0 S_1)))
 (let ((?x1102 (* (- 1.0) A_0)))
 (let ((?x369 (* (- 1.0) A_2)))
 (let ((?x1814 (+ ?x369 ?x1102 ?x2190 L_2 L_0)))
 (let (($x32166 (<= (+ ?x2555 ?x2556 (* 2.0 Q_4) ?x1102 (* 3.0 S_2) L_0) 0.0)))
 (let (($x7477 (<= (+ S_4 ?x2036 ?x1066 (* (- 3.0) S_3) (* (- 2.0) L_0)) 0.0)))
 (let (($x2742 (<= (+ ?x372 A_4 ?x380 ?x354 S_1) 0.0)))
 (let (($x504 (not (<= 0.0 (+ ?x242 L_0)))))
 (let ((?x1861 (* (/ 1.0 2.0) S_0)))
 (let ((?x1929 (* (- (/ 1.0 2.0)) A_2)))
 (let ((?x1905 (* (/ 1.0 2.0) L_2)))
 (let ((?x793 (* (/ 1.0 2.0) Q_4)))
 (let (($x168889 (or $x61 (<= (+ ?x793 ?x1905 ?x1929 ?x1861) (- 5.0)) (<= (+ Q_4 L_2 ?x369 A_1 ?x242) (- 5.0)))))
 (let (($x171150 (or $x61 $x659 (<= (+ ?x2916 (* 3.0 A_3) ?x375 Q_4 ?x1077 S_1 ?x1081) 0.0))))
 (let (($x67091 (<= 0.0 (+ L_3 Q_4 ?x375 ?x2538 ?x1079))))
 (let (($x26610 (<= (+ (* (- 3.0) Q_4) ?x1078 ?x2294 ?x1079 ?x1080) 0.0)))
 (let (($x4558 (<= (+ ?x372 A_4 ?x380 A_1 ?x354 ?x242) 0.0)))
 (let (($x1650 (>= Q_4 5.0)))
 (let (($x171136 (or $x61 $x1650 (<= (+ ?x372 A_4 ?x380 ?x369 A_1 ?x242 L_2) (- 5.0)) (<= (+ ?x2556 (* 2.0 A_4) ?x2036 ?x369 S_0 L_2) (- 5.0)))))
 (let (($x1762 (<= (+ ?x380 ?x1065 ?x1078 ?x1079 ?x1080 ?x1068) 0.0)))
 (let (($x518 (<= 0.0 (+ A_3 Q_4 ?x375 A_2 ?x367 L_1 ?x259))))
 (let (($x52433 (<= (+ ?x833 (* (- (/ 3.0 2.0)) A_3) A_4 (* (/ 1.0 2.0) A_1) (* (- (/ 1.0 2.0)) L_1)) 0.0)))
 (let (($x50014 (not $x52433)))
 (let (($x20828 (<= (+ L_3 ?x372 A_2 A_1 ?x1102 ?x259 ?x242 L_0) 0.0)))
 (let (($x18244 (<= (+ L_3 ?x2556 A_4 ?x380 ?x1066 ?x1102 ?x1067 L_0) 0.0)))
 (let (($x30580 (<= (+ L_3 ?x372 ?x2036 (* 2.0 L_0) ?x1078 (* (- 2.0) A_0) ?x1080) 0.0)))
 (let (($x66232 (not (<= 0.0 (+ ?x276 L_2)))))
 (let ((?x8315 (* (/ 3.0 4.0) S_0)))
 (let ((?x347 (* (- 1.0) S_2)))
 (let ((?x8308 (* (- (/ 1.0 4.0)) Q_4)))
 (let ((?x8254 (* (/ 1.0 4.0) A_4)))
 (let ((?x8321 (* (- (/ 1.0 4.0)) L_3)))
 (let (($x8243 (<= (+ ?x8321 ?x8254 ?x8308 ?x347 ?x8315) 0.0)))
 (let (($x5406 (<= (+ A_1 ?x347 ?x242) 0.0)))
 (let (($x1928 (<= (+ (* (- (/ 1.0 2.0)) Q_4) ?x1925 ?x1926 ?x347 ?x1861) 0.0)))
 (let (($x57150 (or $x61 (<= (+ (* 2.0 Q_4) ?x1068 ?x1065 (* 3.0 S_1) ?x1079) 0.0))))
 (let ((?x10760 (+ ?x372 A_4 ?x380 ?x369 A_1 ?x242 L_2)))
 (let (($x68240 (<= 0.0 ?x10760)))
 (let ((?x11773 (* (- 5.0) L_1)))
 (let ((?x2637 (* (- 2.0) S_0)))
 (let ((?x11774 (* 5.0 A_1)))
 (let ((?x2562 (* 2.0 A_4)))
 (let (($x19296 (<= (+ ?x2296 ?x15888 ?x2562 ?x2036 ?x11774 ?x2637 ?x11773) 0.0)))
 (let (($x7900 (not (<= (+ L_3 ?x2556 A_4 Q_4 A_2 ?x259) 0.0))))
 (let (($x30591 (<= (+ L_3 ?x372 ?x380 ?x1066 ?x1079 ?x1067) 0.0)))
 (let (($x23649 (<= (+ ?x2555 ?x2556 ?x1071 ?x1074 Q_4 A_1 ?x1079 ?x242) 0.0)))
 (let (($x46762 (<= (+ L_3 ?x372 A_1 (* (- 2.0) A_0) ?x2190 ?x242 (* 2.0 L_0)) 0.0)))
 (let (($x69777 (<= (+ ?x2555 ?x2556 ?x1071 A_1 ?x1074 ?x1079 ?x242) (- 5.0))))
 (let ((?x2552 (* 3.0 L_1)))
 (let ((?x2550 (* (- 3.0) A_1)))
 (let (($x173564 (or $x51 $x659 (<= (+ L_3 ?x375 Q_4 ?x4680 ?x2550 S_1 ?x2552 ?x4684) 0.0) $x68240)))
 (let (($x166582 (or $x2151 (<= (+ S_4 ?x2294 S_0) 0.0) (<= (+ S_4 ?x1067 ?x1066 (* (- 3.0) S_3)) 0.0))))
 (let (($x68241 (not $x68240)))
 (let (($x79173 (or $x71 $x659 $x7900 (<= (+ ?x2296 ?x2556 ?x375 Q_4 ?x4680 ?x4684 ?x1066 ?x2637 ?x1067) 0.0) $x68241)))
 (let (($x70313 (<= (+ (* (- (/ 1.0 2.0)) L_3) ?x1343 (* (- (/ 1.0 2.0)) Q_4) ?x369 ?x1861 L_2) (- 5.0))))
 (let (($x170733 (or $x61 $x1650 (<= (+ ?x276 A_4 ?x1067 ?x380 ?x1066 ?x1077 ?x1081) (- 15.0)) $x70313)))
 (let (($x30614 (<= (+ ?x2296 ?x2473 (* 2.0 S_4) (* 2.0 Q_4) A_1 ?x242) 0.0)))
 (let (($x19313 (<= (+ L_3 ?x2556 A_4 ?x380 ?x1066 ?x341 ?x1067) 0.0)))
 (let (($x75991 (or $x71 (<= (+ L_3 ?x372 A_2 ?x259 Q_4 ?x1102 S_1 L_0) 0.0) (not (<= 0.0 ?x1814)))))
 (let ((?x6113 (* (/ 2.0 3.0) S_1)))
 (let ((?x5343 (* (- (/ 1.0 3.0)) Q_4)))
 (let ((?x6224 (* (/ 1.0 3.0) A_4)))
 (let ((?x5222 (* (- (/ 1.0 3.0)) L_3)))
 (let (($x5372 (<= (+ ?x5222 ?x6224 ?x5343 ?x354 ?x6113) 0.0)))
 (let (($x1719 (<= (+ ?x380 A_1 ?x347 ?x242) 0.0)))
 (let ((?x1073 (* 2.0 L_1)))
 (let ((?x1072 (* (- 2.0) A_1)))
 (let (($x166762 (or $x51 $x659 (<= (+ L_3 ?x375 Q_4 ?x1071 ?x1072 S_2 ?x1073 ?x1074) 0.0) $x68240)))
 (let (($x18910 (<= (+ L_3 A_3 (* (- 2.0) A_4) (* 2.0 Q_4) ?x367 ?x2538 L_1) 0.0)))
 (let ((?x11853 (* 4.0 L_1)))
 (let ((?x11852 (* (- 4.0) A_1)))
 (let (($x173567 (or $x51 $x659 (<= (+ L_3 ?x375 Q_4 ?x11409 ?x11852 S_0 ?x11853 ?x11479) 0.0) $x68240)))
 (let (($x79389 (or $x5406 (<= (+ S_4 ?x369 L_2 (* (- 2.0) S_2) (* 2.0 S_0)) 0.0))))
 (let ((?x4606 (* (/ 2.0 3.0) Q_4)))
 (let ((?x4413 (* (- (/ 2.0 3.0)) A_4)))
 (let ((?x6056 (* (/ 2.0 3.0) L_3)))
 (let (($x21407 (<= (+ ?x2555 ?x2556 ?x1071 ?x1066 ?x1074 ?x347 ?x1079 ?x1067) 0.0)))
 (let ((?x3207 (* (- (/ 3.0 2.0)) L_1)))
 (let ((?x2967 (* (/ 3.0 2.0) A_1)))
 (let ((?x3209 (* (- (/ 3.0 2.0)) A_3)))
 (let ((?x1376 (* (/ 3.0 2.0) L_3)))
 (let (($x26278 (<= (+ ?x1376 ?x3209 ?x2967 S_2 ?x1079 ?x3207) 0.0)))
 (let (($x166466 (or $x51 $x659 $x2305 (<= (+ L_3 ?x375 Q_4 ?x4680 ?x2550 S_1) 0.0) $x68240)))
 (let (($x1322 (not (<= Q_4 0.0))))
 (let (($x40676 (<= (+ ?x833 (* (- (/ 1.0 2.0)) A_3) ?x793 ?x1102 (* (/ 3.0 2.0) S_1) L_0) 0.0)))
 (let ((?x1356 (* (- (/ 1.0 2.0)) Q_4)))
 (let ((?x3225 (* (/ 1.0 2.0) A_3)))
 (let ((?x1358 (* (- (/ 1.0 2.0)) L_3)))
 (let (($x22479 (<= (+ S_4 ?x369 L_2 (* 2.0 Q_4) ?x1072 (* 2.0 S_0) ?x1073) 0.0)))
 (let ((?x3214 (* (- 4.0) L_1)))
 (let ((?x3139 (* 4.0 A_1)))
 (let (($x15414 (<= (+ ?x276 A_4 ?x380 ?x15387 ?x3139 ?x1102 ?x3214 ?x15368 L_0) 0.0)))
 (let (($x1773 (<= (+ ?x380 L_0 ?x369 ?x1066 ?x1102 ?x1067 L_2) 0.0)))
 (let (($x26257 (<= (+ L_3 ?x372 S_4 ?x380 A_1 ?x354 ?x242) 0.0)))
 (let (($x169815 (or $x61 (<= (+ L_3 ?x372 S_4 Q_4 L_2 ?x369 A_1 ?x242) 0.0) (<= (+ L_3 ?x372 S_4 ?x793 ?x1905 ?x1929 ?x1861) 0.0))))
 (let ((?x1775 (* 2.0 Q_4)))
 (let ((?x4367 (* (- 2.0) A_4)))
 (let ((?x2549 (* 3.0 A_3)))
 (let (($x78434 (or $x51 $x71 (<= (+ L_3 ?x372 ?x1775 ?x367 (* 2.0 S_2) L_1) 0.0))))
 (let (($x168243 (or $x51 (<= (+ ?x276 A_3 ?x1775 ?x2550 (* 2.0 S_0) ?x2552) 0.0))))
 (let (($x40042 (<= (+ ?x1358 ?x3225 ?x1356 (* (/ 1.0 2.0) A_1) ?x354 (* (- (/ 1.0 2.0)) L_0)) 0.0)))
 (let (($x38337 (<= (+ (* (- (/ 2.0 3.0)) L_3) (* (/ 2.0 3.0) A_3) (* (- (/ 2.0 3.0)) Q_4) ?x354 ?x3901) 0.0)))
 (let ((?x2573 (* 2.0 L_0)))
 (let ((?x2572 (* (- 2.0) A_0)))
 (let ((?x4604 (* (/ 1.0 3.0) Q_4)))
 (let ((?x4586 (* (- (/ 1.0 3.0)) A_4)))
 (let ((?x3796 (* (/ 1.0 3.0) L_3)))
 (let (($x50673 (or $x659 (<= (+ A_3 ?x375 Q_4 ?x1102 S_1 L_0) 0.0) (<= (+ ?x3796 ?x4586 ?x4604 ?x1102 (* (/ 4.0 3.0) S_1) L_0) 0.0) (<= (+ L_3 ?x375 Q_4 A_2 ?x259 ?x2572 ?x2190 ?x2573) 0.0))))
 (let (($x4407 (<= (+ ?x276 A_4 ?x380 ?x369 L_2 (* (- 2.0) S_2) (* 2.0 S_0)) 0.0)))
 (let (($x173032 (or $x4407 $x5406 (<= (+ ?x276 A_3 ?x369 L_2 ?x380 ?x347 S_0) 0.0))))
 (let (($x166575 (or $x51 $x1650 (<= (+ ?x1358 ?x1343 ?x1356 ?x1929 ?x1905 ?x367 S_0 L_1) (- 5.0)))))
 (let (($x15385 (<= (+ ?x276 A_4 ?x380 ?x15387 ?x3139 ?x341 ?x3214 ?x15368) 0.0)))
 (let (($x1758 (<= (+ ?x380 ?x369 ?x1066 ?x341 ?x1067 L_2) 0.0)))
 (let (($x22091 (<= (+ L_3 ?x2556 A_4 ?x380 A_2 ?x259 ?x1066 (* (- 2.0) S_2) ?x1067) 0.0)))
 (let (($x168896 (or $x71 $x1719 (<= (+ L_3 ?x2473 ?x2562 ?x2036 ?x1078 (* (- 2.0) S_2) ?x1080) 0.0) $x22091)))
 (let (($x74297 (or $x71 $x504 (<= (+ L_3 ?x372 A_1 S_2 ?x341 (* (- 1.0) L_0)) 0.0))))
 (let ((?x15392 (* 5.0 L_2)))
 (let ((?x15384 (* (- 5.0) A_2)))
 (let (($x82486 (or $x61 $x1762 (<= (+ ?x276 A_4 ?x380 ?x15384 ?x11774 ?x1079 ?x11773 ?x15392) 0.0))))
 (let (($x168342 (or $x71 (<= (+ ?x2555 ?x2473 A_4 ?x380 ?x4680 ?x347 ?x4684) 0.0) (<= (+ L_3 ?x372 ?x380 ?x1071 ?x347 ?x1074) 0.0))))
 (let (($x12165 (<= (+ A_1 ?x354 ?x242) (- 5.0))))
 (let ((?x7306 (* (/ 1.0 4.0) S_0)))
 (let ((?x8294 (* (/ 1.0 4.0) Q_4)))
 (let ((?x8067 (* (- (/ 1.0 4.0)) A_4)))
 (let ((?x8316 (* (/ 1.0 4.0) L_3)))
 (let (($x66846 (<= (+ L_3 ?x375 Q_4 A_2 ?x259) (- 10.0))))
 (let (($x4869 (<= (+ A_3 ?x375 Q_4) (- 5.0))))
 (let (($x73876 (or $x659 $x4869 $x66846 (<= (+ ?x8316 ?x8067 ?x8294 ?x7306) (- 5.0)) (<= (+ L_3 ?x375 ?x242 Q_4 A_1) (- 15.0)))))
 (let ((?x4500 (* (- 3.0) S_0)))
 (let ((?x9656 (+ (* 12.0 L_3) (* (- 12.0) A_4) (* 12.0 Q_4) (* 15.0 S_3) ?x4500)))
 (let (($x171107 (or $x71 $x22451 (<= (+ ?x1376 ?x3209 S_4 (* (/ 3.0 2.0) Q_4) ?x2758) 0.0))))
 (let (($x169012 (or $x5406 $x8243 (<= (+ ?x5222 (* (/ 1.0 3.0) A_3) ?x5343 ?x347 (* (/ 2.0 3.0) S_0)) 0.0))))
 (let (($x172571 (or $x51 $x659 (<= (+ ?x2555 ?x4367 ?x1775 ?x367 (* 3.0 S_3) L_1) (- 5.0)))))
 (let ((?x5735 (+ L_3 ?x2556 A_4 ?x380 A_2 ?x259)))
 (let (($x67167 (<= ?x5735 (- 10.0))))
 (let (($x171939 (or $x71 $x1650 $x67167 (<= (+ ?x8316 ?x372 (* (/ 3.0 4.0) A_4) (* (- (/ 3.0 4.0)) Q_4) ?x7306) (- 5.0)) (<= (+ L_3 ?x2473 ?x2562 ?x242 ?x2036 A_1) (- 15.0)))))
 (let (($x78403 (or $x2151 (<= (+ L_3 ?x372 S_4 A_1 ?x354 ?x242) 0.0) (<= (+ L_3 ?x372 S_4 (* (- (/ 1.0 2.0)) S_3) ?x1861) 0.0))))
 (let (($x71009 (<= 0.0 (+ ?x833 ?x3209 A_4 ?x380 (* (/ 1.0 2.0) A_1) (* (- (/ 1.0 2.0)) L_0)))))
 (let (($x170477 (or $x659 (<= (+ A_3 ?x375 Q_4 ?x367 S_2 L_0) 0.0) (not $x71009))))
 (let (($x68150 (<= (+ ?x380 A_1 ?x354 (* (- 1.0) L_0)) (- 5.0))))
 (let (($x454 (not (<= 0.0 (+ L_1 ?x259)))))
 (let (($x172645 (or $x51 (<= (+ S_4 (* 4.0 Q_4) ?x11852 (* 3.0 S_0) ?x11853) 0.0))))
 (let (($x71975 (or $x504 $x2151 $x4876 (<= (+ (* (- 3.0) Q_4) ?x1078 ?x2294 ?x1079 (* (- 3.0) L_0)) 0.0))))
 (let (($x38767 (or $x71 (<= (+ L_3 ?x372 L_1 ?x367 Q_4 (* 2.0 S_2)) 0.0))))
 (let (($x166737 (or $x61 $x1719 (<= (+ ?x276 A_4 ?x380 ?x1077 ?x1078 ?x347 ?x1080 ?x1081) 0.0))))
 (let (($x1733 (<= (+ ?x380 A_2 ?x354 ?x259) 0.0)))
 (let (($x81507 (or $x61 $x1733 (<= (+ ?x276 A_4 ?x380 ?x1065 ?x1066 ?x354 ?x1067 ?x1068) 0.0))))
 (let (($x71311 (<= (+ ?x833 (* (- (/ 1.0 2.0)) A_3) (* (- (/ 1.0 2.0)) A_1) S_2 (* (/ 1.0 2.0) L_1)) (- 5.0))))
 (let (($x79060 (or $x71 (<= (+ ?x2555 ?x2556 ?x1066 ?x2572 (* 2.0 S_2) ?x1067 ?x2573) 0.0))))
 (let (($x71173 (or $x51 $x659 (<= (+ L_3 A_3 ?x375 Q_4 ?x367 S_2 L_1 ?x259) 0.0) $x66232)))
 (let (($x82568 (or $x659 (<= (+ L_3 ?x375 ?x1073 Q_4 ?x1072 (* 3.0 S_2)) 0.0) $x71009)))
 (let (($x25971 (or $x659 (<= (+ L_3 ?x375 Q_4 (* 2.0 S_2) ?x341) 0.0) (<= (+ ?x2881 ?x4367 ?x1775 S_2 ?x341) 0.0))))
 (let (($x29075 (or $x659 (<= (+ L_3 ?x375 Q_4 ?x1102 (* 2.0 S_2) L_0) 0.0) (<= (+ ?x2881 ?x4367 ?x1775 ?x1102 S_2 L_0) 0.0))))
 (let (($x22740 (or $x659 (<= (+ ?x2881 ?x4367 ?x1775 S_1 ?x1079) 0.0) (<= (+ ?x6056 ?x4413 ?x4606 (* (/ 5.0 3.0) S_1) ?x1079) 0.0) (<= (+ L_3 ?x375 Q_4 A_2 ?x259 S_1 ?x1079) 0.0))))
 (let (($x81476 (or $x51 $x659 (<= (+ ?x276 ?x2881 ?x375 Q_4 ?x369 L_2 ?x1072 ?x2190 ?x1073) 0.0))))
 (let (($x67177 (<= (+ ?x833 (* (- (/ 1.0 2.0)) A_4) ?x793 ?x367 (* (/ 3.0 2.0) S_2) L_1) (- 5.0))))
 (let (($x168086 (or $x51 $x659 (<= (+ A_3 ?x375 Q_4 ?x367 S_2 L_1) (- 5.0)) $x67177)))
 (let ((?x1383 (* (/ 3.0 2.0) S_2)))
 (let ((?x1378 (* (/ 3.0 2.0) Q_4)))
 (let ((?x1130 (* (- (/ 1.0 2.0)) A_4)))
 (let (($x21884 (or $x51 $x659 (<= (+ A_3 ?x375 ?x1775 ?x367 S_2 L_1) 0.0) (<= (+ ?x833 ?x1130 ?x1378 ?x367 ?x1383 L_1) 0.0))))
 (let (($x21513 (or $x51 $x659 (<= (+ ?x2555 ?x4367 ?x4800 ?x367 (* 3.0 S_3) L_1) 0.0))))
 (let (($x68909 (<= (+ ?x3796 ?x372 (* (/ 2.0 3.0) A_4) (* (- (/ 2.0 3.0)) Q_4) (* (/ 1.0 3.0) S_1)) (- 5.0))))
 (let (($x173172 (or $x51 (<= (+ ?x1358 ?x3225 (* (- (/ 3.0 2.0)) A_1) S_0 (* (/ 3.0 2.0) L_1)) (- 5.0)))))
 (let (($x79111 (or $x51 (<= (+ ?x367 (* (/ 1.0 3.0) S_3) (* (/ 2.0 3.0) S_0) L_1) (- 5.0)))))
 (let (($x3133 (<= (+ ?x1358 ?x3225 (* (- (/ 1.0 2.0)) A_1) ?x347 S_0 (* (/ 1.0 2.0) L_1)) 0.0)))
 (let (($x11704 (<= (+ ?x1358 ?x3225 ?x369 (* (/ 1.0 2.0) A_1) (* (- (/ 1.0 2.0)) L_1) L_2) 0.0)))
 (let (($x167036 (or $x51 $x659 (<= (+ L_3 ?x375 Q_4 A_2 ?x367 S_3 L_1 ?x259) 0.0))))
 (let (($x15568 (or $x659 (<= (+ ?x1376 (* (- (/ 3.0 2.0)) A_4) ?x1378 (* (/ 5.0 2.0) S_2) ?x1079) 0.0) (<= (+ ?x2549 (* (- 3.0) A_4) ?x4800 S_2 ?x1079) 0.0))))
 (let ((?x2771 (* (- 3.0) S_1)))
 (let ((?x9629 (* 12.0 S_3)))
 (let ((?x9621 (* 9.0 Q_4)))
 (let ((?x9616 (* (- 9.0) A_4)))
 (let ((?x9618 (* 9.0 L_3)))
 (let (($x9672 (<= (+ ?x9618 ?x9616 ?x9621 (* (- 3.0) A_0) ?x9629 (* 3.0 L_0)) 0.0)))
 (let (($x12308 (or $x659 (<= (+ ?x2555 ?x4367 L_1 ?x1775 ?x367 (* 3.0 S_3)) 0.0))))
 (let (($x168080 (or $x61 (<= (+ ?x242 A_1 ?x1775 ?x1068 ?x1065 S_3) 0.0) (not (<= 0.0 (+ ?x1356 ?x1925 ?x1926 ?x367 ?x1861 L_1))))))
 (let (($x67570 (<= 0.0 (+ ?x1356 ?x1925 ?x1926 ?x367 ?x1861 L_1))))
 (let (($x67628 (or $x61 (<= (+ ?x1378 (* (/ 3.0 2.0) L_2) (* (- (/ 3.0 2.0)) A_2) S_3 ?x1861) 0.0) $x67570)))
 (let (($x62330 (or $x71 (<= (+ L_3 ?x372 (* (- (/ 1.0 2.0)) A_0) ?x1383 (* (/ 1.0 2.0) L_0)) (- 5.0)))))
 (let (($x448 (or $x659 $x1322)))
 (let (($x108 (>= S_1 S_0)))
 (let (($x111 (>= S_2 S_1)))
 (let (($x114 (>= S_3 S_2)))
 (let (($x119 (>= A_1 A_0)))
 (let (($x120 (>= A_2 A_1)))
 (let (($x121 (>= A_3 A_2)))
 (and (<= (+ A_3 ?x276) S_4) $x121 $x120 $x119 $x114 $x111 $x108 (or $x51 $x504) (or $x61 $x454) $x448 (or $x61 (<= (+ ?x369 S_2 L_2) (- 5.0))) (or $x61 (<= (+ ?x1077 ?x1078 S_2 ?x1079 ?x1080 ?x1081) 0.0)) (or $x61 (<= (+ ?x1065 ?x1066 S_2 ?x341 ?x1067 ?x1068) 0.0)) (or $x61 (<= (+ ?x1065 ?x1066 ?x1102 S_2 ?x1067 ?x1068 L_0) 0.0)) (or $x61 (<= (+ Q_4 ?x369 S_2 L_2) 0.0)) (<= (+ ?x369 S_2 L_2) 0.0) (or $x71 $x66232) (or $x71 (<= (+ L_3 ?x372 S_3) (- 5.0))) $x62330 (or $x71 $x504 (<= (+ L_3 ?x372 A_1 ?x1102 S_2) 0.0)) (or $x61 (<= (+ ?x369 A_1 ?x242 L_2) (- 5.0))) (or $x61 (<= (+ ?x1929 ?x1905 ?x2758) (- 5.0))) (or $x71 (<= (+ L_3 ?x372 A_1 S_3 ?x347 ?x242) 0.0)) (or $x51 $x61 $x71 (= (+ L_3 ?x372 ?x1071 ?x367 L_1 ?x1074) 0.0)) (or $x51 (<= (+ ?x367 S_1 L_1) (- 5.0))) (or $x2151 (<= (+ ?x354 S_1) (- 5.0))) (or $x51 $x454 (<= (+ A_2 ?x367 ?x354 S_1) 0.0)) (or $x1650 $x2151 $x5372) (or $x2151 (<= (+ ?x1102 ?x354 ?x2190 L_0) 0.0)) (or $x71 $x1650 (<= (+ ?x833 ?x372 ?x1343 ?x1356 (* (/ 1.0 2.0) S_2)) (- 5.0))) (or $x1733 $x5372) (or $x2151 (<= (+ ?x2294 (* 3.0 S_1) ?x1079) 0.0)) (or (<= (+ ?x833 ?x1130 ?x793 (* (/ 1.0 2.0) S_2)) (- 5.0)) $x659 $x4869) (or $x1733 $x2742) (or $x61 (<= (+ ?x1775 ?x1068 ?x1065 S_3 S_1) 0.0)) (or $x61 (<= (+ Q_4 L_2 ?x369 ?x1102 ?x2190 L_0) 0.0)) $x67628 $x168080 (or $x51 (<= (+ ?x2916 ?x2881 ?x1072 ?x2294 (* 2.0 S_0) ?x1073) 0.0)) (or $x659 (<= (+ L_3 ?x375 Q_4 ?x369 L_2 ?x2538) 0.0)) $x12308 (or $x659 $x9672) (or $x659 (<= (+ ?x9618 ?x9616 ?x9621 ?x9629 ?x2771) 0.0)) (or $x1719 $x8243) (or $x1719 (<= (+ ?x372 A_4 ?x380 ?x347 S_0) 0.0)) (or $x1650 $x2151 $x11747 $x67091) (or $x61 $x518 $x1733) (or $x71 $x1733 (<= (+ L_3 ?x2556 A_4 ?x380 ?x1071 ?x354 ?x1074) 0.0)) $x15568 (or $x51 (<= (+ Q_4 ?x367 S_1 L_1) 0.0)) $x167036 (or $x1719 $x2151 $x2742) (or $x61 (<= (+ Q_4 ?x1065 A_1 S_3 ?x242 ?x1068) 0.0)) (or $x61 $x11704) (or $x61 $x5406 (<= (+ ?x276 A_3 ?x369 ?x347 S_0 L_2) 0.0)) (or $x51 (<= (+ A_2 ?x1072 S_0 ?x1073 ?x259) (- 5.0))) (or $x61 (<= ?x12550 (- 5.0))) (or $x51 (<= (+ ?x1071 ?x1072 ?x354 S_0 ?x1073 ?x1074) 0.0)) (or $x61 (<= (+ ?x1065 ?x1066 S_3 ?x347 ?x1067 ?x1068) 0.0)) (or $x61 (<= (+ ?x1077 ?x1078 ?x1102 S_3 ?x1080 ?x1081 L_0) 0.0)) (or $x51 $x3133) $x79111 $x173172 (or $x71 $x1650 $x67167 $x68909) (or $x659 (<= (+ ?x2555 ?x4367 ?x1775 (* 3.0 S_3) ?x347) 0.0)) $x21513 $x21884 $x168086 (or $x51 (<= (+ ?x276 A_3 ?x369 ?x367 L_2 S_0 L_1) 0.0)) (or $x71 (<= (+ L_3 ?x372 Q_4 S_3) 0.0)) (or $x5406 (<= (+ ?x347 S_0) (- 5.0))) (or $x659 (<= (+ L_3 ?x375 Q_4 S_3) (- 5.0))) (or $x71 (<= (+ ?x2555 ?x2556 ?x1066 S_3 ?x1079 ?x1067) 0.0) $x69777) $x81476 (or $x51 $x1650 (<= (+ ?x372 A_4 ?x380 ?x367 S_0 L_1) (- 5.0))) $x22740 (or $x1650 $x2151 $x2742) (or $x1650 (<= (+ ?x372 A_4 ?x380 ?x347 S_0) 0.0) $x5406) (or $x61 (<= (+ L_3 ?x372 S_4 ?x369 A_1 ?x242 L_2) 0.0)) (or $x1650 $x5406 $x4407) (or $x1928 (<= (+ ?x372 A_4 ?x380 ?x347 S_0) 0.0) $x5406) $x29075 $x25971 (or $x1650 $x5406 $x8243) (or $x5406 (<= (+ (* (/ 1.0 3.0) S_3) ?x347 (* (/ 2.0 3.0) S_0)) 0.0)) (or $x5406 (<= (+ ?x369 L_2 S_3 ?x347 S_0) 0.0)) (or $x2151 (<= (+ ?x2036 ?x1066 ?x354 ?x341 ?x1067) 0.0) $x67091) (or $x51 (<= (+ ?x1775 ?x1072 S_2 S_0 ?x1073) 0.0)) (or $x71 $x1650 $x67167 (<= (+ L_3 ?x2473 ?x2562 ?x2036 A_1 ?x242) (- 10.0))) $x82568 (or $x51 (<= (+ L_3 ?x372 S_4 Q_4 ?x367 S_0 L_1) 0.0)) $x71173 (or $x659 $x4869 (<= (+ ?x3796 ?x4586 ?x4604 (* (/ 1.0 3.0) S_1)) (- 5.0)) $x66846) (or $x51 (<= (+ A_2 ?x367 ?x347 S_0 L_1 ?x259) 0.0)) (or $x51 $x71 (<= 0.0 (+ ?x276 A_3 ?x1065 A_1 ?x242 ?x1068))) $x79060 (or $x51 $x71 $x71311) (or $x51 (<= (+ ?x367 (* (/ 1.0 2.0) S_2) ?x1861 L_1) (- 5.0))) (or $x61 $x518 $x1719) $x81507 (or $x61 $x659 (<= (+ L_3 ?x375 ?x1775 ?x369 ?x2538 L_2) 0.0)) (or $x2151 (<= (+ S_4 (* (- 3.0) S_3) ?x2190) 0.0)) (or $x1733 $x11747 $x67091) (or $x1719 $x2151 $x67091) (or $x504 $x2151 $x67091 $x68150) (or $x61 $x518 $x1773) (or $x51 (<= (+ Q_4 A_2 ?x1072 S_0 ?x1073 ?x259) 0.0)) (or $x5406 (<= (+ L_3 ?x372 S_4 ?x347 S_0) 0.0)) (or $x61 (<= (+ L_3 ?x372 S_4 Q_4 L_2 ?x369 S_1) 0.0)) (or $x61 $x518 $x1650) (or $x71 $x1650 (<= ?x5735 (- 5.0))) (or $x61 $x1650 $x15385) (or $x2151 $x5372 (<= (+ ?x2036 ?x1066 ?x1102 ?x354 ?x1067 L_0) 0.0)) $x166737 (or $x71 (<= (+ ?x2555 ?x2556 ?x1071 S_3 ?x347 ?x1074) 0.0)) (or $x71 (<= (+ ?x2555 ?x2556 S_4 Q_4 A_2 ?x259) 0.0)) (or $x5406 (<= (+ S_4 (* (- 4.0) S_2) (* 3.0 S_0)) 0.0)) (or $x61 $x659 (<= (+ ?x276 ?x2881 ?x375 Q_4 ?x1065 S_2 ?x1068) 0.0)) (or $x71 (<= (+ ?x2555 ?x2556 S_4 ?x1775 S_2) 0.0)) $x38767 (or $x51 (<= (+ A_2 ?x367 ?x354 S_1 L_1 ?x259) 0.0)) (or $x61 (<= (+ ?x1065 ?x1066 S_1 ?x1079 ?x1067 ?x1068) 0.0)) (or $x61 (<= (+ ?x369 A_1 ?x1102 S_1 ?x242 L_2 L_0) 0.0)) (or $x51 (<= (+ ?x367 S_0 L_1) (- 10.0))) (or $x1733 $x4558 $x4876) $x71975 (or $x2151 $x4876 (<= (+ ?x2036 ?x1066 ?x354 ?x341 ?x1067) 0.0)) (or $x2151 (<= (+ ?x2036 ?x1066 ?x1102 ?x354 ?x1067 L_0) 0.0) $x67091) (or $x51 $x2151 $x30623 $x67091) (or $x2151 $x29522 $x67091) $x172645 (or $x71 $x454 (<= (+ L_3 ?x372 A_2 ?x2758 ?x1915 ?x242) 0.0)) (or $x61 $x659 (<= (+ A_3 ?x375 Q_4 ?x369 S_3 L_2) 0.0)) (or $x71 (<= (+ ?x2296 ?x2473 ?x1078 ?x2572 ?x2538 ?x1080 ?x2573) 0.0) $x20828) (or $x504 $x2151 $x5372 $x7477) (or $x504 $x2151 $x5372 $x68150) $x170477 $x78403 (or $x2151 $x5372 (<= (+ ?x1358 ?x3225 ?x1356 ?x354 ?x2758) 0.0)) $x171939 (or $x61 $x1650 (<= (+ ?x372 A_4 ?x380 ?x369 S_1 L_2) (- 5.0))) (or $x61 $x1650 $x15414) $x172571 (or $x51 $x1650 (<= (+ ?x8321 ?x8254 ?x8308 ?x367 ?x8315 L_1) (- 5.0))) (or $x71 $x2151 $x4558 $x30623) (or $x2151 $x5372 $x30623) (or $x51 (<= (+ Q_4 ?x367 S_0 L_1) (- 5.0))) $x169012 (or $x4407 $x5406 $x7900) $x171107 (or $x659 (<= ?x9656 0.0)) $x73876 (or $x2151 $x12165 (<= (+ (* (- (/ 1.0 2.0)) S_3) ?x1861) (- 5.0))) (or $x71 $x1650 $x20475 $x68241) (or $x61 $x1650 (<= (+ ?x276 A_4 ?x380 ?x1077 ?x1066 ?x1067 ?x1081) (- 5.0))) $x168342 (or $x2151 (<= (+ L_3 ?x372 S_4 ?x354 S_1) 0.0)) (or $x2151 $x2742 (<= (+ ?x2036 ?x1066 ?x1102 ?x354 ?x1067 L_0) 0.0)) (or $x2151 $x2742 $x26257) $x82486 $x74297 (or $x51 $x659 (<= (+ A_3 ?x375 Q_4 ?x367 S_2 L_1) 0.0)) $x168896 (or $x1719 $x4407) (or $x61 (<= (+ ?x1077 ?x1078 S_3 ?x341 ?x1080 ?x1081) 0.0)) (or $x61 $x1758 $x15385) (or $x61 (<= (+ ?x15387 ?x3139 S_3 ?x1079 ?x3214 ?x15368) 0.0)) (or $x71 $x19313 (<= 0.0 (+ ?x372 A_4 ?x369 A_1 ?x242 L_2))) (or $x71 (<= (+ ?x2555 ?x2556 ?x1066 S_3 ?x1079 ?x1067) 0.0) $x20828) (or $x71 (<= (+ ?x2555 ?x2556 ?x1066 S_3 ?x1079 ?x1067) 0.0) $x20475) (or $x51 (<= (+ ?x369 ?x367 S_3 L_2 S_0 L_1) (- 5.0))) $x166575 $x173032 $x50673 (or $x2151 $x11747 $x38337 $x40042 $x67091) (or $x51 $x659 (<= (+ ?x276 ?x2881 ?x375 Q_4 ?x1072 S_0 ?x1073) 0.0)) $x168243 $x78434 (or $x51 $x659 (<= (+ ?x276 ?x2549 ?x4367 ?x1775 ?x2550 ?x2190 ?x2552) 0.0)) (or $x61 $x659 (<= (+ L_3 ?x375 Q_4 ?x369 ?x2538 L_2) (- 5.0))) (or $x71 (<= (+ ?x2555 ?x2556 ?x1066 (* 2.0 S_2) ?x2412 ?x1067) 0.0)) (or $x71 $x20475 $x26278) (or $x71 $x26278 $x69777) (or $x61 (<= (+ S_4 Q_4 ?x1077 ?x1066 ?x1067 ?x1081) 0.0)) $x169815 (or $x2151 $x4876 $x26257) (or $x51 $x2151 (<= (+ A_3 ?x367 ?x2294 ?x2190 L_1 ?x259) 0.0) $x66232) (or $x71 $x20828 $x26278) (or $x61 $x1773 $x15414) (or $x61 $x518 $x1758) (or $x51 $x22479) (or $x2151 $x67091 (<= (+ ?x380 A_1 ?x354 ?x242) (- 5.0))) (or $x2151 $x5372 (<= (+ ?x380 A_1 ?x354 ?x242) (- 5.0))) (or $x1719 $x2151 $x4876) (or $x2151 $x5372 $x29522) (or $x2151 $x5372 $x26610) (or $x71 (<= 0.0 (+ ?x1358 ?x3225 ?x1356 ?x369 ?x2758 L_2)) $x40676) (or $x2151 $x2742 $x26610) (or $x2151 $x4876 (<= (+ ?x2036 ?x1066 ?x1102 ?x354 ?x1067 L_0) 0.0)) (or $x71 $x1650 $x15905) (or $x71 $x1322 (<= (+ ?x2555 ?x2473 A_4 ?x4680 ?x367 L_1 ?x4684) 0.0)) (or $x71 $x1650 $x2151 $x19296) $x166466 (or $x61 $x1650 (<= (+ ?x5222 ?x6224 ?x5343 ?x369 ?x6113 L_2) (- 5.0))) (or $x51 $x2151 (<= (+ ?x276 A_3 ?x367 ?x2294 ?x2190 L_1) 0.0)) (or $x71 $x2151 (<= (+ L_3 ?x372 A_1 S_1 ?x1079 ?x242) 0.0)) (or $x71 $x21407 (<= (+ L_3 ?x372 A_1 S_1 ?x1079 ?x242) 0.0)) (or $x71 (<= (+ ?x2555 ?x2556 ?x1066 S_3 ?x1079 ?x1067) 0.0) $x21407) (or $x71 $x2151 $x26278) (or $x71 $x1719 $x19296 $x21407) (or $x61 $x659 (<= (+ ?x6056 ?x2881 ?x4413 ?x4606 ?x1065 ?x6113) 0.0) $x66232) $x79389 $x173567 (or $x51 $x659 $x18910) $x166762 (or $x2151 $x2742 (<= (+ ?x380 A_1 ?x354 ?x242) (- 5.0))) (or $x1719 $x2151 $x5372) $x75991 (or $x71 $x20475 (<= (+ L_3 ?x372 ?x2036 ?x1078 ?x2412 ?x1080) 0.0) $x52433) (or $x71 $x19313 $x20475 $x50014) (or $x71 $x22451 $x30614) (or $x71 $x23649 $x30591 $x68241) (or $x71 $x20828 (<= (+ L_3 ?x372 A_1 S_1 ?x1079 ?x242) 0.0)) (or $x61 (<= (+ ?x276 A_3 ?x1065 S_1 ?x1068) (- 5.0))) $x170733 $x79173 $x166582 (or $x2151 $x11747 $x30623 $x67091) $x173564 (or $x71 (<= (+ L_3 ?x372 A_1 S_1 ?x1079 ?x242) 0.0) $x69777) (or $x71 $x1650 $x19296 $x69777) (or $x71 $x1650 $x19296 $x20475) (or $x71 $x1650 $x18244 $x20828) (or $x71 $x1650 $x19296 $x20828) (or $x71 $x20828 $x46762) (or $x71 (<= (+ L_3 ?x372 A_2 ?x367 S_2 L_1 ?x259) 0.0)) (or $x71 $x19296 $x23649 $x30591) (or $x71 $x659 $x7900 $x19296 $x68240) (or $x61 (<= (+ ?x369 (* (/ 3.0 2.0) S_1) ?x1915 L_2) (- 5.0))) $x57150 (or $x61 (<= (+ S_4 ?x4800 ?x1081 ?x1077 ?x2190) 0.0)) (or $x1928 $x5406 $x8243) (or $x61 (<= (+ A_3 Q_4 L_2 ?x1065 S_1) 0.0) $x66232) (or $x61 (<= (+ ?x276 A_3 Q_4 ?x1065 S_1 ?x1068) 0.0)) (or $x71 $x20828 $x30580 $x52433) (or $x71 $x18244 $x20828 $x50014) (or $x61 $x518 $x1762) $x171136 (or $x1650 $x2151 $x4876 $x4558) (or $x61 (<= (+ Q_4 L_2 ?x369 S_1) (- 5.0))) (or $x2151 $x26610 $x67091) (or $x2151 $x4876 $x26610) $x171150 $x168889 (or $x504 $x2151 $x2742 $x7477) (or $x2151 $x2742 $x30623) (or $x71 $x32166) (or $x2151 $x2742 $x29522) (or $x61 (<= ?x1814 (- 5.0))) $x172058 $x172908 (or $x71 (<= (+ ?x2296 ?x2473 ?x1078 ?x2538 ?x2412 ?x1080) 0.0) $x20475) (or $x2151 $x4876 (<= (+ ?x380 A_1 ?x354 ?x242) (- 5.0))) (or $x2151 $x4876 $x29522) (or $x51 $x2151 $x4876 $x30623) $x166060 $x168072 (or $x51 $x27413) (or $x61 $x1764 (<= (+ ?x2916 ?x2881 Q_4 ?x1077 S_0 ?x1081) 0.0)) (or $x71 $x15905 $x26800) (or $x71 $x26828 (<= (+ ?x2296 ?x2473 ?x380 ?x11409 ?x1079 ?x11479) 0.0)) (or $x71 $x15896 (<= 0.0 ?x20568)) (or $x71 $x15896 (<= (+ ?x2555 ?x2556 ?x380 ?x4680 ?x341 ?x4684) 0.0)) $x170121 $x172318 $x173026 $x77276 $x167319 (or $x71 (<= (+ ?x2296 ?x2473 ?x4800 (* 4.0 S_2) ?x1079) 0.0)) $x69690 $x79861 $x77560 $x169948 $x171113 (or $x2151 $x4876 $x11747 $x30623) (or $x61 (<= ?x12550 (- 10.0)) $x74026) (or $x61 (<= (- 5.0) (+ L_1 ?x367 S_0)) $x77587) $x169712 (or $x61 $x1860 (<= (+ S_4 ?x1067 ?x1066 ?x4800 ?x1081 ?x1077) 0.0)) $x172767 $x169857 (or $x71 (<= ?x45734 0.0)) (or $x71 (<= (+ ?x2296 ?x2473 ?x4680 S_2 ?x1079 ?x4684) 0.0)) $x167339 $x169507 (or $x71 (<= (+ ?x2296 ?x2473 ?x4680 S_3 ?x341 ?x4684) 0.0)) (or $x71 (<= (+ ?x2555 ?x2556 ?x1071 S_2 ?x341 ?x1074) 0.0)) (or $x71 (<= (+ ?x12671 ?x3135 ?x11409 S_3 ?x1079 ?x11479) 0.0)) $x77958 $x77961 $x78050 $x78203 $x34 (not (>= (+ L_3 S_4 ?x375) 0.0)) (<= (+ L_3 ?x372 S_3) 0.0) (<= (+ ?x1102 S_0 L_0) 0.0) (<= (+ L_3 S_4 ?x375 Q_4) 0.0) (<= (+ ?x367 S_1 L_1) 0.0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
