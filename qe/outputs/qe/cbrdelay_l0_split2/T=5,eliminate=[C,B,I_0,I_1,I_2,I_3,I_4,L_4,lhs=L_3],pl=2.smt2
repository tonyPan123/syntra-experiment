; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_3 () Real)
(declare-fun S_1 () Real)
(declare-fun S_4 () Real)
(declare-fun A_3 () Real)
(declare-fun L_2 () Real)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(declare-fun S_0 () Real)
(declare-fun A_1 () Real)
(declare-fun L0 () Real)
(declare-fun L_3 () Real)
(declare-fun S_2 () Real)
(declare-fun A_2 () Real)
(declare-fun L_1 () Real)
(declare-fun A_4 () Real)
(assert
 (let (($x6147 (<= (+ L_0 (* (- 1.0) A_0) (* 2.0 S_1) (* (- 1.0) S_3)) 0.0)))
 (let (($x5722 (<= (+ S_1 (* (- 1.0) S_3)) (- 5.0))))
 (let (($x1759 (<= (+ (* (- 1.0) A_1) L_0 S_1) 0.0)))
 (let (($x37 (>= L0 0.0)))
 (let (($x1727 (<= (+ L_0 S_0 (* (- 1.0) A_0)) 0.0)))
 (let (($x20409 (<= (+ L_3 (* (- 1.0) A_3) (* (/ 3.0 4.0) S_4) (* (/ 1.0 4.0) S_0)) (- 5.0))))
 (let ((?x1292 (* (/ 1.0 2.0) A_1)))
 (let ((?x896 (* (- (/ 3.0 2.0)) A_3)))
 (let ((?x5769 (* (- (/ 1.0 2.0)) L_0)))
 (let ((?x2433 (* (/ 3.0 2.0) L_3)))
 (let (($x74 (= L_3 L_2)))
 (let ((?x312 (* (- 1.0) S_1)))
 (let ((?x8778 (* 3.0 S_2)))
 (let ((?x2942 (* (- 2.0) A_3)))
 (let ((?x2422 (* 2.0 L_3)))
 (let (($x24204 (<= (+ L_3 (* (- 1.0) A_3) (* (- 1.0) S_0) (* 2.0 S_1)) (- 5.0))))
 (let ((?x1856 (* (/ 1.0 2.0) S_0)))
 (let ((?x11949 (* (- (/ 1.0 2.0)) A_2)))
 (let ((?x267 (* (- 1.0) A_3)))
 (let ((?x239 (* (- 1.0) A_2)))
 (let ((?x624 (* (- 1.0) L_0)))
 (let ((?x4126 (* 2.0 L_2)))
 (let (($x64 (= L_2 L_1)))
 (let (($x26726 (or $x64 (<= (+ ?x4126 ?x624 ?x267 S_4 A_1 ?x239) (- 5.0)) (<= (+ (* (/ 3.0 2.0) L_2) ?x267 S_4 ?x11949 ?x1856) (- (/ 5.0 2.0))))))
 (let ((?x8297 (* (- 3.0) A_2)))
 (let ((?x2941 (* 2.0 A_1)))
 (let ((?x5277 (* (- 2.0) L_0)))
 (let ((?x432 (* 3.0 L_2)))
 (let (($x26718 (or $x64 (<= (+ ?x432 ?x5277 S_4 ?x2941 ?x8297) (- 15.0)) (<= (+ ?x4126 S_4 (* (- 2.0) A_2) S_0) (- 10.0)))))
 (let ((?x8765 (* 4.0 S_2)))
 (let ((?x1085 (* (- 1.0) S_0)))
 (let ((?x8615 (* (- 3.0) A_3)))
 (let ((?x8339 (* 3.0 L_3)))
 (let (($x28454 (or (<= (+ L_3 ?x624 ?x267 S_4 A_1 (* (- 1.0) S_3)) 0.0) (<= (+ L_2 ?x267 S_4 ?x1856 (* (- (/ 1.0 2.0)) S_3)) 0.0))))
 (let (($x22343 (or $x74 (<= (+ (* (/ 1.0 2.0) L_3) (* (- (/ 1.0 2.0)) A_3) (* (/ 1.0 2.0) S_1)) (- (/ 15.0 2.0))))))
 (let (($x1757 (<= (+ A_1 ?x624 (* (- 1.0) S_2)) 0.0)))
 (let ((?x6330 (* (/ 3.0 2.0) S_1)))
 (let ((?x1766 (* (- 1.0) A_0)))
 (let ((?x6273 (* (- (/ 1.0 2.0)) A_3)))
 (let ((?x1274 (* (/ 1.0 2.0) L_3)))
 (let (($x8166 (<= (+ ?x2422 (* (- 2.0) L_2) ?x2942 (* 2.0 A_2) S_2 ?x312) 0.0)))
 (let (($x26573 (or $x64 (<= (+ L_2 ?x624 A_1 ?x239) (- 10.0)) (<= (+ (* (/ 1.0 2.0) L_2) ?x11949 ?x1856) (- (/ 15.0 2.0))))))
 (let ((?x9062 (* 4.0 A_2)))
 (let ((?x8310 (* (- 4.0) A_3)))
 (let ((?x4599 (* (- 4.0) L_2)))
 (let ((?x1367 (* 4.0 L_3)))
 (let ((?x8455 (* 2.0 A_2)))
 (let ((?x301 (* (- 1.0) A_1)))
 (let ((?x1075 (* (- 2.0) L_2)))
 (let (($x526 (<= (+ ?x8339 (* (- 3.0) L_2) ?x8615 (* 3.0 A_2) ?x312 S_3) 0.0)))
 (let ((?x525 (* (- 1.0) S_3)))
 (let ((?x3086 (* (- 2.0) A_2)))
 (let ((?x9488 (* 2.0 A_3)))
 (let ((?x8521 (* (- 2.0) L_3)))
 (let (($x40001 (or $x64 (<= (+ ?x8521 ?x4126 ?x9488 ?x3086 S_0 ?x525) 0.0) (>= S_3 (+ L_2 ?x239 (* (- 1.0) L_3) A_3 ?x624 A_1)))))
 (let (($x9650 (<= (+ ?x8339 (* (- 3.0) L_2) ?x8615 (* 3.0 A_2) ?x1085 S_2) 0.0)))
 (let (($x2224 (<= (+ L_0 S_4 ?x301 (* (/ 3.0 2.0) S_0) (* (- (/ 3.0 2.0)) S_3)) 0.0)))
 (let (($x2057 (>= S_4 (+ A_3 (* (- 1.0) L_2)))))
 (let (($x26499 (or $x2057 (<= (+ (* (- (/ 1.0 3.0)) S_4) (* (/ 1.0 3.0) S_0)) (- 5.0)) (<= (+ ?x5769 (* (- (/ 1.0 2.0)) S_4) ?x1292) (- 5.0)))))
 (let (($x26498 (or $x74 (<= (+ ?x1274 ?x5769 ?x6273 ?x1292) (- (/ 15.0 2.0))) (<= (+ L_3 ?x267 S_0) (- 20.0)))))
 (let (($x28112 (or $x64 (<= (+ ?x8521 ?x432 ?x9488 ?x8297 S_0) (- 5.0)) (>= (+ ?x1075 ?x8455 L_3 ?x267 L_0 ?x301) 5.0))))
 (let ((?x519 (* (- 1.0) S_4)))
 (let ((?x8301 (* 3.0 A_3)))
 (let ((?x8296 (* (- 3.0) L_3)))
 (let (($x27640 (or $x64 (<= (+ ?x8296 ?x432 ?x8301 ?x519 ?x8297 S_0) 0.0) (<= (+ ?x8521 ?x4126 ?x624 ?x9488 ?x519 A_1 ?x3086) 0.0))))
 (let (($x29929 (or $x74 (<= (+ ?x2422 ?x1075 ?x2942 ?x8455 (* (- 1.0) S_2) S_3) 0.0))))
 (let (($x1063 (<= (+ ?x8339 (* (- 3.0) L_2) L_0 ?x8615 ?x1766 (* 3.0 A_2) S_3) 0.0)))
 (let ((?x285 (* (- 1.0) S_2)))
 (let ((?x3982 (* (- (/ 1.0 2.0)) A_1)))
 (let ((?x3515 (* (/ 1.0 2.0) A_3)))
 (let ((?x3516 (* (/ 1.0 2.0) L_1)))
 (let ((?x1130 (* (- (/ 1.0 2.0)) L_3)))
 (let (($x54 (= L_1 L_0)))
 (let (($x5000 (<= (+ ?x2433 (* (- (/ 3.0 2.0)) L_1) ?x896 S_4 (* (/ 3.0 2.0) A_1) ?x285) 0.0)))
 (let ((?x4915 (* (/ 5.0 2.0) A_1)))
 (let ((?x5510 (* (- (/ 5.0 2.0)) A_3)))
 (let ((?x4826 (* (- (/ 5.0 2.0)) L_1)))
 (let ((?x5002 (* (/ 5.0 2.0) L_3)))
 (let (($x30619 (or $x54 (<= (+ ?x1130 (* (/ 3.0 2.0) L_1) ?x3515 (* (- (/ 3.0 2.0)) A_1) S_0) (- 5.0)))))
 (let (($x1283 (not (= L_2 L_3))))
 (let (($x29911 (or $x64 $x1283 (<= (+ ?x624 ?x9488 ?x519 A_1 ?x3086) 0.0) (<= (+ ?x8301 ?x519 ?x8297 S_0) 0.0))))
 (let (($x40046 (or $x64 (<= (+ (* (- 2.0) L_1) ?x4126 S_4 ?x2941 ?x3086 ?x525) 0.0))))
 (let (($x2322 (<= (+ (* (- 3.0) L_1) ?x432 S_4 (* 3.0 A_1) ?x8297 ?x285) 0.0)))
 (let (($x29372 (or $x74 (<= (+ ?x2422 (* (- 2.0) L_1) L_0 ?x2942 S_4 ?x2941 ?x1766) 0.0))))
 (let (($x13213 (or $x64 (<= (+ (* (- 1.0) L_3) L_2 A_3 ?x519 ?x239 S_2) 0.0))))
 (let (($x2313 (<= (+ ?x5277 ?x2941 ?x1085 ?x525) 0.0)))
 (let (($x3871 (not $x2313)))
 (let (($x1406 (= L_2 L_0)))
 (let (($x8348 (not (= L_0 L_2))))
 (let (($x355 (= L_3 L_0)))
 (let (($x8701 (<= (+ (* 4.0 L_1) S_4 (* (- 4.0) A_1) (* 3.0 S_0)) (- 20.0))))
 (let (($x4096 (not (= L_0 L_1))))
 (let (($x1002 (<= (+ ?x1856 (* (- (/ 1.0 2.0)) S_3)) (- 5.0))))
 (let (($x16660 (or $x54 (<= (+ (* 2.0 L_1) (* (- 2.0) A_1) S_0 S_2) (- 10.0)))))
 (let ((?x8151 (* (- 4.0) A_2)))
 (let ((?x6716 (* 4.0 A_1)))
 (let ((?x8163 (* 4.0 L_2)))
 (let ((?x6635 (* (- 4.0) L_1)))
 (let (($x27491 (or $x74 (<= (+ ?x2422 (* (- 2.0) L_1) ?x2942 ?x2941 ?x1085 S_3) 0.0))))
 (let (($x11146 (or $x54 (<= (+ L_1 (* (- 1.0) L_2) ?x301 A_2 S_0 ?x285) 0.0))))
 (let (($x5785 (<= (+ (* (- 3.0) L_1) ?x432 (* 3.0 A_1) ?x8297 ?x312 S_3) 0.0)))
 (let (($x30505 (or $x64 (<= (+ (* (- 2.0) L_1) ?x4126 ?x2941 ?x3086 ?x285 S_3) 0.0))))
 (let ((?x1470 (* (- 5.0) A_2)))
 (let ((?x4807 (* 5.0 A_1)))
 (let ((?x8415 (* 5.0 L_2)))
 (let ((?x6214 (* (- 5.0) L_1)))
 (let (($x14141 (or $x54 (<= (+ L_1 (* (- 1.0) L_2) ?x301 A_2 S_1 ?x525) 0.0))))
 (let (($x40144 (or $x74 (<= (+ L_3 (* (- 1.0) L_2) L_0 ?x267 ?x301 A_2 S_2) 0.0))))
 (let (($x5796 (<= (+ (* (- 3.0) L_1) ?x432 L_0 (* 3.0 A_1) ?x1766 ?x8297 S_3) 0.0)))
 (let (($x2915 (<= (+ ?x2433 (* (- (/ 3.0 2.0)) L_1) L_0 ?x896 (* (/ 3.0 2.0) A_1) ?x1766 S_3) 0.0)))
 (let (($x13506 (or $x74 (<= (+ L_3 (* (- 1.0) L_1) ?x267 A_1 ?x285 S_3) 0.0))))
 (let (($x2274 (<= (+ ?x2433 (* (- (/ 3.0 2.0)) L_1) ?x896 (* (/ 3.0 2.0) A_1) ?x1085 S_2) 0.0)))
 (let (($x11097 (or $x74 (<= (+ L_3 (* (- 1.0) L_1) L_0 ?x267 A_1 ?x1766 S_2) 0.0))))
 (let (($x8183 (<= (+ ?x8339 (* (- 3.0) L_2) ?x8615 S_4 (* 3.0 A_2) ?x285) 0.0)))
 (let ((?x5239 (* 5.0 A_2)))
 (let ((?x8929 (* (- 5.0) A_3)))
 (let ((?x9645 (* (- 5.0) L_2)))
 (let ((?x9511 (* 5.0 L_3)))
 (let (($x8390 (<= (+ ?x8339 (* (- 3.0) L_2) L_0 ?x8615 S_4 ?x301 (* 3.0 A_2)) 0.0)))
 (let (($x3410 (<= (+ (* (- 3.0) L_1) ?x432 (* 3.0 A_1) ?x8297 ?x1085 S_2) 0.0)))
 (let (($x7978 (<= (+ (* 2.0 L_1) ?x1075 ?x519 (* (- 2.0) A_1) ?x8455 S_1) 0.0)))
 (let (($x12534 (or $x64 (<= (+ (* (- 1.0) L_1) L_2 L_0 A_1 ?x1766 ?x239 S_1) 0.0))))
 (let (($x8420 (or $x74 (<= (+ ?x1274 (* (- (/ 1.0 2.0)) L_1) L_0 ?x6273 ?x1292 ?x1766 S_1) 0.0))))
 (let ((?x1200 (* 3.0 A_2)))
 (let ((?x6442 (* (- 3.0) A_1)))
 (let ((?x8453 (* (- 3.0) L_2)))
 (let ((?x5948 (* 3.0 L_1)))
 (let (($x39866 (or $x64 (<= (+ (* (- 2.0) L_1) ?x4126 L_0 ?x2941 ?x1766 ?x3086 S_2) 0.0))))
 (let (($x5503 (<= (+ (* 2.0 L_1) ?x1075 (* (- 2.0) A_1) ?x8455 S_0 ?x525) 0.0)))
 (let (($x39356 (or $x74 (<= (+ ?x2422 (* (- 2.0) L_1) ?x2942 S_4 ?x2941 ?x312) 0.0))))
 (let (($x1793 (<= (+ ?x1130 L_2 (* (- (/ 1.0 2.0)) L_1) ?x3515 ?x1292 ?x239) 0.0)))
 (let (($x30487 (or $x54 $x74 (not $x1793) (= (+ ?x1274 (* (- 1.0) L_2) ?x3516 ?x6273 ?x3982 A_2) 0.0))))
 (let (($x3397 (= L_3 L_1)))
 (let (($x781 (not (= L_1 L_2))))
 (let (($x26815 (or $x54 $x781 $x3397 (not (<= (+ ?x1130 ?x3516 ?x3515 ?x1292 ?x239) 0.0)) (= (+ ?x1274 (* (- (/ 1.0 2.0)) L_1) ?x6273 ?x3982 A_2) 0.0))))
 (let (($x876 (<= L_1 L_0)))
 (let (($x9038 (or $x64 (<= (+ (* (- 1.0) L_3) L_2 A_3 ?x239 S_1 ?x525) 0.0))))
 (let (($x26882 (or $x64 $x1757 (<= (+ (* (- 1.0) L_3) L_2 A_3 ?x239 S_0 ?x285) 0.0))))
 (let (($x29994 (or $x64 (<= (+ (* (- 2.0) L_1) ?x4126 ?x2941 ?x3086 S_2 ?x312) 0.0))))
 (let (($x7824 (<= (+ (* 2.0 L_1) (* (- 1.0) L_2) (* (- 2.0) A_1) A_2 S_0) (- 5.0))))
 (let (($x28712 (or $x64 (<= (+ (* (- 1.0) L_1) ?x4126 ?x267 S_4 A_1 ?x239) 0.0))))
 (let (($x2865 (or $x74 (<= (+ L_3 (* (- 1.0) L_1) ?x267 A_1 S_2 ?x312) 0.0))))
 (let (($x1850 (or $x74 (<= (+ L_3 (* (- 1.0) L_1) ?x267 A_1 ?x1085 S_1) 0.0))))
 (let (($x29354 (or $x64 (<= (+ (* (- 2.0) L_1) ?x4126 ?x2941 ?x3086 ?x1085 S_1) 0.0))))
 (let (($x5774 (or $x74 (<= (+ L_3 (* (- 1.0) L_1) ?x267 S_4 A_1 ?x525) 0.0))))
 (let (($x4222 (<= (+ ?x2433 (* (- (/ 3.0 2.0)) L_1) ?x896 (* (/ 3.0 2.0) A_1) ?x312 S_3) 0.0)))
 (let (($x2165 (or $x74 (<= (+ L_3 (* (- 1.0) L_2) L_0 ?x267 ?x1766 A_2 S_1) 0.0))))
 (let (($x27038 (or $x54 $x2057 (<= (+ (* (- 1.0) L_2) L_1 ?x519 ?x301 A_2 S_2) 0.0))))
 (let ((?x983 (* (- (/ 3.0 2.0)) A_1)))
 (let ((?x3249 (* (/ 3.0 2.0) A_3)))
 (let ((?x4340 (* (/ 3.0 2.0) L_1)))
 (let ((?x2062 (* (- (/ 3.0 2.0)) L_3)))
 (let (($x3065 (or $x54 (<= (+ (* (- 1.0) L_3) L_1 A_3 ?x301 S_0 ?x525) 0.0))))
 (let (($x9036 (or $x54 (<= (+ (* (- 1.0) L_3) L_1 A_3 ?x519 ?x301 S_1) 0.0))))
 (let (($x875 (not (<= L_2 L_1))))
 (let (($x1023 (or $x64 $x875)))
 (let (($x6428 (not (= L_1 L_3))))
 (let (($x1585 (or $x74 (not (<= L_3 L_2)))))
 (let (($x883 (not $x876)))
 (let (($x1236 (or $x54 $x883)))
 (let ((?x517 (* (- 1.0) L_2)))
 (let ((?x518 (+ A_2 ?x517)))
 (let (($x626 (<= ?x518 S_4)))
 (let (($x795 (<= (+ A_1 (* (- 1.0) L_1)) S_3)))
 (let (($x797 (not (<= ?x518 S_3))))
 (let (($x125 (>= A_4 A_3)))
 (let (($x124 (>= A_3 A_2)))
 (let (($x122 (>= A_1 A_0)))
 (let (($x117 (>= S_3 S_2)))
 (let (($x114 (>= S_2 S_1)))
 (let (($x111 (>= S_1 S_0)))
 (let (($x36 (>= L_0 L0)))
 (let (($x1658 (<= S_4 (+ A_4 (* (- 1.0) L_3)))))
 (and $x1658 $x36 $x111 $x114 $x117 $x122 $x124 $x125 $x797 $x795 $x626 $x1236 $x1585 (or $x876 (<= (+ ?x3249 ?x519 ?x983 S_0) 0.0) $x6428) $x1023 $x9036 $x3065 (or $x54 (<= (+ ?x2062 ?x4340 ?x3249 ?x519 ?x983 S_0) 0.0)) (or $x64 $x1283 (<= (+ ?x9488 ?x519 ?x3086 S_1) 0.0)) $x27038 (or $x54 $x74 (<= (+ ?x1274 ?x3516 ?x6273 ?x3982 S_2) (- 5.0))) $x2165 (or $x74 $x4222) (or (<= (+ (* (- (/ 1.0 2.0)) S_4) (* (/ 1.0 2.0) S_1)) (- 5.0)) $x2057) (or (<= (+ L_0 (* (- (/ 1.0 2.0)) S_4) ?x1766 ?x6330) 0.0) $x2057) (or (<= (+ ?x519 ?x1085 (* 2.0 S_1)) 0.0) $x2057) $x5774 $x29354 (or $x64 (<= (+ L_2 ?x239 S_2) (- 5.0))) $x1850 $x2865 (or $x54 (<= (+ L_1 ?x301 S_1) (- 5.0))) (or $x64 (<= (+ ?x8521 ?x4126 ?x9488 ?x519 ?x3086 S_1) 0.0)) $x28712 (or $x54 $x7824) $x29994 (or $x74 (<= (+ ?x1274 (* (- (/ 1.0 2.0)) L_1) ?x6273 ?x1292) (- 5.0))) $x26882 $x9038 (or $x74 (<= (+ ?x2422 ?x1075 ?x2942 S_4 ?x8455 ?x525) 0.0)) (or $x781 $x876 (<= (+ (* (- 2.0) A_1) ?x8455 S_0 ?x525) 0.0)) $x26815 $x30487 (or $x64 $x1793) $x39356 (or $x54 $x5503) $x39866 (or $x54 $x2057 (<= (+ ?x5948 ?x8453 ?x519 ?x6442 ?x1200 S_0) 0.0)) (or $x3871 (<= (+ ?x5277 S_4 ?x2941 (* (- 3.0) S_3)) 0.0)) (or $x54 (<= (+ ?x1130 ?x3516 ?x3515 ?x3982 S_1 ?x525) 0.0)) $x8420 $x12534 (or $x54 $x2057 $x7978) (or $x74 (<= (+ ?x2422 ?x1075 ?x2942 ?x8455 ?x1085 S_1) 0.0)) (or $x64 $x3410) (or $x74 $x8390) (or $x74 (<= (+ ?x9511 ?x9645 ?x8929 S_4 ?x5239 ?x1085) 0.0)) (or $x74 $x8183) (or $x74 (<= (+ ?x1367 ?x4599 L_0 ?x8310 S_4 ?x1766 ?x9062) 0.0)) (or $x2057 (<= (+ (* (- 3.0) S_4) ?x1085 ?x8765) 0.0)) (or $x2057 (<= (+ L_0 (* (- 2.0) S_4) ?x1766 ?x8778) 0.0)) $x11097 (or $x74 $x2274) (or $x54 $x2057 (<= (+ ?x1130 ?x3516 ?x3515 ?x519 ?x3982 S_2) 0.0)) (or (<= (+ (* (/ 2.0 3.0) S_0) ?x285 (* (/ 1.0 3.0) S_3)) 0.0) $x1757) $x13506 (or $x74 $x2915) (or $x64 $x5796) (or $x2057 (<= (+ L_0 ?x519 ?x301 (* 2.0 S_2)) 0.0)) $x40144 (or $x2057 (<= (+ (* (- 2.0) S_4) ?x8778 ?x312) 0.0)) $x14141 (or $x1757 (<= (+ S_4 (* 3.0 S_0) (* (- 4.0) S_2)) 0.0)) (or $x64 (<= (+ ?x6635 ?x8163 S_4 ?x6716 ?x8151 ?x312) 0.0)) (or $x64 (<= (+ ?x6635 ?x8163 L_0 S_4 ?x6716 ?x1766 ?x8151) 0.0)) (or $x64 (<= (+ ?x6214 ?x8415 S_4 ?x4807 ?x1470 ?x1085) 0.0)) $x30505 (or $x64 $x5785) $x11146 $x27491 (or $x74 (<= (+ ?x2433 (* (- (/ 1.0 2.0)) L_1) ?x896 S_4 ?x1292) (- 5.0))) (or $x64 (<= (+ ?x6635 ?x8163 ?x6716 ?x8151 ?x1085 S_3) 0.0)) (or $x2057 (<= (+ ?x519 S_2) (- 5.0))) (or $x54 $x2057 (<= (+ L_1 ?x519 ?x301 (* 2.0 S_2)) (- 5.0))) (or $x54 (<= (+ L_1 ?x301 S_0) (- 10.0))) $x16660 (or $x1757 (<= (+ S_0 ?x285) (- 5.0))) (or $x1002 (<= (+ ?x624 A_1 ?x525) (- 5.0))) (or $x1406 $x4096 (<= (+ ?x624 L_2 A_1 ?x239) (- 5.0))) (or $x64 (<= (+ (* (- 1.0) L_1) L_2 A_1 ?x239) (- 5.0))) (or $x54 $x8701) (or $x355 $x8348 (<= (+ L_3 ?x624 ?x267 A_2) (- 5.0))) (or $x54 (<= (+ (* 2.0 L_1) ?x267 S_4 ?x301 S_0) (- 5.0))) (or $x1283 $x1406 $x3871 (<= (+ ?x624 A_3 A_1 ?x239 ?x525) 0.0)) $x13213 $x29372 (or $x64 $x2322) $x40046 $x29911 $x30619 (or $x74 (<= (+ ?x2422 ?x517 ?x2942 S_4 A_2) (- 5.0))) (or $x74 (<= (+ ?x2422 ?x1075 L_0 ?x2942 ?x1766 ?x8455 S_2) 0.0)) (or $x64 (<= (+ (* (- 2.0) L_1) ?x432 S_4 ?x2941 ?x8297) (- 5.0))) (or $x74 (<= (+ ?x5002 ?x4826 ?x5510 S_4 ?x4915 ?x1085) 0.0)) (or $x64 (<= (+ L_2 L_0 ?x1766 ?x239 (* 2.0 S_1)) (- 5.0))) (or $x74 (<= (+ ?x1274 (* (/ 1.0 2.0) L_0) ?x6273 ?x3982 S_2) (- (/ 5.0 2.0)))) (or $x74 $x5000) (or $x54 (<= (+ ?x1130 ?x3516 ?x3515 ?x3982 S_0 ?x285) 0.0)) (or $x64 (<= (+ (* (- 1.0) L_3) ?x4126 A_3 ?x3086 S_1) (- 5.0))) (or $x74 (<= (+ L_3 ?x517 ?x267 A_2) (- 5.0))) (or $x64 (<= (+ L_2 ?x239 S_1) (- 10.0))) (or $x74 $x1063) $x29929 $x27640 $x28112 $x26498 $x26499 (or $x74 (<= (+ ?x1367 ?x4599 ?x8310 ?x9062 ?x1085 S_3) 0.0)) (or $x64 (<= (+ ?x4126 ?x3086 ?x1085 (* 3.0 S_1)) (- 10.0))) (or $x2224 $x2313) (or (not $x2224) (<= (+ (* (/ 1.0 2.0) S_4) ?x1856 ?x525) 0.0)) (or $x74 $x9650) (or $x64 (<= (+ ?x432 S_4 ?x8297 (* 2.0 S_1)) (- 15.0))) $x40001 (or $x74 $x526) (or $x74 (<= (+ ?x2422 ?x1075 L_0 ?x2942 ?x301 ?x8455 S_3) 0.0)) (or $x74 (<= (+ ?x1367 ?x4599 ?x8310 S_4 ?x9062 ?x312) 0.0)) $x26573 (or $x74 $x8166) (or $x74 (<= (+ ?x2422 L_0 ?x2942 ?x1766 ?x8778) (- 10.0))) (or $x74 (<= (+ ?x1274 L_0 ?x6273 ?x1766 ?x6330) (- (/ 5.0 2.0)))) (or $x64 (<= (+ ?x4126 ?x267 S_4 ?x239 S_1) (- 5.0))) (or $x1757 (<= (+ L_2 ?x267 S_4 S_0 ?x285) 0.0)) $x22343 (or $x74 (<= (+ L_3 ?x267 S_2) (- 10.0))) $x28454 (or $x74 (<= (+ ?x2422 ?x2942 S_4 S_2) (- 10.0))) (or $x74 (<= (+ ?x2433 ?x896 S_4 (* (/ 1.0 2.0) S_1)) (- (/ 15.0 2.0)))) (or $x74 (<= (+ ?x8339 ?x8615 ?x1085 ?x8765) (- 15.0))) $x26718 $x26726 (or $x74 $x24204) (or $x74 (<= (+ ?x2422 ?x2942 ?x8778 ?x312) (- 10.0))) (or $x74 (<= (+ ?x2433 ?x5769 ?x896 S_4 ?x1292) (- (/ 15.0 2.0))) $x20409) $x1727 $x37 $x1759 (<= (+ (* (- (/ 1.0 3.0)) S_0) S_1 (* (- (/ 2.0 3.0)) S_3)) 0.0) $x5722 (<= (+ S_4 (* 2.0 S_1) (* (- 3.0) S_3)) 0.0) $x6147 (<= (+ L_2 ?x267 S_4 S_1 ?x525) 0.0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
