; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_0 () Real)
(declare-fun S_1 () Real)
(declare-fun S_2 () Real)
(declare-fun S_3 () Real)
(declare-fun A_1 () Real)
(declare-fun L_1 () Real)
(declare-fun B () Real)
(declare-fun L_2 () Real)
(declare-fun A_2 () Real)
(declare-fun A_3 () Real)
(declare-fun L_3 () Real)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(assert
 (let (($x1437 (<= (+ (* (- 1.0) S_2) (* (- 1.0) B) (* (- 1.0) L_1) A_1) 0.0)))
 (let (($x837 (<= (+ (* (- 1.0) S_3) (* (- 1.0) B) (* (- 1.0) L_2) A_2) 0.0)))
 (let (($x871 (<= (+ A_0 (* (- 1.0) S_1) (* (- 1.0) B) (* (- 1.0) L_1)) 0.0)))
 (let (($x900 (>= B 0.0)))
 (let ((?x2051 (* (- 2.0) A_2)))
 (let ((?x2075 (* 2.0 L_2)))
 (let ((?x1478 (* 2.0 B)))
 (let ((?x496 (* (- 1.0) L_1)))
 (let (($x1170 (= B 0.0)))
 (let ((?x852 (* (- 3.0) A_2)))
 (let ((?x858 (* 3.0 L_2)))
 (let ((?x835 (* 3.0 B)))
 (let ((?x487 (* (- 1.0) L_0)))
 (let ((?x806 (* 2.0 S_3)))
 (let ((?x505 (* (- 1.0) L_2)))
 (let (($x423 (= ?x505 ?x496)))
 (let (($x10380 (or $x423 (<= (+ A_0 ?x806 ?x487 ?x835 ?x858 ?x852) 0.0) $x1170 (<= (+ ?x496 A_1 S_3 ?x1478 ?x2075 ?x2051) 0.0))))
 (let ((?x631 (* (- 1.0) A_2)))
 (let ((?x885 (* 2.0 A_1)))
 (let ((?x518 (* (- 1.0) B)))
 (let ((?x515 (* (- 1.0) A_0)))
 (let (($x893 (<= (+ ?x515 L_0 ?x518 (* (- 2.0) L_1) L_2 ?x885 ?x631) 0.0)))
 (let (($x1465 (<= (+ S_1 B L_1 (* (- 1.0) A_1)) 0.0)))
 (let (($x10517 (or $x423 (<= (+ ?x515 L_0 (* 2.0 S_1) B L_2 ?x631) 0.0) $x1465)))
 (let (($x2889 (<= (+ A_2 ?x505 ?x515 L_0 S_1 L_3 (* (- 1.0) A_3) B) 0.0)))
 (let ((?x602 (* (- 1.0) A_3)))
 (let ((?x1595 (* 2.0 L_0)))
 (let ((?x1594 (* (- 2.0) A_0)))
 (let ((?x485 (* (- 1.0) L_3)))
 (let (($x415 (= ?x485 ?x505)))
 (let (($x16024 (or $x415 $x1465 (<= (+ ?x1594 ?x1595 (* 3.0 S_1) B L_3 ?x602) 0.0) $x2889)))
 (let ((?x903 (* (- 2.0) A_3)))
 (let ((?x902 (* 2.0 L_3)))
 (let (($x15841 (or $x415 $x1170 (<= (+ ?x515 L_0 (* 3.0 S_2) ?x1478 ?x902 ?x903) 0.0))))
 (let (($x4410 (<= (+ L_1 (* (- 1.0) A_1) (* 2.0 S_2) L_3 ?x602 B) 0.0)))
 (let (($x888 (<= (+ A_0 ?x487 B (* (- 2.0) L_3) (* 2.0 A_3) ?x858 ?x852) 0.0)))
 (let (($x15850 (or $x423 $x888 $x1170 (<= (+ ?x496 A_1 ?x485 A_3 ?x2075 B ?x2051) 0.0))))
 (let ((?x1553 (* (- 2.0) B)))
 (let (($x1715 (<= (+ ?x1594 ?x1595 ?x1553 L_3 ?x602 (* (- 3.0) L_1) (* 3.0 A_1)) 0.0)))
 (let (($x15866 (or $x415 $x1170 $x1715 (<= (+ A_2 ?x505 ?x515 L_0 L_3 ?x602 ?x496 A_1) 0.0))))
 (let ((?x3815 (* (/ 1.0 2.0) L_0)))
 (let ((?x3814 (* (- (/ 1.0 2.0)) A_0)))
 (let (($x5545 (<= (+ ?x3814 ?x3815 L_3 (* (- (/ 3.0 2.0)) L_2) (* (/ 3.0 2.0) A_2) ?x602) 0.0)))
 (let (($x1282 (<= (+ A_2 ?x505 (* (- 1.0) S_3)) 0.0)))
 (let (($x15851 (or $x1282 (<= (+ ?x3814 (* (- (/ 1.0 2.0)) S_3) ?x3815 ?x496 ?x518 A_1) 0.0))))
 (let (($x1076 (<= (+ ?x496 A_1 (* (- 1.0) S_2)) 0.0)))
 (let (($x5298 (or $x1076 (<= (+ ?x631 L_2 S_3 A_0 (* (- 1.0) S_2) ?x487) 0.0))))
 (let ((?x538 (* (- 1.0) A_1)))
 (let (($x4311 (<= (+ L_1 ?x538 L_3 ?x602 ?x518 (* (- 2.0) L_2) (* 2.0 A_2)) 0.0)))
 (let (($x7025 (= ?x496 ?x487)))
 (let ((?x1562 (* (- 3.0) A_1)))
 (let ((?x1568 (* 3.0 L_1)))
 (let ((?x1565 (* (- 2.0) L_0)))
 (let ((?x1571 (* 2.0 A_0)))
 (let (($x876 (<= (+ ?x515 S_0 B L_1) 0.0)))
 (let (($x15829 (or $x876 $x1170 (<= (+ ?x631 L_2 S_3 A_0 ?x487 B L_1 ?x538) 0.0) $x7025)))
 (let (($x15922 (or $x876 $x1170 (<= (+ ?x1571 ?x1565 ?x1478 ?x485 A_3 ?x1568 ?x1562) 0.0) $x7025)))
 (let (($x7557 (or $x876 $x1170 (<= (+ ?x631 L_2 A_0 ?x487 ?x485 A_3 L_1 ?x538) 0.0) $x7025)))
 (let (($x1440 (<= (+ A_0 ?x487 S_2 ?x1478 (* 2.0 L_1) (* (- 2.0) A_1)) 0.0)))
 (let (($x1482 (<= (+ A_2 ?x505 A_0 ?x487 B (* 2.0 L_1) (* (- 2.0) A_1)) 0.0)))
 (let ((?x878 (* 2.0 A_3)))
 (let ((?x877 (* (- 2.0) L_3)))
 (let ((?x1693 (* (- 3.0) S_3)))
 (let (($x3973 (or (<= (+ ?x496 A_1 (* (- 2.0) S_3) ?x485 ?x518 A_3) 0.0) $x1282 (<= (+ A_0 ?x1693 ?x487 ?x1553 ?x877 ?x878) 0.0))))
 (let (($x1713 (<= (+ ?x515 L_0 ?x518 ?x902 ?x903 (* (- 3.0) L_2) (* 3.0 A_2)) 0.0)))
 (let (($x2870 (<= (+ ?x631 L_2 A_0 (* (- 1.0) S_2) ?x487 ?x485 A_3 ?x518) 0.0)))
 (let (($x2726 (or $x1076 (<= (+ ?x1571 ?x1565 (* (- 3.0) S_2) ?x518 ?x485 A_3) 0.0))))
 (let (($x899 (<= (+ A_0 ?x487 ?x518 (* 2.0 L_1) ?x505 (* (- 2.0) A_1) A_2) 0.0)))
 (let (($x2134 (or (not $x899) (<= (+ A_0 ?x487 (* (- 2.0) S_2) ?x518 ?x505 A_2) 0.0))))
 (and (<= ?x496 ?x487) (<= ?x485 ?x505) (<= ?x505 ?x496) (or $x876 $x1465 $x7025) (or $x899 $x1076) $x2134 $x2726 (or $x1076 $x2870) (or $x415 (<= (+ S_3 B L_3 ?x602) 0.0)) (or $x423 (<= (+ S_2 B L_2 ?x631) 0.0)) (or $x415 $x1170 $x1713) $x3973 (or $x1282 (<= (+ ?x3814 (* (- (/ 1.0 2.0)) S_3) ?x3815 S_1) 0.0)) (or $x1076 (<= (+ ?x1571 S_3 ?x1565 (* (- 3.0) S_2)) 0.0)) (or $x876 $x1170 $x1482 $x7025) (or $x876 $x1170 $x1440 $x7025) $x7557 $x15922 $x15829 (or $x876 $x1170 (<= (+ ?x1571 S_3 ?x1565 ?x835 ?x1568 ?x1562) 0.0) $x7025) (or $x415 $x1170 $x4311) $x5298 $x15851 (or $x415 $x1170 $x1715 $x5545) $x15866 $x15850 (or $x415 $x1170 $x4410) $x15841 $x16024 $x10517 (or (not (<= (+ ?x515 L_0 ?x518 ?x505 ?x885 ?x631) 0.0)) $x893 $x1170) (or $x423 $x893 $x1170) $x10380 $x900 $x871 $x837 (<= (+ L_1 ?x538 S_1) 0.0) (<= (+ S_0 L_0 ?x515) 0.0) (<= (+ S_3 L_3 ?x602) 0.0) (<= (+ ?x631 L_2 S_2) 0.0) $x1437 (<= (+ (* (- 1.0) S_3) S_2) 0.0) (<= (+ (* (- 1.0) S_2) S_1) 0.0) (<= (+ (* (- 1.0) S_1) S_0) 0.0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
