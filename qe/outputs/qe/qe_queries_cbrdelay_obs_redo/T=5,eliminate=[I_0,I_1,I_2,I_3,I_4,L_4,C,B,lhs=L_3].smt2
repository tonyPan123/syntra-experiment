; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_2 () Real)
(declare-fun L_2 () Real)
(declare-fun A_2 () Real)
(declare-fun S_4 () Real)
(declare-fun A_4 () Real)
(declare-fun L_3 () Real)
(declare-fun S_1 () Real)
(declare-fun L_1 () Real)
(declare-fun A_1 () Real)
(declare-fun L_0 () Real)
(declare-fun S_0 () Real)
(declare-fun A_0 () Real)
(declare-fun A_3 () Real)
(declare-fun S_3 () Real)
(assert
 (let (($x34 (>= L_0 0.0)))
 (let (($x38396 (<= (+ A_2 (* (- 1.0) L_2) L_3 (* (- 1.0) A_3)) (- 10.0))))
 (let (($x71 (= L_3 L_2)))
 (let (($x72076 (or $x71 (<= (+ L_3 (* (- 1.0) A_3) S_0) (- 20.0)) (<= (+ L_3 (* (- 1.0) A_3) A_1 (* (- 1.0) L_1)) (- 15.0)) $x38396)))
 (let ((?x966 (* (- 2.0) L_1)))
 (let ((?x958 (* 2.0 A_1)))
 (let ((?x1051 (* 3.0 L_2)))
 (let ((?x1050 (* (- 3.0) A_2)))
 (let (($x30109 (<= (+ (* (- 1.0) A_2) L_2 (* (/ 1.0 2.0) S_4) (* (/ 1.0 2.0) S_0)) (- 5.0))))
 (let (($x61 (= L_2 L_1)))
 (let ((?x1315 (* 2.0 S_4)))
 (let ((?x1325 (* (- 2.0) A_3)))
 (let ((?x1299 (* 2.0 L_3)))
 (let ((?x364 (* (- 1.0) A_2)))
 (let ((?x237 (* (- 1.0) L_1)))
 (let ((?x367 (* (- 1.0) A_3)))
 (let ((?x9933 (+ ?x364 L_2 L_3 ?x367 A_1 S_4 ?x237)))
 (let (($x71874 (or $x61 (<= ?x9933 (- 5.0)) (<= (+ ?x364 L_2 ?x1299 ?x1325 ?x1315 S_0) (- 5.0)))))
 (let ((?x3179 (* (- (/ 1.0 2.0)) S_0)))
 (let ((?x4376 (* (/ 1.0 2.0) S_1)))
 (let ((?x254 (* (- 1.0) L_2)))
 (let (($x42075 (or $x71 (<= (+ L_3 ?x367 (* 2.0 S_1) (* (- 1.0) S_0)) (- 5.0)) (<= (+ A_2 ?x254 L_3 ?x367 ?x4376 ?x3179) (- 5.0)))))
 (let (($x43858 (or $x71 (<= (+ L_3 ?x367 (* (- 1.0) A_1) L_1 (* 2.0 S_2)) (- 5.0)))))
 (let (($x42033 (or $x61 (<= (+ ?x364 L_2 (* (/ 1.0 3.0) S_4) (* (/ 2.0 3.0) S_1)) (- 5.0)))))
 (let (($x42028 (or $x71 (<= (+ L_3 ?x367 (* (/ 4.0 3.0) S_2) (* (- (/ 1.0 3.0)) S_0)) (- 5.0)))))
 (let (($x42027 (or $x71 (<= (+ L_3 ?x367 (* (/ 3.0 2.0) S_2) (* (- (/ 1.0 2.0)) S_1)) (- 5.0)))))
 (let (($x39881 (<= (+ L_3 ?x367 (* (/ 1.0 3.0) A_1) (* (- (/ 1.0 3.0)) L_1) (* (/ 2.0 3.0) S_4)) (- 5.0))))
 (let (($x37862 (<= (+ (* (/ 1.0 2.0) A_2) (* (- (/ 1.0 2.0)) L_2) L_3 ?x367 (* (/ 1.0 2.0) S_4)) (- 5.0))))
 (let (($x41982 (or $x71 $x37862 $x39881 (<= (+ L_3 ?x367 (* (/ 3.0 4.0) S_4) (* (/ 1.0 4.0) S_0)) (- 5.0)))))
 (let ((?x1065 (* (- 1.0) S_0)))
 (let ((?x1297 (* (- 4.0) A_3)))
 (let ((?x1618 (* 4.0 L_3)))
 (let ((?x2526 (* (- 4.0) L_2)))
 (let ((?x2525 (* 4.0 A_2)))
 (let ((?x25069 (* (- 5.0) A_3)))
 (let ((?x24710 (* 5.0 L_3)))
 (let ((?x19212 (* (- 5.0) L_2)))
 (let ((?x25619 (* 5.0 A_2)))
 (let ((?x1087 (* (- 1.0) A_0)))
 (let ((?x953 (* (- 2.0) L_2)))
 (let ((?x955 (* 2.0 A_2)))
 (let (($x35347 (<= (+ A_2 ?x254 (* (- 1.0) S_4)) (- 5.0))))
 (let (($x27387 (<= 0.0 (+ L_3 ?x367 S_4))))
 (let (($x41672 (or $x27387 $x35347 (<= (+ (* (/ 1.0 2.0) A_1) (* (- (/ 1.0 2.0)) L_1) (* (- (/ 1.0 2.0)) S_4)) (- 5.0)) (<= (+ (* (- 1.0) S_4) S_0) (- 15.0)))))
 (let ((?x1362 (* (- 3.0) A_3)))
 (let ((?x1350 (* 3.0 L_3)))
 (let ((?x1057 (* (- 3.0) L_2)))
 (let ((?x1056 (* 3.0 A_2)))
 (let (($x39929 (<= (+ ?x955 ?x953 ?x1299 ?x1325 A_1 ?x1065 ?x237) (- 5.0))))
 (let (($x8892 (<= (+ L_3 ?x367 A_1 S_1 ?x1065 ?x237) 0.0)))
 (let ((?x23114 (* (- (/ 5.0 2.0)) L_1)))
 (let ((?x23121 (* (/ 5.0 2.0) A_1)))
 (let ((?x23118 (* (- (/ 5.0 2.0)) A_3)))
 (let ((?x4215 (* (/ 5.0 2.0) L_3)))
 (let (($x23115 (<= (+ ?x4215 ?x23118 ?x23121 S_4 ?x1065 ?x23114) 0.0)))
 (let (($x20993 (<= (+ ?x955 ?x953 ?x1299 ?x1325 ?x958 (* (- 1.0) S_2) ?x1065 ?x966) 0.0)))
 (let (($x19782 (<= (+ S_3 ?x1299 ?x1325 ?x958 ?x1065 ?x966) 0.0)))
 (let (($x1404 (<= (+ A_2 ?x254 L_3 ?x367 A_1 ?x1087 ?x237 L_0) 0.0)))
 (let (($x21003 (<= (+ ?x955 ?x953 L_3 ?x367 A_1 (* (- 1.0) S_4) ?x1065 ?x237) 0.0)))
 (let (($x71321 (or $x71 (<= (+ ?x1056 ?x1057 ?x1350 ?x1362 (* (- 1.0) A_1) L_1 S_4) 0.0))))
 (let (($x71847 (or $x71 (<= (+ ?x955 ?x953 S_3 ?x1299 ?x1325 (* (- 1.0) A_1) L_1) 0.0))))
 (let ((?x3974 (* (/ 1.0 2.0) S_4)))
 (let ((?x362 (* (- 1.0) A_1)))
 (let ((?x1829 (* (/ 1.0 2.0) L_2)))
 (let ((?x2779 (* (- (/ 1.0 2.0)) A_2)))
 (let (($x51 (= L_1 L_0)))
 (let (($x70511 (or $x71 (<= (+ ?x955 ?x953 S_3 ?x1299 ?x1325 (* (- 1.0) S_2)) 0.0))))
 (let ((?x1066 (* (- 4.0) L_1)))
 (let ((?x1642 (* (- 2.0) S_1)))
 (let ((?x1064 (* 4.0 A_1)))
 (let (($x1419 (<= (+ A_2 ?x254 L_3 ?x367 A_1 ?x237 (* (- 1.0) S_1)) 0.0)))
 (let ((?x1313 (* (- (/ 3.0 2.0)) L_1)))
 (let ((?x1428 (* (/ 3.0 2.0) A_1)))
 (let ((?x1304 (* (- (/ 3.0 2.0)) A_3)))
 (let ((?x1462 (* (/ 3.0 2.0) L_3)))
 (let (($x1855 (<= (+ ?x1462 ?x1304 ?x1428 S_2 ?x1065 ?x1313) 0.0)))
 (let (($x43619 (or $x71 $x37862 (<= (+ ?x1462 ?x1304 (* (/ 1.0 2.0) A_1) S_4 (* (- (/ 1.0 2.0)) L_1)) (- 5.0)))))
 (let ((?x1639 (* (- (/ 1.0 2.0)) L_1)))
 (let ((?x1638 (* (/ 1.0 2.0) A_1)))
 (let ((?x1637 (* (- (/ 1.0 2.0)) A_3)))
 (let ((?x1636 (* (/ 1.0 2.0) L_3)))
 (let ((?x1053 (* (- 3.0) L_1)))
 (let ((?x342 (* (- 1.0) S_2)))
 (let ((?x1052 (* 3.0 A_1)))
 (let (($x70428 (or $x71 $x1404 (not (<= 0.0 (+ A_2 ?x254 L_3 ?x367 ?x362 S_2 L_1))))))
 (let ((?x13065 (* (- 5.0) L_1)))
 (let ((?x12603 (* 5.0 A_1)))
 (let ((?x12648 (* 5.0 L_2)))
 (let ((?x12528 (* (- 5.0) A_2)))
 (let (($x16788 (<= (+ (* (- 4.0) A_2) (* 4.0 L_2) ?x1064 ?x1087 S_4 ?x1066 L_0) 0.0)))
 (let (($x72049 (or $x71 (<= (+ ?x955 ?x953 ?x1299 ?x1325 S_2 (* (- 1.0) S_1)) 0.0))))
 (let ((?x336 (* (- 1.0) S_1)))
 (let ((?x1063 (* 4.0 L_2)))
 (let ((?x1062 (* (- 4.0) A_2)))
 (let ((?x3039 (* (- (/ 1.0 2.0)) L_2)))
 (let ((?x3007 (* (/ 1.0 2.0) A_2)))
 (let (($x72720 (or $x71 (<= (+ ?x3007 ?x3039 L_3 ?x367 A_1 ?x3974 ?x342 ?x237) 0.0) (<= (+ ?x1462 ?x1304 ?x1428 S_4 ?x342 ?x1313) 0.0))))
 (let (($x34110 (<= 0.0 (+ ?x254 L_1))))
 (let (($x33705 (not $x34110)))
 (let (($x17971 (<= (+ A_2 L_3 ?x367 (* (/ 1.0 2.0) S_2) (* (- (/ 1.0 2.0)) S_1) ?x237) 0.0)))
 (let (($x23116 (<= (+ ?x1618 ?x1297 ?x1064 (* (- 2.0) A_0) ?x1315 ?x1066 (* 2.0 L_0)) 0.0)))
 (let (($x40240 (or $x61 (<= (+ ?x364 L_2 (* (/ 2.0 3.0) S_3) (* (/ 1.0 3.0) S_0)) (- 5.0)) (<= (+ (* (- 2.0) A_2) (* 2.0 L_2) S_3 A_1 ?x237) (- 10.0)))))
 (let ((?x271 (* (- 1.0) L_3)))
 (let ((?x956 (* 2.0 L_2)))
 (let ((?x959 (* (- 2.0) A_2)))
 (let ((?x1405 (+ ?x959 ?x956 ?x271 A_3 A_1 ?x237)))
 (let (($x44066 (or $x61 (<= ?x1405 (- 5.0)) (<= (+ ?x1050 ?x1051 (* (- 2.0) L_3) (* 2.0 A_3) S_0) (- 5.0)))))
 (let ((?x356 (* (- 1.0) S_4)))
 (let ((?x1352 (* 2.0 A_3)))
 (let ((?x1360 (* (- 2.0) L_3)))
 (let (($x13134 (<= (+ ?x1050 ?x1051 (* (- 3.0) L_3) (* 3.0 A_3) ?x356 S_0) 0.0)))
 (let (($x40054 (or $x71 (not (<= 0.0 (+ ?x364 L_2 ?x1087 (* 2.0 S_1) L_0))) (<= (+ A_2 ?x254 L_3 ?x367 ?x1087 S_1 L_0) (- 5.0)))))
 (let (($x38493 (<= (+ L_3 ?x367 (* (- 2.0) A_0) (* 3.0 S_1) (* 2.0 L_0)) (- 5.0))))
 (let ((?x2969 (* 2.0 S_1)))
 (let ((?x3188 (+ ?x364 L_2 ?x1087 ?x2969 L_0)))
 (let (($x37970 (<= 0.0 ?x3188)))
 (let (($x40012 (or $x71 (<= (+ L_3 ?x367 (* (/ 2.0 3.0) S_4) (* (/ 1.0 3.0) S_1)) (- 5.0)) $x37862)))
 (let (($x1333 (<= (+ A_1 ?x237 ?x342) 0.0)))
 (let ((?x1633 (* (/ 1.0 2.0) L_1)))
 (let ((?x1632 (* (- (/ 1.0 2.0)) A_1)))
 (let ((?x1631 (* (/ 1.0 2.0) A_3)))
 (let ((?x1630 (* (- (/ 1.0 2.0)) L_3)))
 (let (($x42905 (or $x51 (<= (+ ?x362 (* (/ 1.0 4.0) S_4) (* (/ 3.0 4.0) S_0) L_1) (- 5.0)))))
 (let (($x70296 (or $x71 $x1419 (<= (+ (* 2.0 S_3) ?x1350 ?x1362 ?x1052 ?x1642 ?x1053) 0.0))))
 (let (($x499 (<= (+ ?x1630 ?x1631 (* (- (/ 3.0 2.0)) A_1) S_0 (* (/ 3.0 2.0) L_1)) (- 5.0))))
 (let ((?x1664 (* 2.0 L_0)))
 (let ((?x1663 (* (- 2.0) A_0)))
 (let ((?x1760 (* 2.0 S_3)))
 (let ((?x1286 (* (/ 3.0 2.0) L_1)))
 (let ((?x1430 (* (- (/ 3.0 2.0)) A_1)))
 (let (($x1312 (<= (+ (* (- (/ 3.0 2.0)) L_3) (* (/ 3.0 2.0) A_3) ?x1430 ?x356 S_0 ?x1286) 0.0)))
 (let (($x71054 (or $x51 (<= (+ (* (/ 1.0 3.0) S_3) ?x362 (* (/ 2.0 3.0) S_0) L_1) (- 5.0)))))
 (let ((?x2285 (* (/ 1.0 2.0) L_0)))
 (let ((?x2275 (* (/ 1.0 2.0) S_2)))
 (let ((?x2287 (* (- (/ 1.0 2.0)) A_0)))
 (let (($x16155 (<= (+ ?x955 ?x953 (* (- 2.0) A_1) ?x356 S_1 (* 2.0 L_1)) 0.0)))
 (let (($x8296 (<= (+ ?x1056 ?x1057 (* (- 3.0) A_1) ?x356 S_0 (* 3.0 L_1)) 0.0)))
 (let (($x43002 (or $x51 (<= (+ A_2 ?x254 (* (- 2.0) A_1) S_0 (* 2.0 L_1)) (- 5.0)))))
 (let (($x38585 (or $x27387 (<= (+ ?x959 ?x956 S_4 S_1) 0.0) (<= (+ ?x955 ?x953 (* (- 2.0) S_4) S_1 ?x1065) 0.0))))
 (let (($x38575 (or (<= (+ ?x2525 ?x2526 (* (- 3.0) S_4) ?x1065) 0.0) (<= (+ ?x356 ?x2969 ?x1065) 0.0) $x27387)))
 (let (($x38265 (or (<= (+ ?x1087 (* (- (/ 1.0 2.0)) S_4) (* (/ 3.0 2.0) S_1) L_0) 0.0) (<= (+ A_2 ?x254 ?x1087 ?x356 S_1 L_0) 0.0) $x27387)))
 (let (($x42853 (or $x71 (<= (+ ?x1299 ?x1325 ?x958 ?x1663 (* 2.0 S_2) ?x966 ?x1664) 0.0))))
 (let (($x108 (>= S_1 S_0)))
 (let (($x111 (>= S_2 S_1)))
 (let (($x117 (>= S_4 S_3)))
 (let (($x119 (>= A_1 A_0)))
 (let (($x120 (>= A_2 A_1)))
 (let (($x122 (>= A_4 A_3)))
 (and (<= (+ A_2 ?x254) S_3) (not (<= (+ A_3 ?x271) S_3)) $x122 $x120 $x119 $x117 $x111 $x108 (or $x51 (not (<= 0.0 (+ ?x237 L_0)))) (or $x51 $x61 $x71 (= (+ ?x955 ?x953 L_3 ?x367 ?x362 L_1) 0.0)) (or $x61 (<= 0.0 (+ ?x955 ?x254 ?x367 ?x362 L_1)) (not $x71)) (or (not (<= 0.0 (+ L_2 ?x271))) $x71) $x42853 (or $x61 $x33705) (or $x27387 (<= (+ (* (- (/ 1.0 2.0)) S_4) ?x4376) (- 5.0)) $x35347) (or $x1333 (<= (+ L_3 ?x367 S_4 ?x342 S_0) 0.0)) (or $x1333 (<= (+ ?x342 S_0) (- 5.0))) (or $x27387 (<= (+ ?x356 S_2) (- 5.0))) (or $x71 (<= (+ S_3 L_3 ?x367) (- 5.0))) (or $x61 (<= (+ ?x959 ?x956 S_3 A_1 ?x237) (- 5.0))) (or $x51 (<= (+ ?x362 S_1 L_1) (- 5.0))) (or $x1333 (<= (+ ?x364 L_2 S_3 ?x342 S_0) 0.0)) (or $x51 (<= (+ A_2 ?x362 ?x342 S_0) 0.0) $x33705) (or $x1333 (<= (+ (* (/ 1.0 3.0) S_3) ?x342 (* (/ 2.0 3.0) S_0)) 0.0)) $x38265 (or $x61 $x1333 (<= (+ ?x364 L_2 ?x271 A_3 ?x342 S_0) 0.0)) (or $x1333 (<= (+ (* (/ 1.0 4.0) S_4) ?x342 (* (/ 3.0 4.0) S_0)) 0.0)) (or $x61 (<= (+ ?x364 L_2 S_2) (- 5.0))) (or $x51 (<= (+ ?x271 A_3 ?x362 ?x356 S_1 L_1) 0.0)) (or $x61 (<= (+ ?x1050 ?x1051 S_3 ?x1052 ?x1087 ?x1053 L_0) 0.0)) (or $x51 (<= (+ ?x1630 ?x1631 ?x1632 ?x356 S_2 ?x1633) 0.0) $x27387) (or $x27387 (<= (+ (* (- 3.0) S_4) (* 4.0 S_2) ?x1065) 0.0)) (or (<= (+ ?x2287 ?x356 (* (/ 3.0 2.0) S_2) ?x2285) 0.0) $x27387) (or $x71 (<= (+ L_3 ?x367 S_2) (- 10.0))) (or $x51 (<= (+ ?x362 ?x2275 (* (/ 1.0 2.0) S_0) L_1) (- 5.0))) $x38575 $x38585 (or (<= (+ ?x1632 ?x1633 (* (- (/ 1.0 2.0)) S_4) S_2) 0.0) $x27387) $x43002 (or $x61 (<= (+ ?x364 L_2 ?x271 A_3 ?x356 S_2) 0.0)) (or $x51 (<= (+ A_2 ?x254 ?x362 ?x356 S_2 L_1) 0.0) $x27387) (or $x51 $x71 (<= 0.0 ?x1405)) (or $x61 (<= (+ ?x1050 ?x1051 ?x1052 S_2 ?x1065 ?x1053) 0.0)) (or $x71 (<= (+ ?x1056 ?x1350 ?x1362 S_2 ?x1065 ?x1053) 0.0) $x33705) (or $x71 (<= (+ ?x1056 ?x1057 ?x1350 ?x1362 S_2 ?x1065) 0.0)) (or $x61 (<= ?x1405 0.0)) (or $x51 $x8296 $x27387) (or $x61 (<= (+ ?x959 ?x956 ?x958 S_1 ?x1065 ?x966) 0.0)) (or $x61 (<= (+ ?x1062 ?x1063 S_3 ?x1064 ?x1065 ?x1066) 0.0)) (or $x61 (<= (+ ?x364 L_2 A_1 ?x1087 S_1 ?x237 L_0) 0.0)) (or $x61 (<= (+ ?x959 ?x956 ?x958 ?x1087 S_2 ?x966 L_0) 0.0)) (or $x61 (<= ?x9933 0.0)) (or $x61 (<= (+ ?x1050 ?x1051 S_3 ?x1052 ?x336 ?x1053) 0.0)) (or $x51 $x16155 $x27387) (or $x61 (<= (+ ?x959 ?x956 ?x958 S_2 ?x336 ?x966) 0.0)) (or $x71 (<= (+ L_3 ?x367 ?x2287 (* (/ 3.0 2.0) S_2) ?x2285) (- 5.0))) (or $x71 (<= (+ ?x1299 ?x1325 ?x958 (* 2.0 S_2) ?x1642 ?x966) 0.0)) (or $x71 (<= (+ A_2 L_3 ?x367 ?x2287 ?x2275 ?x237 ?x2285) 0.0) $x33705) $x71054 (or $x51 (<= (+ ?x364 L_2 ?x271 A_3 ?x362 S_0 L_1) 0.0)) (or $x61 (<= (+ ?x959 ?x956 S_3 ?x958 ?x342 ?x966) 0.0)) (or $x51 (<= (+ ?x362 S_0 L_1) (- 10.0))) (or $x51 $x1312) (or $x61 $x13134 (not $x499)) (or $x51 (<= (+ L_3 ?x367 ?x362 S_4 S_0 L_1) (- 5.0))) (or $x61 (<= (+ ?x364 L_2 (* (/ 3.0 2.0) S_1) ?x3179) (- 5.0))) (or $x61 (<= ?x3188 (- 5.0))) (or $x71 $x1404 (<= (+ L_3 ?x367 A_1 ?x1663 ?x2969 ?x237 ?x1664) 0.0)) (or $x71 $x1404 (<= (+ ?x1760 ?x1350 ?x1362 ?x1052 ?x1663 ?x1053 ?x1664) 0.0)) (or $x51 $x71 (<= (+ ?x1636 ?x1637 ?x1632 S_2 ?x1633) (- 5.0))) (or $x51 $x499) (or $x27387 (<= (+ ?x356 (* (/ 3.0 2.0) S_2) (* (- (/ 1.0 2.0)) S_1)) 0.0)) $x70296 (or $x51 (<= (+ A_2 ?x254 ?x362 ?x342 S_0 L_1) 0.0)) (or $x71 (<= (+ ?x1056 ?x1057 S_3 ?x1350 ?x1362 ?x336) 0.0)) $x42905 (or $x71 (<= (+ S_3 L_3 ?x367 A_1 ?x342 ?x237) 0.0)) (or $x51 (<= (+ ?x1630 ?x1631 ?x1632 ?x342 S_0 ?x1633) 0.0)) (or $x1333 (<= (+ ?x2779 ?x1829 ?x3974 ?x342 S_0) 0.0)) (or $x51 $x27387 (<= (+ ?x362 ?x356 (* 2.0 S_2) L_1) (- 5.0))) $x40012 (or $x71 $x37970 $x38493) $x40054 (or $x61 (<= (+ ?x959 ?x956 ?x1360 ?x1352 A_1 ?x237 ?x356) 0.0) $x13134) (or $x61 (<= (+ ?x959 ?x956 ?x1360 ?x1352 ?x356 S_1) 0.0)) (or $x61 (<= (+ ?x364 L_2 (* (/ 1.0 2.0) S_3) ?x4376) (- 5.0))) (or $x61 (<= (+ ?x959 ?x956 ?x271 A_3 S_1) (- 5.0))) $x44066 $x40240 (or $x71 $x1419 $x19782) (or $x71 $x1419 $x1855) (or $x71 $x1855 $x21003) (or $x71 $x8892 $x21003) (or $x34110 (<= (+ ?x1050 ?x1051 ?x958 S_4 ?x966) (- 5.0))) (or $x71 $x1404 $x23116) (or $x71 (<= (+ ?x955 ?x953 ?x1299 ?x1325 S_1 ?x1065) 0.0)) (or $x71 $x17971 $x33705) (or $x51 (<= (+ ?x364 L_2 S_3 ?x362 S_0 L_1) (- 5.0))) $x72720 (or $x71 (<= (+ ?x2525 ?x2526 ?x1618 ?x1297 S_4 ?x336) 0.0)) (or $x61 (<= (+ ?x1062 ?x1063 ?x1064 S_4 ?x336 ?x1066) 0.0)) (or $x71 (<= (+ ?x1056 ?x1057 ?x1350 ?x1362 S_4 ?x342) 0.0)) $x72049 (or $x71 (<= (+ A_2 ?x254 L_3 ?x367 ?x362 L_1 S_2) 0.0)) (or $x61 $x16788) (or $x61 (<= (+ ?x12528 ?x12648 ?x12603 S_4 ?x1065 ?x13065) 0.0)) $x70428 (or $x71 (<= (+ ?x1299 ?x1325 S_4 S_2) (- 10.0))) (or $x61 (<= (+ ?x1050 ?x1051 ?x1052 S_4 ?x342 ?x1053) 0.0)) (or $x71 (<= (+ ?x1636 ?x1637 ?x1638 ?x1639) (- 5.0))) (or $x71 $x1419 $x23115) $x43619 (or $x71 $x1404 $x1855) (or $x71 $x19782 $x39929) (or $x71 $x1855 $x39929) (or $x71 $x1419 (<= (+ ?x1618 ?x1297 ?x1064 ?x1315 ?x1642 ?x1066) 0.0)) $x70511 (or $x71 (<= (+ A_2 ?x254 ?x1299 ?x1325 S_4) (- 5.0))) (or $x71 $x8892 $x20993) (or $x71 $x1404 $x8892) (or $x71 $x1404 $x23115) (or $x51 (<= (+ ?x2779 ?x1829 ?x362 ?x3974 S_0 L_1) (- 5.0))) $x71847 $x71321 (or $x71 $x19782 $x21003) (or $x71 $x19782 $x20993) (or $x71 $x1404 $x19782) (or $x71 $x20993 $x23115) (or $x71 $x23115 $x39929) (or $x71 $x8892 $x39929) (or $x71 (<= (+ A_2 ?x254 L_3 ?x367 ?x1087 S_1 L_0) 0.0)) (or $x71 (<= (+ ?x2525 ?x2526 ?x1618 ?x1297 ?x1087 S_4 L_0) 0.0)) (or $x71 (<= (+ ?x1056 ?x1057 S_3 ?x1350 ?x1362 ?x1087 L_0) 0.0)) $x41672 (or $x71 (<= (+ ?x955 ?x953 ?x1299 ?x1325 ?x1087 S_2 L_0) 0.0)) (or $x71 (<= (+ ?x25619 ?x19212 ?x24710 ?x25069 S_4 ?x1065) 0.0)) (or $x71 (<= (+ ?x2525 ?x2526 S_3 ?x1618 ?x1297 ?x1065) 0.0)) $x41982 (or $x61 (<= (+ ?x364 L_2 L_3 ?x367 S_4 S_1) (- 5.0))) (or $x71 $x38396 (<= (+ L_3 ?x367 S_1) (- 15.0))) $x42027 $x42028 $x42033 $x43858 $x42075 $x71874 (or $x61 $x30109 (<= (+ ?x1050 ?x1051 ?x958 ?x966 S_4) (- 15.0))) $x72076 $x34 (<= (+ ?x1087 S_0 L_0) 0.0) (<= (+ ?x362 L_1 S_1) 0.0) (<= (+ L_3 (* (- 1.0) A_4) S_4) 0.0) (<= (+ ?x364 L_2 S_2) 0.0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
