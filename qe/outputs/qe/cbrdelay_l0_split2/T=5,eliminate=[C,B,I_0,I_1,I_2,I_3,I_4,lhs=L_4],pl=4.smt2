; benchmark generated from python API
(set-info :status unknown)
(declare-fun L_0 () Real)
(declare-fun A_1 () Real)
(declare-fun S_1 () Real)
(declare-fun L0 () Real)
(declare-fun A_0 () Real)
(declare-fun S_0 () Real)
(declare-fun S_2 () Real)
(declare-fun A_3 () Real)
(declare-fun A_4 () Real)
(declare-fun L_4 () Real)
(declare-fun L_2 () Real)
(declare-fun L_1 () Real)
(declare-fun A_2 () Real)
(declare-fun S_4 () Real)
(declare-fun S_3 () Real)
(assert
 (let (($x2455 (<= (+ S_1 (* (- 1.0) A_1) L_0) 0.0)))
 (let (($x37 (>= L0 0.0)))
 (let (($x2166 (<= (+ S_0 L_0 (* (- 1.0) A_0)) 0.0)))
 (let ((?x278 (* (- 1.0) S_2)))
 (let ((?x969 (* 3.0 A_3)))
 (let ((?x2375 (* (- 2.0) A_4)))
 (let ((?x417 (* (- 3.0) L_0)))
 (let ((?x2417 (* 2.0 L_4)))
 (let (($x966 (<= L_4 L_2)))
 (let (($x866 (not (<= L_2 L_1))))
 (let (($x869 (not (<= L_1 L_0))))
 (let ((?x1612 (* (- 1.0) A_0)))
 (let ((?x1795 (* 4.0 A_3)))
 (let ((?x2269 (* (- 3.0) A_4)))
 (let ((?x1554 (* 3.0 L_4)))
 (let ((?x1082 (* (- 1.0) S_0)))
 (let ((?x1832 (* 5.0 A_3)))
 (let ((?x3526 (* (- 4.0) A_4)))
 (let ((?x3311 (* (- 5.0) L_0)))
 (let ((?x2526 (* 4.0 L_4)))
 (let ((?x308 (* (- 1.0) S_1)))
 (let ((?x1496 (* 2.0 A_3)))
 (let ((?x945 (* (- 2.0) L_1)))
 (let (($x3229 (<= (+ (* (- 1.0) L_1) L_0 A_3 (* (- 1.0) A_4) L_4 S_1 ?x1612) (- 5.0))))
 (let (($x10276 (or $x866 $x966 (<= (+ L_4 (* (- 1.0) A_4) A_3 (* (- 1.0) A_1) S_2) (- 5.0)))))
 (let (($x4884 (<= (+ (* 2.0 L_2) (* (- 2.0) A_2) (* 3.0 S_1) ?x1082) (- 10.0))))
 (let (($x64 (= L_2 L_1)))
 (let (($x5843 (or $x869 $x866 $x966 (<= (+ ?x1554 (* (- 4.0) L_0) ?x2269 ?x1795 ?x308) (- 15.0)))))
 (let ((?x1744 (* (/ 1.0 2.0) S_0)))
 (let ((?x207 (* (- 1.0) A_3)))
 (let ((?x301 (* (- 1.0) A_2)))
 (let ((?x609 (* (- 1.0) L_0)))
 (let ((?x5422 (* 2.0 L_2)))
 (let (($x7042 (or $x64 (<= (+ ?x5422 ?x609 A_1 ?x301 S_4 ?x207) (- 5.0)) (<= (+ (* (/ 3.0 2.0) L_2) (* (- (/ 1.0 2.0)) A_2) S_4 ?x207 ?x1744) (- (/ 5.0 2.0))))))
 (let (($x7035 (or $x64 (<= (+ L_2 ?x609 A_1 (* (- 2.0) A_2) A_3) (- 10.0)) (<= (+ (* (/ 1.0 2.0) L_2) (* (- (/ 3.0 2.0)) A_2) A_3 ?x1744) (- (/ 15.0 2.0))))))
 (let ((?x3657 (* (- 1.0) A_4)))
 (let ((?x5837 (* (- 2.0) L_2)))
 (let ((?x5764 (+ ?x5837 A_3 A_2 ?x3657 L_4)))
 (let ((?x938 (+ A_1 ?x609)))
 (let (($x5765 (<= ?x938 ?x5764)))
 (let ((?x5471 (* (- 2.0) A_2)))
 (let ((?x4401 (* (- 2.0) L_4)))
 (let ((?x4448 (* (- 2.0) A_3)))
 (let ((?x4543 (* 2.0 A_4)))
 (let (($x10302 (or $x64 (<= (+ (* 4.0 L_2) ?x4543 ?x4448 ?x4401 ?x5471 S_2 S_0) 0.0) $x5765)))
 (let (($x7008 (or $x966 (<= (+ (* (- 3.0) L_2) ?x2375 ?x1496 ?x2417 A_2 ?x308) (- 5.0)))))
 (let (($x5982 (or $x966 (<= (+ (* (- 4.0) L_2) ?x2269 ?x969 ?x1554 A_2 ?x1082) (- 10.0)))))
 (let (($x6160 (or $x966 (<= (+ (* (- 3.0) L_2) L_0 ?x2375 ?x1496 ?x2417 A_2 ?x1612) (- 5.0)))))
 (let (($x54 (= L_1 L_0)))
 (let (($x7294 (or $x54 (<= (+ (* 2.0 L_1) (* (- 1.0) A_1) S_0 S_4 ?x207) (- 5.0)))))
 (let (($x1115 (<= (+ (* 2.0 L_1) (* (- 3.0) A_1) (* 2.0 S_0) A_3) (- 15.0))))
 (let (($x348 (or $x54 (<= (+ (* 2.0 L_1) (* (- 2.0) A_1) S_0 S_2) (- 10.0)))))
 (let (($x6985 (or $x866 $x966 (<= (+ (* (- 3.0) L_1) ?x1496 ?x2375 ?x2417 A_1 ?x1082) (- 5.0)))))
 (let ((?x4018 (* (- 4.0) A_2)))
 (let ((?x4370 (* 4.0 A_1)))
 (let ((?x5447 (* 3.0 L_2)))
 (let ((?x2063 (* (- 4.0) L_1)))
 (let (($x3579 (<= (+ (* 2.0 L_1) (* (- 1.0) L_2) (* (- 2.0) A_1) A_2 S_0) (- 5.0))))
 (let ((?x1076 (* (- 3.0) A_2)))
 (let ((?x3306 (* 3.0 A_1)))
 (let ((?x1576 (* (- 3.0) L_1)))
 (let (($x10026 (or $x64 (<= (+ ?x945 (* 2.0 A_1) ?x5471 ?x5422 L_0 S_2 ?x1612) 0.0))))
 (let (($x622 (>= (+ ?x5422 ?x207 (* (- 1.0) L_1) A_1 ?x301 A_4 (* (- 1.0) L_4)) 5.0)))
 (let (($x4157 (or $x966 (<= (+ (* (- 3.0) L_2) ?x2269 ?x969 ?x1554 S_2 ?x1082) (- 15.0)))))
 (let (($x6972 (or $x64 $x966 (<= (+ (* (- 1.0) L_2) ?x3657 ?x1496 L_4 ?x301) (- 10.0)))))
 (let (($x9872 (or $x966 $x64 (>= S_0 (+ A_3 ?x945 (* 2.0 A_1) ?x301 ?x3657 L_4)))))
 (let (($x9800 (or $x64 (<= (+ ?x945 (* 2.0 A_1) ?x5471 ?x5422 ?x1082 S_1) 0.0))))
 (let ((?x2718 (* 2.0 A_2)))
 (let ((?x5266 (* (- 3.0) L_2)))
 (let ((?x287 (* (- 1.0) A_1)))
 (let (($x9959 (or $x64 (<= (+ ?x945 (* 2.0 A_1) ?x5471 ?x5422 ?x308 S_2) 0.0))))
 (let (($x2450 (<= (+ A_1 ?x609 ?x278) 0.0)))
 (let (($x7123 (or $x64 (<= (+ ?x5447 A_4 ?x4448 (* (- 1.0) L_4) ?x301 S_4 S_0) 0.0) $x5765)))
 (let ((?x2906 (* 2.0 S_0)))
 (let ((?x3625 (* (- 3.0) L_4)))
 (let ((?x4040 (* 3.0 A_4)))
 (let (($x7371 (or $x64 (<= (+ (* 5.0 L_2) ?x4040 ?x4448 ?x3625 ?x1076 ?x2906) 0.0) $x5765)))
 (let (($x7145 (or $x64 (<= (+ ?x945 L_2 (* 2.0 A_1) ?x5471 ?x278 A_3) 0.0))))
 (let (($x2791 (or $x54 (<= (+ L_1 ?x287 A_2 (* (- 1.0) L_2) S_0 ?x278) 0.0))))
 (let ((?x950 (+ A_0 ?x609)))
 (let ((?x548 (* (- 1.0) L_1)))
 (let ((?x535 (* (- 1.0) L_2)))
 (let ((?x2988 (+ ?x535 A_3 ?x548 A_1 ?x3657 L_4)))
 (let ((?x2429 (* (- 2.0) A_1)))
 (let ((?x1605 (* 2.0 L_1)))
 (let ((?x6072 (* 3.0 A_2)))
 (let ((?x5082 (* (- 3.0) S_2)))
 (let ((?x1234 (* 2.0 A_1)))
 (let ((?x5066 (* (- 5.0) L_1)))
 (let (($x485 (= L_4 L_2)))
 (let (($x3344 (or (not $x5765) $x966 (= (+ ?x5422 ?x609 A_4 ?x207 (* (- 1.0) L_4) ?x301 A_1) 0.0))))
 (let (($x2368 (= L_2 L_0)))
 (let (($x1134 (not (= L_0 L_1))))
 (let (($x7313 (or $x1134 $x2368 (<= 0.0 (+ ?x6072 ?x5266 (* 2.0 L_0) ?x2429 ?x3657 L_4)))))
 (let (($x1226 (not (= L_2 L_4))))
 (let (($x1267 (or $x1134 $x1226 $x2368 (<= 0.0 (+ ?x6072 ?x5837 (* 2.0 L_0) ?x2429 ?x3657)))))
 (let (($x4128 (or $x1134 $x2368 (<= (+ (* (- 2.0) L_0) ?x1234 ?x5471 ?x5422 ?x1082 S_1) 0.0))))
 (let (($x2679 (or $x1134 (<= (+ (* (- 2.0) L_0) ?x1234 ?x5471 ?x5422 ?x308 S_2) 0.0) $x2368)))
 (let (($x4621 (or $x485 (not $x966))))
 (let (($x2039 (or $x64 $x866)))
 (let (($x122 (>= A_1 A_0)))
 (let ((?x856 (+ A_3 ?x535)))
 (let (($x858 (<= S_3 ?x856)))
 (let (($x1447 (or $x54 $x869)))
 (let (($x912 (<= ?x856 S_3)))
 (let (($x124 (>= A_3 A_2)))
 (let (($x123 (>= A_2 A_1)))
 (let (($x114 (>= S_2 S_1)))
 (let (($x111 (>= S_1 S_0)))
 (let (($x36 (>= L_0 L0)))
 (let (($x120 (>= S_4 S_3)))
 (let (($x1198 (<= S_4 (+ A_4 ?x535))))
 (let (($x2294 (<= S_2 (+ A_2 ?x548))))
 (and $x2294 $x1198 $x120 $x36 $x111 $x114 $x123 $x124 $x912 $x1447 $x858 $x122 $x2039 (or $x485 (<= (+ ?x3657 L_4 S_4) (- 5.0))) (or $x54 (<= (+ L_1 ?x287 S_1) (- 5.0))) (or $x64 (<= (+ ?x548 A_1 ?x301 L_2 L_0 S_1 ?x1612) 0.0)) $x4621 (or $x866 $x966 $x54 (<= (+ ?x945 ?x969 ?x2375 ?x2417 ?x287) (- 15.0))) (or $x866 $x966 $x54 (<= (+ A_3 ?x3657 L_4 ?x287 S_2) (- 10.0))) (or $x866 $x966 (<= (+ ?x548 ?x1496 ?x3657 L_4 ?x301) (- 5.0))) $x2679 $x4128 (or $x966 (>= S_2 ?x5764)) $x1267 (or $x1134 (<= S_4 (+ A_3 ?x5837 L_0 ?x287 A_2)) $x2368) $x7313 (or $x64 (<= S_1 ?x5764)) (or $x2450 (<= (+ ?x535 ?x5082 A_3 ?x2906) 0.0)) $x3344 (or $x2450 (<= (+ L_2 ?x278 S_4 ?x207 S_0) 0.0)) (or $x485 (<= (+ ?x548 ?x3657 L_4 A_1 ?x278 S_4) 0.0)) (or $x866 $x966 (<= (+ ?x945 ?x3657 A_3 L_4 A_1 ?x278) (- 5.0))) (or $x866 $x966 (<= (+ ?x2063 ?x2375 ?x1496 ?x2417 ?x1234 ?x1082 ?x278) 0.0)) (or $x866 $x966 (<= (+ ?x945 ?x3657 ?x1496 L_4 A_1 ?x301 ?x278) 0.0)) (or $x866 $x966 (<= (+ ?x5066 ?x2375 ?x969 ?x2417 ?x1234 ?x5082) 0.0)) (or $x64 (<= S_4 (+ A_3 ?x5837 L_1 ?x287 A_2))) (or $x64 (<= 0.0 (+ ?x6072 ?x5266 ?x1605 ?x2429 ?x3657 L_4))) (or $x54 (<= S_0 ?x2988)) (or $x966 (>= S_1 ?x2988)) (or $x966 (<= ?x2988 ?x950)) $x2791 (or $x64 (<= (+ ?x1576 L_0 ?x5422 ?x3306 ?x1076 ?x1612 A_3) 0.0)) $x7145 (or $x64 (<= (+ ?x1576 ?x5422 ?x3306 ?x1076 ?x308 A_3) 0.0)) $x7371 $x7123 (or (<= (+ ?x301 ?x278 A_3 S_0) 0.0) $x2450) (or (<= (+ ?x278 S_0) (- 5.0)) $x2450) (or $x866 $x966 (<= (+ ?x548 A_3 ?x3657 L_4) (- 10.0))) (or $x64 (<= (+ L_2 ?x301 S_2) (- 5.0))) $x9959 (or $x64 (<= S_2 (+ ?x287 L_1 ?x5266 A_3 ?x2718 ?x3657 L_4))) $x9800 $x9872 (or $x64 (<= (+ ?x548 L_2 A_1 ?x5471 A_3) (- 5.0))) $x6972 $x4157 (or $x54 $x622 $x966) $x10026 (or $x64 (<= (+ ?x1576 ?x3306 ?x1076 ?x5447 ?x1082 S_2) 0.0)) (or $x54 $x3579) (or $x64 (<= (+ ?x2063 ?x5447 ?x4370 ?x4018 ?x1082 A_3) 0.0)) $x6985 $x348 (or $x54 (<= (+ L_1 ?x287 S_0) (- 10.0))) (or $x54 $x866 $x1115) (or $x54 (<= (+ L_1 ?x287 S_0 ?x301 A_3) (- 5.0))) $x7294 $x6160 (or $x966 (<= (+ ?x5837 ?x2375 ?x1496 ?x2417 S_1 ?x1082) (- 10.0))) $x5982 $x7008 $x10302 $x7035 (or $x64 (<= (+ L_2 L_0 ?x301 (* 2.0 S_1) ?x1612) (- 5.0))) (or $x64 (<= (+ L_2 ?x5471 S_1 A_3) (- 10.0))) (or $x64 (<= (+ ?x5422 ?x301 S_1 S_4 ?x207) (- 5.0))) $x7042 $x5843 (or $x64 $x4884) $x10276 (or $x866 $x966 (<= (+ ?x945 ?x969 ?x2375 ?x2417 ?x287) (- 10.0))) (or $x866 $x966 $x3229) (or $x866 $x966 (<= (+ ?x945 L_0 ?x1496 ?x2375 ?x2417 S_2 ?x1612) (- 10.0))) (or $x866 $x966 (<= (+ ?x945 ?x1496 ?x2375 ?x2417 S_2 ?x308) (- 10.0))) (or $x869 $x866 $x966 (<= (+ ?x2526 ?x3311 ?x3526 ?x1832 ?x1082) (- 20.0))) (or $x869 $x866 $x966 (<= (+ ?x1554 ?x417 ?x2269 ?x1795 ?x1612) (- 15.0))) (or $x869 $x866 $x966 (<= (+ ?x2417 ?x417 ?x2375 ?x969 ?x278) (- 10.0))) $x2166 $x37 $x2455)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
