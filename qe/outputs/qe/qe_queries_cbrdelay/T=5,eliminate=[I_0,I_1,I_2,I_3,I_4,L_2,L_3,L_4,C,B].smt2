; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_2 () Real)
(declare-fun L_1 () Real)
(declare-fun A_2 () Real)
(declare-fun S_3 () Real)
(declare-fun A_3 () Real)
(declare-fun S_4 () Real)
(declare-fun A_4 () Real)
(declare-fun S_1 () Real)
(declare-fun A_1 () Real)
(declare-fun L_0 () Real)
(declare-fun S_0 () Real)
(declare-fun A_0 () Real)
(assert
 (let (($x34 (>= L_0 0.0)))
 (let ((?x775 (* (- (/ 1.0 2.0)) S_0)))
 (let ((?x1274 (* (/ 3.0 2.0) S_1)))
 (let ((?x367 (* (- 1.0) S_4)))
 (let ((?x355 (* (- 1.0) A_2)))
 (let ((?x929 (* (- 1.0) S_0)))
 (let ((?x1050 (* (- 2.0) S_4)))
 (let ((?x1051 (* (- 2.0) L_1)))
 (let ((?x1674 (* 2.0 A_2)))
 (let (($x8384 (<= (+ ?x1674 ?x1051 ?x1050 S_1 ?x929) 0.0)))
 (let (($x1262 (<= (+ ?x367 (* 2.0 S_1) ?x929) 0.0)))
 (let (($x867 (<= (+ A_3 (* (- 1.0) L_1) ?x367) 0.0)))
 (let ((?x454 (* (- 1.0) L_1)))
 (let ((?x474 (+ L_0 ?x454)))
 (let (($x27248 (<= 0.0 ?x474)))
 (let ((?x378 (* (- 1.0) S_3)))
 (let ((?x359 (* (- 1.0) A_1)))
 (let ((?x351 (* (- 1.0) A_3)))
 (let ((?x2758 (* (/ 3.0 2.0) L_1)))
 (let ((?x1238 (* (/ 1.0 2.0) S_4)))
 (let ((?x2757 (* (- (/ 3.0 2.0)) A_1)))
 (let ((?x3207 (* (/ 1.0 2.0) A_2)))
 (let ((?x3200 (* (- (/ 1.0 2.0)) A_3)))
 (let ((?x2671 (* (/ 1.0 2.0) L_1)))
 (let ((?x389 (* (- 1.0) S_2)))
 (let ((?x2630 (* (- (/ 1.0 2.0)) A_1)))
 (let ((?x2837 (* (/ 1.0 2.0) A_3)))
 (let ((?x3573 (* (- (/ 1.0 2.0)) A_4)))
 (let ((?x973 (* 2.0 S_1)))
 (let ((?x1975 (* (- 2.0) S_3)))
 (let ((?x347 (* (- 1.0) A_4)))
 (let (($x873 (<= (+ A_2 ?x454 ?x378) 0.0)))
 (let (($x48514 (or $x873 (<= (+ ?x347 A_3 ?x359 S_4 ?x1975 ?x973 L_1) 0.0) $x27248)))
 (let (($x47163 (or (<= (+ ?x351 A_2 ?x359 S_4 ?x1975 ?x973 L_1) 0.0) $x27248 (<= 0.0 (+ ?x355 A_1 S_3 (* (- 1.0) S_1))))))
 (let (($x9578 (<= (+ ?x1050 (* 3.0 S_2) (* (- 1.0) S_1)) 0.0)))
 (let ((?x400 (* (- 1.0) S_1)))
 (let ((?x1049 (* 2.0 A_1)))
 (let ((?x733 (* (- 2.0) A_2)))
 (let ((?x1037 (* 2.0 A_3)))
 (let (($x29712 (<= (+ (* (/ 1.0 2.0) A_1) (* (- (/ 1.0 2.0)) L_1) (* (- (/ 1.0 2.0)) S_4)) (- 5.0))))
 (let (($x28742 (<= (+ A_2 ?x454 ?x367) (- 5.0))))
 (let (($x28568 (<= (+ (* (- (/ 1.0 3.0)) S_4) (* (/ 1.0 3.0) S_0)) (- 5.0))))
 (let (($x48320 (or $x867 (<= (+ ?x1037 ?x733 ?x1049 ?x1050 S_1 ?x929 ?x1051) 0.0) $x1262 $x8384)))
 (let (($x28860 (<= (+ A_3 ?x355 ?x367 S_2) (- 5.0))))
 (let (($x48068 (or $x867 $x27248 (<= (+ ?x359 L_1 ?x367 (* 2.0 S_2)) (- 5.0)) $x28860)))
 (let ((?x2674 (* 2.0 L_1)))
 (let ((?x4778 (* 2.0 S_4)))
 (let ((?x4263 (* (- 2.0) A_1)))
 (let (($x48299 (or (<= (+ (* (- 2.0) A_4) ?x1674 ?x4263 ?x4778 ?x378 S_0 ?x2674) 0.0) $x27248)))
 (let (($x8813 (<= (+ A_2 (* (- 1.0) A_0) ?x454 ?x367 S_1 L_0) 0.0)))
 (let (($x1276 (<= (+ (* (- 1.0) A_0) (* (- (/ 1.0 2.0)) S_4) ?x1274 L_0) 0.0)))
 (let (($x1067 (<= (+ A_3 ?x355 A_1 (* (- 1.0) A_0) ?x367 S_1 L_0 ?x454) 0.0)))
 (let (($x10221 (<= (+ (* (- 3.0) S_4) (* 4.0 S_2) ?x929) 0.0)))
 (let ((?x4165 (* (- 3.0) L_1)))
 (let ((?x4780 (* (- 3.0) S_4)))
 (let ((?x4121 (* 3.0 A_1)))
 (let ((?x4602 (* (- 3.0) A_2)))
 (let ((?x2883 (* 3.0 A_3)))
 (let (($x17828 (or $x873 (<= (+ ?x351 L_1 S_4 (* (- (/ 1.0 2.0)) S_3) (* (/ 1.0 2.0) S_0)) 0.0) (<= (+ ?x351 A_1 S_4 ?x378) 0.0))))
 (let (($x48610 (or $x867 $x1276 $x8813 (<= (+ A_3 ?x355 (* (- 1.0) A_0) ?x367 ?x973 L_0) (- 5.0)))))
 (let (($x879 (<= (+ A_1 ?x454 ?x389) 0.0)))
 (let (($x30053 (or $x873 (<= (+ (* (- (/ 1.0 2.0)) S_3) (* (/ 1.0 2.0) S_0)) (- 5.0)) (<= 0.0 (+ ?x359 (* (/ 1.0 2.0) S_3) (* (/ 1.0 2.0) S_0) L_1)))))
 (let (($x10224 (<= (+ (* (- 1.0) A_0) ?x1050 (* 3.0 S_2) L_0) 0.0)))
 (let (($x8563 (<= (+ ?x1037 ?x733 ?x1049 (* (- 1.0) A_0) ?x1050 S_2 L_0 ?x1051) 0.0)))
 (let (($x28562 (not (<= (- 5.0) (+ ?x359 S_0 L_1)))))
 (let (($x47406 (or $x27248 (<= (+ ?x359 (* (/ 1.0 2.0) S_2) (* (/ 1.0 2.0) S_0) L_1) (- 5.0)))))
 (let (($x14355 (or $x873 (<= (+ S_4 ?x1975 S_0) 0.0) (<= (+ ?x1049 ?x1051 S_4 (* (- 3.0) S_3)) 0.0))))
 (let (($x29533 (or $x27248 (<= (+ ?x359 (* (/ 1.0 3.0) S_3) (* (/ 2.0 3.0) S_0) L_1) (- 5.0)))))
 (let (($x47695 (or (<= (+ ?x359 (* (/ 1.0 4.0) S_4) (* (/ 3.0 4.0) S_0) L_1) (- 5.0)) $x27248)))
 (let (($x96 (>= S_1 S_0)))
 (let (($x99 (>= S_2 S_1)))
 (let (($x102 (>= S_3 S_2)))
 (let (($x105 (>= S_4 S_3)))
 (let (($x107 (>= A_1 A_0)))
 (let (($x108 (>= A_2 A_1)))
 (let (($x109 (>= A_3 A_2)))
 (let (($x110 (>= A_4 A_3)))
 (and $x110 $x109 $x108 $x107 $x105 $x102 $x99 $x96 (or $x27248 (<= (+ ?x359 S_1 L_1) (- 5.0))) (or (= (+ L_1 (* (- 1.0) L_0)) 0.0) (not $x27248)) (or $x879 (<= (+ ?x389 S_0) (- 5.0))) (or $x873 (<= (+ (* (/ 1.0 3.0) S_4) ?x378 (* (/ 2.0 3.0) S_1)) 0.0)) (or $x879 (<= (+ (* (/ 1.0 4.0) S_4) ?x389 (* (/ 3.0 4.0) S_0)) 0.0)) $x47695 (or (<= (+ ?x347 A_3 ?x359 S_4 ?x378 S_0 L_1) 0.0) $x27248) (or $x879 (<= (+ (* (/ 1.0 3.0) S_3) ?x389 (* (/ 2.0 3.0) S_0)) 0.0)) $x29533 (or $x873 (<= (+ ?x378 S_1) (- 5.0))) (or $x879 (<= (+ ?x351 L_1 S_4 ?x389 S_0) 0.0)) (or $x27248 (<= (+ ?x359 S_0 L_1) (- 10.0))) (or (<= (+ ?x351 A_2 ?x359 S_3 ?x389 S_0 L_1) 0.0) $x27248) $x14355 (or $x873 (<= (+ (* (- 1.0) A_0) ?x378 ?x973 L_0) 0.0)) $x47406 (or $x879 (<= (+ ?x355 L_1 S_3 ?x389 S_0) 0.0)) (or (<= (+ ?x351 A_2 ?x4263 S_3 S_0 ?x2674) (- 5.0)) $x27248) (or $x867 (<= (+ ?x2630 ?x2671 (* (- (/ 1.0 2.0)) S_4) S_2) 0.0) $x28860) (or $x873 $x28562 (<= (+ A_1 ?x454 ?x378) (- 5.0))) (or $x867 (<= (+ ?x367 S_2) (- 5.0))) (or (<= (+ ?x347 A_2 ?x359 S_4 ?x378 S_1 L_1) 0.0) $x27248) (or $x867 $x8563 $x10224) (or $x867 $x10224 $x28860) $x30053 (or $x27248 (<= (+ (* (- (/ 1.0 2.0)) A_2) ?x359 ?x2758 ?x1238 S_0) (- 5.0))) (or (<= (+ ?x347 A_3 ?x355 ?x359 ?x2674 S_4 S_0) 0.0) $x27248) (or (<= (+ ?x347 A_2 ?x359 S_4 ?x389 S_0 L_1) 0.0) $x27248) (or (<= (+ (* (- (/ 1.0 2.0)) S_4) (* (/ 1.0 2.0) S_1)) (- 5.0)) $x867 $x873) (or $x873 (<= (+ ?x1975 (* 3.0 S_1) ?x929) 0.0)) (or $x879 (<= (+ (* (- (/ 1.0 2.0)) A_2) ?x2671 ?x1238 ?x389 S_0) 0.0)) (or $x27248 (<= (+ ?x351 ?x359 ?x2674 S_4 S_0) (- 5.0))) $x48610 (or $x867 $x9578 $x28860) (or (<= (+ (* (- (/ 1.0 2.0)) S_4) (* (/ 1.0 2.0) S_1)) (- 5.0)) $x867 $x28742) (or $x27248 (<= (+ ?x347 A_2 ?x4263 S_4 S_0 ?x2674) (- 5.0))) (or $x873 (<= (+ ?x351 L_1 S_4 ?x378 S_1) 0.0)) (or (<= (+ ?x3573 ?x2837 ?x2757 ?x1238 S_0 ?x2758) (- 5.0)) $x27248) $x17828 (or $x867 $x873 $x28562 $x29712) (or $x867 (not (<= (- 5.0) (+ ?x351 A_2))) $x28568 $x29712) (or $x867 $x10221 (<= (+ ?x2883 ?x4602 ?x4121 ?x4780 S_2 ?x929 ?x4165) 0.0)) (or $x867 $x10221 $x28860) (or $x867 $x1067 $x1276 $x8813) $x48299 $x48068 $x48320 (or $x27248 (<= (+ ?x355 ?x359 ?x2674 S_3 S_0) (- 5.0))) (or $x867 $x28568 $x28742 $x29712) (or $x867 (<= (+ ?x1037 ?x733 ?x1049 ?x1050 S_2 ?x400 ?x1051) 0.0) $x9578) (or (<= (+ ?x3200 ?x3207 ?x2630 ?x1238 ?x389 S_0 ?x2671) 0.0) $x27248) $x47163 $x48514 (or (<= (+ ?x3573 ?x2837 ?x2630 ?x1238 ?x389 S_0 ?x2671) 0.0) $x27248) (or (<= (+ ?x3200 ?x3207 ?x2757 ?x1238 S_0 ?x2758) (- 5.0)) $x27248) (or (<= (+ ?x351 A_2 ?x359 S_4 ?x378 S_0 L_1) 0.0) $x27248) (or $x867 $x1262 $x8384 (<= (+ A_3 ?x355 ?x367 ?x1274 ?x775) (- 5.0))) $x34 (<= (+ (* (- 1.0) A_0) S_0 L_0) 0.0) (<= (+ ?x359 L_1 S_1) 0.0) (<= (+ ?x347 L_1 S_4) 0.0) (<= (+ ?x351 L_1 S_3) 0.0) (<= (+ ?x355 L_1 S_2) 0.0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
