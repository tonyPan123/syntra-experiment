; benchmark generated from python API
(set-info :status unknown)
(declare-fun L_0 () Real)
(declare-fun S_1 () Real)
(declare-fun A_1 () Real)
(declare-fun L0 () Real)
(declare-fun A_0 () Real)
(declare-fun S_0 () Real)
(declare-fun S_4 () Real)
(declare-fun S_2 () Real)
(declare-fun A_3 () Real)
(declare-fun L_3 () Real)
(declare-fun L_2 () Real)
(declare-fun A_2 () Real)
(declare-fun L_1 () Real)
(declare-fun S_3 () Real)
(declare-fun A_4 () Real)
(assert
 (let (($x3333 (<= (+ (* (- 1.0) A_1) S_1 L_0) 0.0)))
 (let (($x37 (>= L0 0.0)))
 (let (($x2113 (<= (+ S_0 (* (- 1.0) A_0) L_0) 0.0)))
 (let (($x3317 (= L_3 L_0)))
 (let (($x1758 (not (= L_0 L_2))))
 (let (($x43724 (or $x1758 $x3317 (<= (+ (* 2.0 L_3) (* (- 2.0) A_3) S_2 S_4) (- 10.0)))))
 (let ((?x309 (* (- 1.0) S_1)))
 (let ((?x7813 (* 3.0 S_2)))
 (let ((?x7261 (* (- 2.0) A_3)))
 (let ((?x977 (* 2.0 L_3)))
 (let (($x34944 (<= (+ L_3 (* (- 1.0) S_0) (* (- 1.0) A_3) (* 2.0 S_1)) (- 5.0))))
 (let ((?x976 (* 2.0 A_2)))
 (let ((?x1096 (* (- 1.0) S_0)))
 (let ((?x14307 (* (- 2.0) L_0)))
 (let (($x1189 (not (= L_0 L_1))))
 (let (($x74 (= L_3 L_2)))
 (let ((?x4126 (* (- (/ 1.0 2.0)) A_3)))
 (let ((?x10836 (* (- (/ 1.0 2.0)) A_1)))
 (let ((?x10852 (* (/ 1.0 2.0) L_0)))
 (let ((?x3805 (* (/ 1.0 2.0) L_3)))
 (let (($x37217 (<= (+ (* (- 1.0) L_0) L_3 (* (- 1.0) A_3) A_2) (- 10.0))))
 (let (($x51012 (or $x74 (<= (+ ?x3805 (* (- (/ 1.0 2.0)) L_0) (* (/ 1.0 2.0) A_1) ?x4126) (- (/ 15.0 2.0))) (<= (+ (* (/ 1.0 3.0) L_3) (* (/ 1.0 3.0) S_0) (* (- (/ 1.0 3.0)) A_3)) (- (/ 20.0 3.0))) $x37217)))
 (let (($x38503 (<= (+ (* 3.0 L_3) (* (- 3.0) A_3) ?x1096 (* 4.0 S_2)) (- 15.0))))
 (let (($x29327 (<= (+ (* (/ 4.0 3.0) L_3) (* (/ 1.0 3.0) S_0) (* (- (/ 4.0 3.0)) A_3) S_4) (- (/ 20.0 3.0)))))
 (let ((?x5252 (* (- (/ 3.0 2.0)) A_3)))
 (let ((?x10783 (* (/ 1.0 2.0) A_1)))
 (let ((?x10728 (* (- (/ 1.0 2.0)) L_0)))
 (let ((?x5315 (* (/ 3.0 2.0) L_3)))
 (let (($x17002 (<= (+ (* (- 1.0) L_0) ?x977 ?x7261 A_2 S_4) (- 10.0))))
 (let (($x43655 (or $x1758 $x3317 (<= (+ ?x977 ?x7261 L_0 ?x7813 (* (- 1.0) A_0)) (- 10.0)))))
 (let (($x43628 (or $x74 $x1189 (<= (+ L_3 (* (- 1.0) A_3) A_2 (* (- 1.0) A_0) S_1) (- 5.0)) (<= (+ ?x3805 L_0 ?x4126 (* (- 1.0) A_0) (* (/ 3.0 2.0) S_1)) (- (/ 5.0 2.0))))))
 (let (($x43573 (or $x74 $x1189 $x17002 (<= (+ ?x5315 S_4 ?x5252 (* (/ 1.0 2.0) S_1)) (- (/ 15.0 2.0))))))
 (let (($x3198 (<= (+ (* 3.0 L_2) ?x14307 (* (- 3.0) A_2) (* 2.0 A_1) S_4) (- 15.0))))
 (let (($x64 (= L_2 L_1)))
 (let (($x43564 (or $x64 $x3198 (<= (+ (* 2.0 L_2) S_0 S_4 (* (- 2.0) A_2)) (- 10.0)))))
 (let ((?x267 (* (- 1.0) A_3)))
 (let (($x4640 (<= (+ (* (/ 3.0 2.0) L_2) (* (/ 1.0 2.0) S_0) S_4 ?x267 (* (- (/ 1.0 2.0)) A_2)) (- (/ 5.0 2.0)))))
 (let ((?x239 (* (- 1.0) A_2)))
 (let ((?x624 (* (- 1.0) L_0)))
 (let ((?x2332 (* 2.0 L_2)))
 (let (($x13028 (<= (+ (* (- 3.0) L_1) ?x977 ?x1096 A_1 ?x7261 ?x976) (- 5.0))))
 (let (($x2547 (<= (+ (* (- 2.0) L_1) (* 2.0 A_1) ?x977 ?x7261 ?x1096 S_3) 0.0)))
 (let (($x980 (<= L_3 L_2)))
 (let (($x10451 (<= (+ (* (- 2.0) L_1) A_1 L_3 ?x267 A_2 ?x309) 0.0)))
 (let (($x5478 (<= (+ (* (- 3.0) L_1) ?x1096 A_1 L_3 ?x267 ?x976 (* (- 1.0) S_4)) 0.0)))
 (let (($x2917 (<= (+ (* (- 2.0) L_1) L_0 A_1 L_3 ?x267 A_2 (* (- 1.0) A_0)) 0.0)))
 (let (($x10786 (<= (+ ?x10852 S_2 ?x10836 (* (- (/ 1.0 2.0)) S_4)) 0.0)))
 (let (($x2956 (>= S_4 (+ A_3 (* (- 1.0) L_2)))))
 (let ((?x7451 (* (/ 1.0 2.0) A_3)))
 (let ((?x5536 (* (- (/ 1.0 2.0)) L_3)))
 (let ((?x10310 (* (- (/ 3.0 2.0)) A_1)))
 (let ((?x4244 (* (/ 3.0 2.0) L_1)))
 (let (($x887 (<= L_1 L_0)))
 (let ((?x3493 (* (- (/ 5.0 2.0)) A_3)))
 (let ((?x4091 (* (/ 5.0 2.0) L_3)))
 (let ((?x10749 (* (/ 5.0 2.0) A_1)))
 (let ((?x4911 (* (- (/ 5.0 2.0)) L_1)))
 (let (($x6392 (<= (+ ?x4911 ?x10749 ?x4091 ?x3493 ?x1096 S_4) 0.0)))
 (let (($x1287 (not (<= L_2 L_0))))
 (let (($x44093 (or $x74 $x1287 (<= (+ (* (- 3.0) L_0) ?x977 ?x1096 A_1 ?x7261 ?x976) (- 5.0)) (<= (+ (* (- (/ 5.0 2.0)) L_0) ?x10749 ?x4091 ?x3493 ?x1096 S_4) 0.0))))
 (let ((?x3449 (* 2.0 A_1)))
 (let ((?x268 (* (- 1.0) S_2)))
 (let ((?x5439 (* (- 4.0) L_1)))
 (let (($x9750 (<= (+ ?x5439 ?x268 ?x1096 ?x3449 ?x977 ?x7261 ?x976) 0.0)))
 (let (($x5790 (<= (+ (* (- 1.0) L_1) L_3 ?x267 ?x1096 A_1 S_1) 0.0)))
 (let ((?x519 (* (- 1.0) S_4)))
 (let ((?x3298 (* (/ 3.0 2.0) A_3)))
 (let ((?x4002 (* (- (/ 3.0 2.0)) L_3)))
 (let (($x44156 (or $x980 (<= (+ (* (- (/ 1.0 2.0)) L_1) ?x10783 ?x5315 ?x5252 S_4) (- 5.0)) (<= (+ (* (- 1.0) L_1) ?x977 ?x7261 A_2 S_4) (- 10.0)))))
 (let (($x6732 (<= (+ (* (- (/ 3.0 2.0)) L_1) (* (/ 3.0 2.0) A_1) ?x5315 S_2 ?x5252 ?x1096) 0.0)))
 (let (($x67702 (or $x980 (<= (+ (* (- 1.0) L_1) A_1 L_3 S_2 ?x267 ?x309) 0.0))))
 (let (($x6401 (<= (+ (* (- (/ 3.0 2.0)) L_1) (* (/ 3.0 2.0) A_1) ?x5315 ?x5252 S_3 ?x309) 0.0)))
 (let (($x31749 (or $x64 (<= (+ ?x2332 ?x1096 (* (- 2.0) A_2) (* 3.0 S_1)) (- 10.0)))))
 (let (($x9565 (<= (+ (* (- 1.0) L_1) A_2 ?x519) (- 5.0))))
 (let (($x1534 (<= (+ ?x624 A_3 ?x519) 0.0)))
 (let (($x642 (<= (+ (* (/ 1.0 3.0) S_0) (* (- (/ 1.0 3.0)) S_4)) (- 5.0))))
 (let (($x27546 (<= (+ (* 3.0 L_2) (* (- 3.0) A_2) S_4 (* 2.0 S_1)) (- 15.0))))
 (let (($x25919 (or $x64 (<= (+ L_2 L_0 ?x239 (* (- 1.0) A_0) (* 2.0 S_1)) (- 5.0)))))
 (let (($x31843 (or $x64 (<= (+ L_2 ?x239 (* (- 1.0) L_3) A_3 S_2 ?x519) 0.0))))
 (let (($x22028 (>= (+ (* (- 2.0) L_2) ?x976 L_3 ?x267 (* (- 1.0) A_1) L_0) 5.0)))
 (let ((?x5848 (* 2.0 A_3)))
 (let ((?x6903 (* (- 3.0) A_2)))
 (let ((?x1773 (* 3.0 L_2)))
 (let ((?x6639 (* (- 2.0) L_3)))
 (let (($x66677 (or $x980 (<= (+ (* (- 2.0) L_1) ?x3449 ?x977 ?x7261 S_4 ?x309) 0.0) $x10451)))
 (let (($x9645 (<= (+ (* (- 3.0) L_1) (* (- 2.0) S_2) A_1 L_3 ?x267 ?x976) 0.0)))
 (let (($x2949 (<= (+ (* (- (/ 3.0 2.0)) L_1) (* (/ 3.0 2.0) A_1) ?x5315 ?x268 ?x5252 S_4) 0.0)))
 (let (($x2016 (not (= L_1 L_3))))
 (let (($x54 (= L_1 L_0)))
 (let ((?x6601 (* (- 5.0) A_3)))
 (let ((?x7963 (* 5.0 L_3)))
 (let ((?x1865 (* 5.0 A_2)))
 (let ((?x4533 (* (- 5.0) L_2)))
 (let (($x13924 (<= (+ (* (- 3.0) L_1) (* (- 2.0) S_2) ?x3449 ?x977 ?x7261 A_2 S_4) 0.0)))
 (let (($x3297 (= L_3 L_1)))
 (let (($x6361 (<= (+ (* (- 1.0) L_1) L_0 A_1 L_3 S_2 ?x267 (* (- 1.0) A_0)) 0.0)))
 (let (($x45627 (or $x74 (<= (+ (* (- 2.0) L_2) ?x976 ?x977 ?x7261 ?x268 S_3) 0.0))))
 (let (($x23758 (or $x54 (<= (+ (* 2.0 L_1) S_0 (* (- 1.0) A_1) ?x239 S_3) (- 5.0)))))
 (let (($x13292 (<= (+ (* (/ 1.0 2.0) S_1) (* (- (/ 1.0 2.0)) S_4)) (- 5.0))))
 (let (($x3685 (>= S_4 (+ A_3 (* (- 1.0) L_1)))))
 (let ((?x1544 (* (- 1.0) A_0)))
 (let ((?x1265 (* (- 3.0) A_3)))
 (let ((?x6066 (* 3.0 L_3)))
 (let ((?x6736 (* 3.0 A_2)))
 (let ((?x6031 (* (- 3.0) L_2)))
 (let ((?x7849 (* (- 4.0) A_3)))
 (let ((?x1355 (* 4.0 L_3)))
 (let ((?x7972 (* 4.0 A_2)))
 (let ((?x7971 (* (- 4.0) L_2)))
 (let (($x10428 (<= (+ (* (- 1.0) L_1) L_0 A_2 ?x1544 S_1 ?x519) 0.0)))
 (let (($x7055 (<= (+ L_0 ?x1544 (* (/ 3.0 2.0) S_1) (* (- (/ 1.0 2.0)) S_4)) 0.0)))
 (let (($x44206 (or $x2956 (<= (+ (* (- 2.0) L_1) ?x1096 ?x976 S_1 (* (- 2.0) S_4)) 0.0) (<= (+ ?x1096 (* 2.0 S_1) ?x519) 0.0))))
 (let (($x6375 (<= (+ (* (- (/ 3.0 2.0)) L_1) L_0 (* (/ 3.0 2.0) A_1) ?x5315 ?x5252 S_3 ?x1544) 0.0)))
 (let (($x66654 (or $x74 (<= (+ (* (- 2.0) L_2) ?x976 ?x977 ?x7261 S_2 ?x309) 0.0))))
 (let (($x3740 (<= (+ (* 2.0 L_1) (* 2.0 S_0) (* (- 3.0) A_1) A_3) (- 10.0))))
 (let (($x15377 (<= (+ (* (- 3.0) L_3) ?x1773 ?x6903 (* 3.0 A_3) S_0 ?x519) 0.0)))
 (let (($x45024 (or $x64 $x15377 (>= S_4 (+ ?x5848 ?x6639 ?x2332 (* (- 2.0) A_2) A_1 ?x624)))))
 (let (($x44812 (or $x54 $x2956 (<= (+ (* (/ 1.0 2.0) L_1) ?x5536 ?x10836 S_2 ?x7451 ?x519) 0.0))))
 (let (($x67707 (or $x887 $x980 (<= (+ (* (/ 1.0 2.0) L_1) ?x3805 ?x10836 S_2 ?x4126) (- 5.0)))))
 (let (($x42850 (or $x64 (<= (+ ?x2332 ?x624 (* (- 2.0) A_2) A_1 S_3) (- 10.0)) (<= (+ L_2 (* (/ 1.0 3.0) S_0) ?x239 (* (/ 2.0 3.0) S_3)) (- 5.0)))))
 (let (($x3528 (<= (+ (* 3.0 L_1) (* 2.0 S_0) (* (- 3.0) A_1) S_3) (- 15.0))))
 (let (($x68294 (or $x64 (<= (+ ?x2332 (* (- 2.0) A_2) ?x6639 ?x5848 ?x519 S_1) 0.0))))
 (let (($x1196 (not (= L_2 L_3))))
 (let (($x47587 (or $x54 $x2956 (<= (+ L_1 (* (- 1.0) A_1) (* 2.0 S_2) ?x519) (- 5.0)))))
 (let (($x66949 (or $x980 $x2917 (<= (+ (* (- (/ 1.0 2.0)) L_1) L_0 ?x10783 ?x3805 ?x4126 ?x1544 S_1) 0.0))))
 (let (($x3800 (<= (+ (* 4.0 L_1) (* 3.0 S_0) (* (- 4.0) A_1) S_4) (- 20.0))))
 (let (($x6483 (<= (+ (* (- 1.0) L_2) A_2 L_3 ?x267 S_2 L_0 (* (- 1.0) A_1)) 0.0)))
 (let (($x45049 (or $x74 (<= (+ (* (- 2.0) L_2) ?x976 ?x977 ?x7261 S_2 L_0 ?x1544) 0.0))))
 (let (($x7203 (<= (+ (* (- 2.0) L_2) ?x976 ?x977 ?x7261 L_0 (* (- 1.0) A_1) S_3) 0.0)))
 (let (($x44657 (or $x74 (<= (+ ?x6031 ?x6736 ?x6066 ?x1265 S_4 L_0 (* (- 1.0) A_1)) 0.0))))
 (let ((?x3498 (* (- 2.0) A_1)))
 (let ((?x4062 (* (- 2.0) L_2)))
 (let ((?x1748 (* 2.0 L_1)))
 (let (($x2881 (<= (+ ?x7813 ?x309 (* (- 2.0) S_4)) 0.0)))
 (let (($x894 (not $x887)))
 (let (($x886 (not (<= L_2 L_1))))
 (let (($x4978 (<= (+ ?x1096 (* 4.0 S_2) (* (- 3.0) S_4)) 0.0)))
 (let (($x6574 (<= (+ L_1 (* (- 1.0) L_2) (* (- 1.0) A_1) A_2 S_2 ?x519) 0.0)))
 (let ((?x365 (* (- 5.0) A_2)))
 (let ((?x13949 (* 5.0 A_1)))
 (let ((?x14835 (* 5.0 L_2)))
 (let ((?x3964 (* (- 5.0) L_1)))
 (let (($x9133 (<= (+ (* (- 2.0) L_1) ?x2332 ?x3449 (* (- 2.0) A_2) ?x1096 S_1) 0.0)))
 (let (($x1600 (<= (+ (* (- 3.0) L_1) ?x1773 (* 3.0 A_1) ?x6903 S_2 ?x1096) 0.0)))
 (let ((?x1961 (* (- 4.0) A_2)))
 (let ((?x5818 (* 4.0 A_1)))
 (let ((?x9526 (* 4.0 L_2)))
 (let (($x46001 (or $x64 (<= (+ ?x2332 (* (- 2.0) A_2) (* (- 1.0) L_3) A_3 S_1) (- 5.0)))))
 (let (($x45564 (or $x64 (<= (+ (* (- 1.0) L_1) ?x2332 A_1 (* (- 2.0) A_2) S_3) (- 5.0)))))
 (let (($x1356 (<= (+ (* (- 3.0) L_1) ?x1773 (* 3.0 A_1) ?x6903 L_0 ?x1544 S_3) 0.0)))
 (let (($x7300 (<= (+ (* (- 2.0) L_1) ?x2332 ?x3449 (* (- 2.0) A_2) ?x268 S_3) 0.0)))
 (let (($x3274 (or $x74 (<= (+ (* (- 1.0) L_1) A_1 L_3 ?x268 ?x267 S_3) 0.0))))
 (let (($x3344 (<= (+ A_1 ?x624 ?x268) 0.0)))
 (let (($x9145 (<= (+ ?x1748 S_0 (* (- 1.0) A_1) (* (- 1.0) L_3) A_3 ?x239) 0.0)))
 (let (($x66841 (or $x54 (<= (+ (* (/ 1.0 2.0) L_1) ?x10836 ?x5536 ?x268 ?x7451 S_0) 0.0))))
 (let (($x15642 (or (<= (+ L_1 (* (- 2.0) S_2) (* 2.0 S_0) ?x239 S_4) 0.0) $x3344)))
 (let (($x10804 (or $x54 (<= (+ (* 3.0 L_1) (* 2.0 S_0) ?x3498 ?x239 S_4) (- 10.0)))))
 (let (($x40264 (or $x54 $x2016 (<= (+ L_1 S_0 (* (- 1.0) A_1) A_3 ?x239) 0.0))))
 (let (($x45250 (or $x980 $x2917 (<= (+ (* (- 2.0) L_1) L_0 ?x3449 ?x977 ?x7261 S_4 ?x1544) 0.0))))
 (let (($x2594 (<= (+ L_1 (* (- 1.0) A_1) (* (- 1.0) L_3) A_3 ?x519 S_1) 0.0)))
 (let (($x2972 (= L_2 L_0)))
 (let (($x40448 (or $x1189 (<= (+ ?x1773 ?x14307 (* 3.0 A_1) ?x6903 ?x1544 S_3) 0.0) $x2972)))
 (let (($x41126 (or $x1189 (<= (+ ?x2332 ?x14307 ?x1096 ?x3449 (* (- 2.0) A_2) S_1) 0.0) $x2972)))
 (let (($x68399 (or $x1758 $x3317 (<= (+ (* (- 5.0) L_0) ?x1865 ?x7963 ?x6601 ?x1096 S_4) 0.0))))
 (let (($x66886 (or $x1758 $x3317 (<= (+ ?x14307 ?x6736 ?x6066 ?x1265 S_4 (* (- 1.0) A_1)) 0.0))))
 (let (($x41217 (or $x1758 $x3317 (<= (+ A_2 L_3 ?x267 S_2 (* (- 1.0) A_1)) 0.0))))
 (let (($x41215 (or $x64 (<= (+ L_2 ?x239 (* (- 1.0) L_3) A_3 ?x268 S_0) 0.0) $x3344)))
 (let ((?x207 (* (- 1.0) L_3)))
 (let ((?x6608 (* (- 2.0) A_2)))
 (let ((?x563 (* (- 1.0) L_1)))
 (let ((?x5384 (+ ?x563 ?x2332 ?x6608 ?x207 A_3 A_1)))
 (let (($x6509 (<= ?x5384 0.0)))
 (let (($x507 (<= (+ (* 3.0 L_1) ?x6031 (* (- 3.0) A_1) ?x6736 S_0 ?x519) 0.0)))
 (let (($x49990 (or $x64 (<= (+ (* (- 2.0) L_1) ?x2332 ?x3449 ?x6608 S_2 L_0 ?x1544) 0.0))))
 (let (($x44360 (or $x64 (<= (+ (* (- 2.0) L_1) ?x2332 ?x3449 ?x6608 S_2 ?x309) 0.0))))
 (let (($x3492 (<= (+ (* (- 3.0) L_1) ?x1773 (* 3.0 A_1) ?x6903 ?x268 S_4) 0.0)))
 (let (($x3514 (<= (+ (* (- 3.0) L_1) ?x1773 (* 3.0 A_1) ?x6903 ?x309 S_3) 0.0)))
 (let (($x3283 (or $x74 (not $x980))))
 (let (($x45278 (or $x1758 $x3317 (<= (+ (* (- 4.0) L_0) ?x7972 ?x1355 ?x7849 ?x1096 S_3) 0.0))))
 (let (($x2084 (or $x64 $x886)))
 (let (($x68590 (or $x74 (<= (+ (* (- 1.0) L_2) A_2 L_3 ?x267 L_0 ?x1544 S_1) 0.0))))
 (let (($x125 (>= A_4 A_3)))
 (let (($x122 (>= A_1 A_0)))
 (let (($x2879 (<= (+ L_1 (* (- 1.0) L_2) A_2 ?x268 S_0 (* (- 1.0) A_1)) 0.0)))
 (let (($x816 (or $x54 $x894)))
 (let ((?x517 (* (- 1.0) L_2)))
 (let ((?x518 (+ A_2 ?x517)))
 (let (($x575 (<= ?x518 S_3)))
 (let (($x785 (not (<= (+ A_3 ?x207) S_3))))
 (let (($x123 (>= A_2 A_1)))
 (let (($x114 (>= S_2 S_1)))
 (let (($x111 (>= S_1 S_0)))
 (let (($x36 (>= L_0 L0)))
 (let (($x120 (>= S_4 S_3)))
 (let (($x2596 (<= S_4 (+ A_4 ?x207))))
 (let (($x3260 (<= S_2 (+ A_2 ?x563))))
 (and $x3260 $x2596 $x120 $x36 $x111 $x114 $x123 $x785 $x575 $x816 (or $x54 $x2879) $x122 $x125 (or (<= (+ ?x268 (* (/ 2.0 3.0) S_0) (* (/ 1.0 3.0) S_3)) 0.0) $x3344) $x68590 $x2084 $x45278 $x3283 (or $x54 (<= (+ ?x1748 ?x517 ?x3498 A_2 S_0) (- 5.0))) (or $x64 (<= (+ ?x5439 ?x9526 ?x5818 ?x1961 L_0 ?x1544 S_4) 0.0)) (or $x64 $x3514) (or $x64 (<= (+ ?x5439 ?x9526 ?x5818 ?x1961 S_4 ?x309) 0.0)) (or $x64 $x3492) (or $x64 (<= (+ ?x563 ?x2332 A_1 ?x239 ?x267 S_4) 0.0)) $x44360 $x49990 (or $x64 (<= (+ L_2 ?x239 S_2) (- 5.0))) (or $x54 $x507 $x2956) (or $x64 (<= (+ ?x563 L_2 A_1 ?x239 L_0 ?x1544 S_1) 0.0)) (or $x54 (<= (+ ?x1748 S_2 S_0 ?x3498) (- 10.0))) (or $x54 (<= (+ L_1 (* (- 1.0) A_1) S_1) (- 5.0))) (or $x54 (<= (+ ?x1748 S_0 (* (- 1.0) A_1) ?x267 S_4) (- 5.0))) (or $x3344 (<= (+ L_2 ?x268 S_0 ?x267 S_4) 0.0)) (or $x54 $x74 (= ?x5384 0.0) (not $x6509)) (or $x64 $x6509) (or $x64 (<= (+ (* (- 2.0) L_1) ?x1773 ?x3449 ?x6903 S_4) (- 5.0))) (or $x3344 (<= (+ (* (- 4.0) S_2) (* 3.0 S_0) S_4) 0.0)) (or $x74 (<= (+ ?x7971 ?x7972 ?x1355 ?x7849 S_4 L_0 ?x1544) 0.0)) (or $x74 (<= (+ ?x6031 ?x6736 ?x6066 ?x1265 ?x268 S_4) 0.0)) $x41215 (or $x74 (<= (+ ?x7971 ?x7972 ?x1355 ?x7849 S_4 ?x309) 0.0)) (or $x74 (<= (+ ?x517 A_2 ?x977 ?x7261 S_4) (- 5.0))) $x41217 $x66886 $x68399 $x41126 $x40448 (or $x1758 $x3317 (<= (+ ?x14307 ?x6736 ?x6066 ?x1265 S_3 ?x1544) 0.0)) (or $x74 (<= (+ L_3 S_3 ?x267) (- 5.0))) (or $x54 $x2594) $x45250 $x40264 $x10804 $x15642 $x66841 (or $x887 $x9145) (or (<= (+ ?x268 S_0) (- 5.0)) $x3344) (or $x74 (<= (+ ?x4062 ?x976 ?x977 ?x7261 ?x1096 S_1) 0.0)) (or $x3344 (<= (+ L_1 ?x268 S_0 ?x239 S_3) 0.0)) $x3274 (or $x64 $x7300) (or $x64 $x2956 $x7055) (or $x64 $x1356) $x45564 (or $x54 (<= (+ L_1 S_0 (* (- 1.0) A_1)) (- 10.0))) $x46001 (or $x64 (<= (+ ?x5439 ?x9526 ?x5818 ?x1961 ?x1096 S_3) 0.0)) (or $x64 $x1600) (or $x64 $x9133) (or $x64 (<= (+ ?x3964 ?x14835 ?x13949 ?x365 ?x1096 S_4) 0.0)) (or $x54 $x2956 $x6574) (or $x2956 (<= (+ L_0 ?x7813 ?x1544 (* (- 2.0) S_4)) 0.0)) (or $x886 $x894 $x1534 $x4978) (or $x3685 (<= (+ S_2 ?x519) (- 5.0))) (or $x886 $x894 $x1534 $x2881) (or $x54 $x2956 (<= (+ ?x1748 ?x4062 ?x3498 ?x976 ?x519 S_1) 0.0)) (or $x894 $x1534 $x9565 $x13292) $x44657 (or $x74 $x7203) $x45049 (or $x74 $x6483) (or $x54 $x3800) $x66949 $x47587 (or $x64 $x1196 (<= (+ ?x6608 ?x5848 ?x519 S_1) 0.0)) $x68294 (or $x980 $x2547 $x9750) (or $x980 $x6732 $x13028) (or $x2956 $x4978) (or $x54 $x3528) (or $x886 $x894 $x1534 $x10786) $x42850 (or $x74 (<= (+ ?x6031 ?x6736 ?x6066 ?x1265 S_2 ?x1096) 0.0)) $x67707 $x44812 (or $x980 $x2917 $x5790) (or $x980 $x5790 $x13028) (or $x980 $x5478 $x5790) $x45024 (or $x54 $x2016 $x3740) (or $x886 $x894 $x1534 $x7055 $x10428) (or $x2881 $x2956) $x66654 (or $x74 (<= (+ ?x6031 ?x6736 ?x6066 ?x1265 S_3 ?x309) 0.0)) (or $x980 $x2917 $x6375) $x44206 (or $x2956 $x7055 $x10428) (or $x74 (<= (+ ?x7971 ?x7972 ?x1355 ?x7849 ?x1096 S_3) 0.0)) (or $x74 (<= (+ ?x6031 ?x6736 ?x6066 ?x1265 L_0 S_3 ?x1544) 0.0)) (or $x3685 $x9565 $x13292) (or $x54 $x642 $x3685) $x23758 $x45627 (or $x980 $x6361) (or $x980 $x2917 $x6732) (or (not (<= 0.0 (+ ?x239 L_3 ?x267 A_1 S_4))) $x3297 $x13924) (or $x74 (<= (+ ?x4533 ?x1865 ?x7963 ?x6601 ?x1096 S_4) 0.0)) (or $x54 $x2016 (<= (+ ?x10310 ?x3298 S_0 ?x519) 0.0)) (or $x980 $x2949 $x9645) $x66677 (or $x74 $x1287 $x17002 (<= (+ ?x10728 ?x10783 ?x5315 ?x5252 S_4) (- 5.0))) (or $x64 (<= (+ ?x6639 ?x1773 ?x6903 ?x5848 S_0) (- 5.0)) $x22028) $x31843 $x25919 (or $x64 (<= (+ ?x2332 ?x6608 S_1 S_3) (- 10.0))) (or $x64 (<= (+ ?x2332 ?x267 ?x239 S_4 S_1) (- 5.0))) (or $x64 $x27546) (or $x642 $x1287 $x1534 $x9565 (<= (+ ?x10728 ?x10783 (* (- (/ 1.0 2.0)) S_4)) (- 5.0))) $x31749 (or $x980 $x6401 $x10451) (or $x980 $x5478 $x6732) $x67702 (or $x980 $x6732 $x10451) $x44156 (or $x887 (<= (+ ?x4244 ?x10310 ?x4002 ?x3298 S_0 ?x519) 0.0)) (or $x980 $x5790 $x9750) (or $x980 $x6392 $x10451) (or $x980 $x2917 $x6392) (or $x980 $x6392 $x9750) $x44093 (or $x980 $x6392 $x13028) (or $x887 (<= (+ ?x4244 ?x10310 ?x5536 ?x7451 S_0) (- 5.0))) (or $x980 (<= (+ (* (- (/ 1.0 2.0)) L_1) ?x10783 ?x3805 ?x4126) (- 5.0))) (or $x2956 $x10786) (or $x980 $x2547 $x2917) (or $x980 $x2547 $x5478) (or $x980 $x2547 $x10451) (or $x980 $x2547 $x13028) (or $x64 (<= (+ ?x2332 ?x624 ?x239 A_1 ?x267 S_4) (- 5.0)) $x4640) $x43564 $x43573 $x43628 (or $x1758 $x3317 (<= (+ L_3 ?x267 S_2) (- 10.0))) $x43655 (or $x74 (<= (+ ?x3805 ?x4126 (* (/ 1.0 2.0) S_1)) (- (/ 15.0 2.0))) $x37217) (or $x74 $x1189 $x17002 (<= (+ ?x5315 ?x10728 ?x10783 ?x5252 S_4) (- (/ 15.0 2.0))) $x29327) (or $x1758 $x3317 $x38503) $x51012 (or $x1758 $x3317 (<= (+ ?x3805 ?x10852 ?x10836 ?x4126 S_2) (- (/ 5.0 2.0)))) (or $x74 $x1189 (<= (+ ?x14307 ?x977 ?x1096 ?x7261 ?x976 S_1) (- 10.0)) $x34944) (or $x1758 $x3317 (<= (+ ?x977 ?x7261 ?x7813 ?x309) (- 10.0))) $x43724 $x2113 $x37 $x3333))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
