; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_1 () Real)
(declare-fun S_2 () Real)
(declare-fun A_1 () Real)
(declare-fun L_1 () Real)
(declare-fun B () Real)
(declare-fun A_2 () Real)
(declare-fun L_2 () Real)
(declare-fun S_3 () Real)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(declare-fun S_0 () Real)
(declare-fun A_3 () Real)
(assert
 (let (($x2329 (<= (+ (* (- 1.0) S_2) (* (- 1.0) B) (* (- 1.0) L_1) A_1) 0.0)))
 (let (($x848 (<= (+ (* (- 1.0) S_3) (* (- 1.0) L_2) (* (- 1.0) B) A_2) 0.0)))
 (let (($x883 (<= (+ A_0 (* (- 1.0) S_1) (* (- 1.0) L_1) (* (- 1.0) B)) 0.0)))
 (let (($x906 (>= B 0.0)))
 (let ((?x1363 (* (- 3.0) A_1)))
 (let ((?x1362 (* 3.0 L_1)))
 (let ((?x870 (* 3.0 B)))
 (let ((?x2340 (* (- 2.0) L_0)))
 (let ((?x2333 (* 2.0 A_0)))
 (let (($x1531 (= B 0.0)))
 (let (($x888 (<= (+ (* (- 1.0) A_0) S_0 L_1 B) 0.0)))
 (let ((?x502 (* (- 1.0) L_0)))
 (let ((?x511 (* (- 1.0) L_1)))
 (let (($x454 (= ?x511 ?x502)))
 (let ((?x531 (* (- 1.0) A_1)))
 (let ((?x574 (* (- 1.0) A_2)))
 (let (($x6909 (or $x454 $x888 $x1531 (<= (+ ?x574 L_2 S_3 A_0 ?x502 B L_1 ?x531) 0.0))))
 (let (($x1064 (<= (+ ?x511 A_1 (* (- 1.0) S_2)) 0.0)))
 (let (($x3500 (or $x1064 (<= (+ ?x574 L_2 S_3 A_0 (* (- 1.0) S_2) ?x502) 0.0))))
 (let ((?x533 (* (- 1.0) B)))
 (let ((?x1919 (* (/ 1.0 2.0) L_0)))
 (let ((?x1071 (* (- (/ 1.0 2.0)) S_3)))
 (let ((?x3190 (* (- (/ 1.0 2.0)) A_0)))
 (let (($x1520 (<= (+ (* (- 1.0) S_3) (* (- 1.0) L_2) A_2) 0.0)))
 (let ((?x903 (* (- 2.0) A_1)))
 (let ((?x902 (* 2.0 L_1)))
 (let ((?x1275 (* 2.0 B)))
 (let (($x1430 (<= (+ ?x511 L_2) 0.0)))
 (let (($x886 (<= (+ (* (- 1.0) A_0) L_0 (* 2.0 S_1) L_2 B ?x574) 0.0)))
 (let ((?x863 (* (- 3.0) A_2)))
 (let ((?x618 (* (- 1.0) A_0)))
 (let ((?x846 (* 3.0 L_2)))
 (let ((?x1750 (+ (* (- 3.0) L_1) (* 3.0 A_1) S_3 ?x870 L_0 ?x846 ?x618 ?x863)))
 (let (($x6771 (or (<= (+ A_0 (* 2.0 S_3) ?x502 ?x846 ?x870 ?x863) 0.0) $x1430 $x1531 (<= ?x1750 0.0))))
 (let (($x1272 (<= (+ ?x511 A_1 S_3 (* 2.0 L_2) ?x1275 (* (- 2.0) A_2)) 0.0)))
 (let (($x905 (<= (+ A_0 ?x502 (* (- 1.0) L_2) ?x902 ?x533 ?x903 A_2) 0.0)))
 (let (($x467 (or $x454 $x888 $x1531 (<= (+ A_0 ?x502 B ?x902 (* (- 1.0) L_2) ?x903 A_2) 0.0))))
 (let ((?x891 (* 2.0 A_1)))
 (let ((?x897 (* (- 2.0) L_1)))
 (let (($x2367 (<= (+ ?x618 L_0 (* (- 2.0) B) ?x897 L_2 ?x891 ?x574) 0.0)))
 (let (($x6824 (or (<= (+ ?x618 L_0 L_2 ?x897 ?x533 ?x891 ?x574) 0.0) $x1430 (not $x2367))))
 (let (($x878 (<= (+ A_0 ?x502 (* (- 2.0) S_2) (* (- 1.0) L_2) ?x533 A_2) 0.0)))
 (and (<= ?x511 ?x502) (<= (* (- 1.0) L_2) ?x511) (or (not $x905) $x878) (or (= (* (- 1.0) L_2) ?x511) (<= (+ S_2 L_2 B ?x574) 0.0)) (or $x905 $x1064) (or $x454 $x888 (<= (+ S_1 B L_1 ?x531) 0.0)) $x6824 (or $x1430 $x1531 $x2367) $x467 (or $x905 $x1272 $x1430 $x1531) $x6771 (or $x886 $x1430 $x1531) (or $x1520 (<= (+ ?x3190 ?x1071 ?x1919 S_1) 0.0)) (or $x454 $x888 $x1531 (<= (+ A_0 ?x502 S_2 ?x1275 ?x902 ?x903) 0.0)) (or $x1520 (<= (+ ?x3190 ?x1071 ?x1919 ?x511 ?x533 A_1) 0.0)) (or $x1064 (<= (+ ?x2333 S_3 ?x2340 (* (- 3.0) S_2)) 0.0)) $x3500 $x6909 (or $x454 $x888 $x1531 (<= (+ ?x2333 S_3 ?x2340 ?x870 ?x1362 ?x1363) 0.0)) $x906 $x883 $x848 (<= (+ L_1 ?x531 S_1) 0.0) (<= (+ (* (- 1.0) S_1) S_0) 0.0) (<= (+ S_3 (* (- 1.0) A_3) L_2) 0.0) (<= (+ S_0 L_0 ?x618) 0.0) (<= (+ (* (- 1.0) S_3) S_2) 0.0) (<= (+ S_2 L_2 ?x574) 0.0) $x2329 (<= (+ (* (- 1.0) S_2) S_1) 0.0)))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
