; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_2 () Real)
(declare-fun S_4 () Real)
(declare-fun C () Real)
(declare-fun S_3 () Real)
(declare-fun S_0 () Real)
(declare-fun S_1 () Real)
(declare-fun L0 () Real)
(declare-fun A_0 () Real)
(declare-fun B () Real)
(declare-fun A_1 () Real)
(declare-fun A_2 () Real)
(declare-fun A_4 () Real)
(declare-fun A_3 () Real)
(assert
 (let (($x37 (>= L0 0.0)))
 (let (($x762 (>= C 5.0)))
 (let (($x721 (>= B 5.0)))
 (let (($x490 (<= (+ (* (- 1.0) C) A_2 (* (- 1.0) A_1) B) 0.0)))
 (let (($x14196 (not $x490)))
 (let (($x22930 (or (<= (+ A_2 (* (- 1.0) A_4) S_4 (* (- 1.0) S_3)) 0.0) $x14196)))
 (let (($x15293 (or (<= (+ A_2 (* (- 1.0) A_1) B S_1 (* (- 1.0) S_3)) 0.0) (<= (+ C S_1 (* (- 1.0) S_3)) 0.0))))
 (let ((?x803 (* (- 1.0) S_0)))
 (let ((?x555 (* (- 1.0) B)))
 (let ((?x514 (* (- 1.0) A_2)))
 (let ((?x1979 (* (- 2.0) C)))
 (let (($x14897 (<= (+ (* (- 1.0) C) A_2 (* (- 1.0) A_3) S_4 (* (- 1.0) S_3)) 0.0)))
 (let (($x13996 (<= (+ C (* (- 1.0) S_4) S_2) 0.0)))
 (let (($x14233 (<= (+ (* (- 1.0) C) ?x514 A_1 ?x555 (* (- 1.0) S_1) S_2) 0.0)))
 (let ((?x249 (* (- 1.0) S_1)))
 (let ((?x506 (* (- 1.0) A_4)))
 (let ((?x1892 (* (- 2.0) B)))
 (let (($x13109 (<= (+ (* (- 1.0) C) A_3 ?x514) 0.0)))
 (let (($x13071 (not $x13109)))
 (let (($x2690 (<= (+ (* (- 1.0) A_1) B A_3 S_1 (* (- 1.0) S_4)) 0.0)))
 (let (($x22671 (or $x490 (<= (+ C A_1 ?x555 ?x506 S_4 (* (- 1.0) S_3)) 0.0))))
 (let (($x22425 (or $x490 (<= (+ A_1 ?x555 (* (- 1.0) A_3) S_4 (* (- 1.0) S_3)) 0.0))))
 (let (($x14988 (<= (+ C (* (- 1.0) A_1) B A_3 S_0 (* (- 1.0) S_4)) 0.0)))
 (let (($x351 (<= 0.0 (+ C ?x514 A_1))))
 (let (($x14813 (not $x351)))
 (let (($x13852 (<= (+ (* 3.0 C) S_0 (* (- 1.0) S_4)) 0.0)))
 (let (($x14091 (<= (+ C ?x514 B A_3 S_1 (* (- 1.0) S_4)) 0.0)))
 (let (($x14914 (<= (+ (* (- 3.0) C) A_1 ?x555 (* (- 1.0) A_3) ?x803 S_4) 0.0)))
 (let ((?x238 (* (- 1.0) S_2)))
 (let ((?x510 (* (- 1.0) A_3)))
 (let ((?x273 (* (- 1.0) C)))
 (let (($x13991 (<= (+ (* 2.0 C) S_1 (* (- 1.0) S_4)) 0.0)))
 (let (($x14752 (<= (+ ?x1892 (* (- 3.0) C) ?x506 A_3 A_1 ?x514 ?x803 S_4) 0.0)))
 (let (($x14346 (<= (+ (* 2.0 C) ?x514 B A_3 S_0 (* (- 1.0) S_4)) 0.0)))
 (let (($x14292 (<= (+ C A_2 (* (- 1.0) A_1) B S_1 (* (- 1.0) S_4)) 0.0)))
 (let ((?x498 (* (- 1.0) S_4)))
 (let ((?x518 (* (- 1.0) A_1)))
 (let ((?x793 (* 2.0 C)))
 (let (($x14228 (or (<= (+ ?x793 S_0 (* (- 1.0) S_3)) 0.0) (<= (+ C A_2 ?x518 B S_0 (* (- 1.0) S_3)) 0.0))))
 (let (($x22406 (or (<= (+ ?x514 B A_3 ?x498 S_2) 0.0) (<= (+ ?x273 ?x518 B A_3 ?x498 S_2) 0.0) $x13996)))
 (let (($x111 (>= S_1 S_0)))
 (let (($x114 (>= S_2 S_1)))
 (let (($x117 (>= S_3 S_2)))
 (let (($x120 (>= S_4 S_3)))
 (let (($x122 (>= A_1 A_0)))
 (let (($x123 (>= A_2 A_1)))
 (let (($x124 (>= A_3 A_2)))
 (let (($x125 (>= A_4 A_3)))
 (and $x125 $x124 $x123 $x122 $x120 $x117 $x114 $x111 $x22406 (<= (+ ?x273 A_2 ?x555 ?x510 ?x238 S_3) 0.0) $x14228 (or $x13109 $x13996) (or $x13109 $x13852 (<= (+ ?x793 A_2 ?x518 B S_0 ?x498) 0.0)) (or $x13109 $x13991 $x14292) (<= (+ (* (- 3.0) C) A_2 ?x555 ?x510 ?x803 S_3) 0.0) (or $x351 $x13852 $x14346) (<= (+ (* (- 3.0) C) A_2 ?x555 ?x510 ?x249 S_4) 0.0) (<= (+ ?x273 A_2 ?x555 ?x510 S_4 (* (- 1.0) S_3)) 0.0) (<= (+ ?x1979 A_2 ?x555 ?x510 S_4 ?x238) 0.0) (<= (+ (* (- 4.0) C) A_2 ?x555 ?x510 ?x803 S_4) 0.0) (<= (+ ?x1979 A_2 ?x555 ?x510 ?x249 S_3) 0.0) (<= (+ ?x555 ?x273 ?x506 A_3 S_4 (* (- 1.0) S_3)) 0.0) (<= (+ ?x1979 A_2 ?x555 ?x506 ?x249 S_4) 0.0) (<= (+ (* (- 3.0) C) A_2 ?x555 ?x506 ?x803 S_4) 0.0) (<= (+ ?x273 A_2 ?x555 ?x506 S_4 ?x238) 0.0) (<= (+ ?x273 ?x514 A_1 ?x555 ?x238 S_3) 0.0) (<= (+ ?x1979 ?x514 A_1 ?x555 ?x249 S_3) 0.0) (<= (+ ?x1979 ?x514 ?x555 A_1 S_4 ?x238) 0.0) (<= (+ (* (- 3.0) C) ?x514 ?x555 A_1 ?x249 S_4) 0.0) (<= (+ A_2 ?x555 ?x506 S_4 (* (- 1.0) S_3)) 0.0) (<= (+ (* (- 4.0) C) ?x514 ?x555 A_1 ?x803 S_4) 0.0) (<= (+ (* (- 3.0) C) ?x514 A_1 ?x555 ?x803 S_3) 0.0) $x14752 (<= (+ ?x1892 ?x273 ?x506 A_3 A_1 ?x514 S_4 ?x238) 0.0) (<= (+ A_1 ?x555 ?x510 ?x238 S_3) 0.0) (<= (+ ?x273 A_1 ?x555 ?x510 ?x249 S_3) 0.0) (or $x490 $x2690 (<= 0.0 (+ C ?x510 A_2 ?x555)) $x13991) (or $x490 $x2690 $x13991 $x14091) (<= (+ ?x273 A_1 ?x555 ?x510 S_4 ?x238) 0.0) (<= (+ ?x1979 A_1 ?x555 ?x510 ?x249 S_4) 0.0) $x14914 (<= (+ A_1 ?x555 ?x506 S_4 ?x238) 0.0) (or $x490 (<= 0.0 (+ C ?x510 A_2 ?x555)) $x13852 $x14988) (<= (+ ?x555 (* (- 4.0) C) ?x506 A_3 ?x803 S_4) 0.0) (<= (+ ?x1979 A_1 ?x555 ?x510 ?x803 S_3) 0.0) (or $x13996 $x14091 $x14988) (or $x13996 $x14813 $x14988) (or $x13071 $x13852 $x14813 $x14988) $x22425 (<= (+ ?x1979 A_1 ?x555 ?x506 ?x803 S_4) 0.0) (<= (+ ?x273 A_1 ?x555 ?x506 ?x249 S_4) 0.0) $x22671 (<= (+ ?x555 (* (- 3.0) C) ?x506 A_3 ?x249 S_4) 0.0) (<= (+ ?x555 ?x1979 ?x506 A_3 S_4 ?x238) 0.0) (or $x2690 $x13071 $x14196) (<= (+ ?x1892 ?x1979 ?x506 A_3 A_1 ?x514 ?x249 S_4) 0.0) $x14233 (or (<= (+ ?x514 A_3 ?x498 S_2) 0.0) $x13996) (or $x14196 $x14897) (<= (+ ?x1979 ?x514 A_1 ?x555 ?x803 S_2) 0.0) $x15293 $x22930 $x721 $x762 $x37 (not (>= (+ (* (- 1.0) A_0) S_4 L0) 0.0)) (<= (+ ?x1979 ?x803 S_1) 0.0) (<= (+ (* (- 3.0) C) ?x249 S_3) 0.0) (<= (+ ?x1979 ?x249 S_2) 0.0) (<= (+ (* (- 3.0) C) ?x803 S_2) 0.0) (<= (+ (* (- 4.0) C) ?x803 S_3) 0.0) (<= (+ (* (- 5.0) C) ?x803 S_4) 0.0) (<= (+ ?x1979 S_4 (* (- 1.0) S_3)) 0.0) (<= (+ (* (- 4.0) C) ?x249 S_4) 0.0) (<= (+ C S_0 ?x238) 0.0) (<= (+ ?x1979 ?x238 S_3) 0.0) (<= (+ (* (- 3.0) C) S_4 ?x238) 0.0)))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
