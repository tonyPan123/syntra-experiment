; benchmark generated from python API
(set-info :status unknown)
(declare-fun C () Real)
(declare-fun L_1 () Real)
(declare-fun A_1 () Real)
(declare-fun S_4 () Real)
(declare-fun S_5 () Real)
(declare-fun S_3 () Real)
(declare-fun L_2 () Real)
(declare-fun A_2 () Real)
(declare-fun A_3 () Real)
(declare-fun L_3 () Real)
(declare-fun S_2 () Real)
(declare-fun S_1 () Real)
(declare-fun L_5 () Real)
(declare-fun A_5 () Real)
(declare-fun L_0 () Real)
(declare-fun S_0 () Real)
(declare-fun A_0 () Real)
(declare-fun B () Real)
(declare-fun L_4 () Real)
(declare-fun A_4 () Real)
(assert
 (let (($x39 (>= L_0 0.0)))
 (let (($x747 (>= C 5.0)))
 (let (($x776 (>= B 5.0)))
 (let ((?x263 (* (- 1.0) B)))
 (let ((?x340 (* (- 1.0) L_5)))
 (let ((?x347 (* (- 1.0) C)))
 (let ((?x440 (* (- 1.0) A_4)))
 (let (($x23547 (<= 0.0 (+ ?x440 L_4 A_5 ?x347 ?x340 ?x263))))
 (let (($x23523 (<= 0.0 (+ (* (- 1.0) A_1) C S_0 L_1))))
 (let (($x23524 (not $x23523)))
 (let ((?x877 (+ L_4 ?x340)))
 (let (($x23488 (<= 0.0 ?x877)))
 (let (($x23052 (not (<= 0.0 (+ L_3 (* (- 1.0) A_3) A_2 (* (- 1.0) L_2) C)))))
 (let (($x22286 (not (<= 0.0 (+ ?x440 L_4 (* (- 1.0) L_3) A_3 C)))))
 (let (($x22062 (<= 0.0 (+ (* (- 1.0) A_2) A_1 (* (- 1.0) L_1) C L_2))))
 (let (($x22072 (not $x22062)))
 (let (($x21770 (<= 0.0 (+ L_3 (* (- 1.0) A_3) A_1 (* (- 1.0) L_1) (* 2.0 C)))))
 (let (($x22056 (not $x21770)))
 (let (($x21609 (<= 0.0 (+ ?x440 L_4 A_1 (* (- 1.0) L_1) (* 3.0 C)))))
 (let (($x21718 (not $x21609)))
 (let (($x22849 (<= 0.0 (+ A_2 (* (- 1.0) A_1) (* (- 1.0) L_2) ?x347 L_1))))
 (let (($x2466 (<= (+ A_3 (* (- 1.0) A_2) ?x347) 0.0)))
 (let (($x23550 (<= 0.0 (+ A_5 (* (- 1.0) A_2) (* (- 3.0) C) L_2 ?x340 ?x263))))
 (let (($x96 (= L_5 L_4)))
 (let (($x23456 (<= 0.0 (+ A_5 (* (- 1.0) A_1) (* (- 4.0) C) L_1 ?x340 ?x263))))
 (let ((?x1204 (* 4.0 C)))
 (let ((?x272 (* (- 1.0) L_1)))
 (let ((?x443 (* (- 1.0) A_5)))
 (let (($x23553 (<= 0.0 (+ L_3 (* (- 1.0) A_3) A_5 (* (- 2.0) C) ?x340 ?x263))))
 (let (($x515 (<= 0.0 (+ ?x440 A_3 C))))
 (let ((?x323 (* (- 1.0) L_4)))
 (let ((?x3531 (+ A_4 ?x323 ?x443 C L_5)))
 (let (($x22441 (<= 0.0 ?x3531)))
 (let (($x22442 (not $x22441)))
 (let (($x11159 (<= (+ ?x443 (* 5.0 C) S_0 L_5 B) 0.0)))
 (let (($x22641 (<= 0.0 (+ ?x440 L_4 A_2 (* (- 1.0) L_2) (* 2.0 C)))))
 (let (($x11187 (<= (+ A_5 (* (- 1.0) A_0) (* (- 5.0) C) ?x340 ?x263 L_0) 0.0)))
 (let (($x23551 (not $x23550)))
 (let (($x5160 (= (+ ?x443 A_2 (* (- 1.0) L_2) (* 3.0 C) L_5 B) 0.0)))
 (let ((?x289 (* (- 1.0) L_2)))
 (let ((?x898 (+ L_1 ?x289)))
 (let (($x22260 (<= 0.0 ?x898)))
 (let (($x22262 (not $x22260)))
 (let (($x45757 (or (<= (+ ?x443 A_2 (* 3.0 C) ?x272 L_5) 0.0) $x22262 $x23488 $x23547 $x23553)))
 (let (($x26546 (or (<= (+ ?x443 (* 3.0 C) S_2 L_5 B) 0.0) $x23488 $x23547 $x23553)))
 (let (($x3234 (= (+ (* (- 1.0) L_3) A_3 ?x443 (* 2.0 C) L_5 B) 0.0)))
 (let (($x8114 (<= (+ (* 2.0 C) (* (- 1.0) S_3) S_0) 0.0)))
 (let (($x5600 (<= (+ A_2 ?x289 (* (- 1.0) S_3)) 0.0)))
 (let (($x56 (= L_1 L_0)))
 (let (($x45320 (or $x56 (<= (+ S_5 (* (- 1.0) A_1) (* (- 4.0) C) L_1 B) 0.0))))
 (let (($x25310 (or $x56 (<= (+ S_4 (* (- 1.0) A_1) (* (- 3.0) C) L_1 B) 0.0))))
 (let (($x4231 (= (+ A_4 ?x323 ?x443 C L_5 B) 0.0)))
 (let (($x491 (<= 0.0 (+ (* (- 1.0) A_2) A_1 C ?x272 L_2 ?x263))))
 (let (($x481 (not $x491)))
 (let (($x531 (<= 0.0 (+ L_3 (* (- 1.0) A_3) A_1 (* 2.0 C) ?x272 ?x263))))
 (let (($x529 (not $x531)))
 (let (($x22937 (<= 0.0 (+ ?x440 L_4 A_1 (* 3.0 C) ?x272 ?x263))))
 (let (($x22938 (not $x22937)))
 (let (($x46035 (or $x96 $x491 $x531 (= (+ ?x443 A_1 ?x1204 ?x272 L_5) 0.0) (not (<= 0.0 (+ ?x443 A_1 ?x272 ?x1204 L_5))) $x22937)))
 (let (($x46461 (or $x56 (<= (+ (* (- 1.0) A_1) (* (- 2.0) C) S_3 L_1 B) 0.0))))
 (let (($x22765 (<= 0.0 (+ A_4 ?x323 (* (- 1.0) A_2) (* (- 2.0) C) L_2 ?x263))))
 (let (($x29509 (or (= (+ ?x440 L_4 A_2 ?x289 (* 2.0 C) B) 0.0) (not $x22765))))
 (let (($x22224 (not (<= 0.0 (+ ?x323 L_3)))))
 (let (($x45445 (or (= (+ ?x440 L_4 (* (- 1.0) L_3) A_3 C B) 0.0) (not (<= 0.0 (+ A_4 ?x323 L_3 (* (- 1.0) A_3) ?x347 ?x263))))))
 (let (($x22229 (<= 0.0 (+ A_4 ?x323 (* (- 1.0) A_1) (* (- 3.0) C) L_1 ?x263))))
 (let (($x45358 (or (= (+ ?x440 L_4 A_1 ?x272 (* 3.0 C) B) 0.0) (not $x22229))))
 (let (($x2821 (<= (+ A_4 ?x323 (* (- 1.0) A_0) (* (- 4.0) C) ?x263 L_0) 0.0)))
 (let (($x21448 (<= 0.0 (+ A_4 ?x323 L_3 (* (- 1.0) A_3) ?x347 ?x263))))
 (let (($x86 (= L_4 L_3)))
 (let (($x45385 (or $x86 $x491 $x531 (= (+ ?x440 L_4 A_1 (* 3.0 C) ?x272) 0.0) $x21718)))
 (let (($x27742 (or $x86 (<= (+ ?x440 L_4 A_2 (* 2.0 C) ?x272) 0.0) $x21448 $x22262)))
 (let (($x22856 (or $x86 $x21448 $x22765 (<= (+ ?x440 L_4 (* 3.0 C) S_1 B) 0.0))))
 (let (($x6405 (or (<= (+ A_1 ?x272 (* (- 1.0) S_2)) 0.0) (<= (+ C (* (- 1.0) S_2) S_0) 0.0))))
 (let (($x76 (= L_3 L_2)))
 (let (($x26869 (or $x76 (<= (+ S_5 L_3 (* (- 1.0) A_3) (* (- 2.0) C) B) 0.0))))
 (let (($x489 (<= 0.0 (+ (* (- 1.0) L_3) A_3 (* (- 1.0) A_2) ?x347 L_2 ?x263))))
 (let (($x22694 (or $x76 $x489 (<= (+ L_3 (* (- 1.0) A_3) (* 2.0 C) S_1 B) 0.0))))
 (let (($x1438 (<= (+ (* (- 1.0) L_3) A_3 (* (- 4.0) C) (* (- 1.0) S_0) ?x263) 0.0)))
 (let (($x1426 (<= (+ (* (- 1.0) L_3) A_3 (* (- 3.0) C) (* (- 1.0) S_1) ?x263) 0.0)))
 (let ((?x1144 (* (- 2.0) C)))
 (let ((?x432 (* (- 1.0) A_1)))
 (let ((?x306 (* (- 1.0) L_3)))
 (let (($x21880 (<= 0.0 (+ ?x306 A_3 ?x432 ?x1144 L_1 ?x263))))
 (let (($x22680 (or $x76 $x489 (<= (+ L_3 (* (- 1.0) A_3) (* 3.0 C) S_0 B) 0.0) $x21880)))
 (let (($x47634 (or $x76 $x491 (= (+ L_3 (* (- 1.0) A_3) A_1 (* 2.0 C) ?x272) 0.0) $x22056)))
 (let ((?x1069 (* 2.0 C)))
 (let ((?x3113 (+ ?x306 A_3 ?x443 ?x1069 L_5)))
 (let (($x3372 (= ?x3113 0.0)))
 (let (($x45955 (or $x96 $x3372 $x4231 (not (<= (+ L_3 (* (- 1.0) A_3) A_5 ?x340 ?x1144) 0.0)))))
 (let (($x46003 (or $x96 (<= 0.0 (+ ?x440 L_4 ?x306 A_3 C ?x263)) $x3372 (not (<= 0.0 ?x3113)))))
 (let (($x46365 (or $x76 (<= (+ L_3 (* (- 1.0) A_3) A_2 C ?x272) 0.0) $x22262)))
 (let (($x47689 (or (= (+ L_3 (* (- 1.0) A_3) A_1 ?x272 ?x1069 B) 0.0) (not $x21880))))
 (let (($x487 (not $x489)))
 (let (($x2395 (not $x96)))
 (let (($x66 (= L_2 L_1)))
 (let (($x45708 (or $x66 (<= (+ S_5 (* (- 1.0) A_2) (* (- 3.0) C) L_2 B) 0.0))))
 (let (($x22268 (<= 0.0 (+ L_3 (* (- 1.0) A_3) A_2 C ?x289 ?x263))))
 (let (($x22270 (not $x22268)))
 (let (($x2823 (<= (+ ?x440 L_4 A_3 C ?x289) 0.0)))
 (let (($x45533 (or $x96 $x4231 $x22268 (not (<= 0.0 (+ ?x440 L_4 A_2 ?x1069 ?x289 ?x263))))))
 (let (($x22422 (<= 0.0 (+ ?x440 L_4 A_2 ?x1069 ?x289 ?x263))))
 (let (($x46158 (or $x96 (= (+ ?x443 A_2 (* 3.0 C) ?x289 L_5) 0.0) $x22260 $x22268 $x22422)))
 (let (($x47702 (or (= (+ (* (- 1.0) A_2) A_1 ?x272 C L_2 B) 0.0) (not (<= 0.0 (+ A_2 ?x432 ?x347 L_1 ?x289 ?x263))))))
 (let (($x1161 (<= (+ A_1 (* (- 1.0) S_2) ?x272 ?x263) 0.0)))
 (let (($x22326 (<= 0.0 (+ A_2 ?x432 ?x347 L_1 ?x289 ?x263))))
 (let (($x22330 (or $x66 $x22326 (<= (+ (* (- 1.0) A_2) ?x1069 S_0 L_2 B) 0.0))))
 (let (($x1718 (<= (+ ?x306 A_3 (* (- 1.0) A_0) (* (- 3.0) C) ?x263 L_0) 0.0)))
 (let (($x2226 (<= (+ A_2 (* (- 1.0) S_3) ?x289 ?x263) 0.0)))
 (let (($x128 (>= S_1 S_0)))
 (let (($x131 (>= S_2 S_1)))
 (let (($x134 (>= S_3 S_2)))
 (let (($x142 (>= A_1 A_0)))
 (let (($x143 (>= A_2 A_1)))
 (let (($x144 (>= A_3 A_2)))
 (and (<= (+ A_4 ?x323) S_5) (<= (+ A_3 ?x306) S_4) (not (<= (+ A_4 ?x323) S_4)) $x144 $x143 $x142 $x134 $x131 $x128 (or (not (<= 0.0 (+ ?x272 L_0))) $x56) (or (not (<= 0.0 (+ ?x306 L_2))) $x76) (<= (+ A_1 (* (- 1.0) A_0) ?x347 ?x272 ?x263 L_0) 0.0) (<= (+ A_1 ?x347 (* (- 1.0) S_1) ?x272 ?x263) 0.0) (<= (+ A_1 ?x1144 (* (- 1.0) S_0) ?x272 ?x263) 0.0) (or $x56 (<= (+ ?x432 ?x347 S_2 L_1 B) 0.0)) (<= (+ ?x306 A_3 ?x347 (* (- 1.0) S_3) ?x263) 0.0) (<= (+ ?x306 A_3 ?x1144 (* (- 1.0) S_2) ?x263) 0.0) (or $x76 $x515 (not $x86)) (or $x76 (<= (+ L_3 (* (- 1.0) A_3) C S_2 B) 0.0)) (or $x76 $x86 (= (+ ?x440 L_4 ?x306 A_3 C) 0.0)) (or $x56 (<= (+ ?x432 S_1 L_1 B) 0.0)) $x2226 (or $x56 $x22062) (or $x66 $x22262) (<= (+ A_2 (* (- 1.0) A_0) ?x1144 ?x289 ?x263 L_0) 0.0) (<= (+ A_2 (* (- 3.0) C) (* (- 1.0) S_0) ?x289 ?x263) 0.0) (or $x66 (<= (+ (* (- 1.0) A_2) S_2 L_2 B) 0.0)) (or $x86 (= (+ ?x440 L_4 A_2 ?x1069 ?x289) 0.0) $x22260 $x22268) (or $x66 (<= (+ (* (- 1.0) A_2) C S_1 L_2 B) 0.0)) (<= (+ A_2 ?x1144 (* (- 1.0) S_1) ?x289 ?x263) 0.0) (<= (+ A_2 ?x347 (* (- 1.0) S_2) ?x289 ?x263) 0.0) (or $x86 $x22224) (or $x86 (<= (+ ?x440 L_4 S_4 B) 0.0)) (or $x76 (<= (+ L_3 (* (- 1.0) A_3) S_3 B) 0.0)) $x1718 $x22330 $x1161 (or $x86 (not $x76) $x2823) (or $x86 $x21448 $x22270) (or $x66 (= (+ (* (- 1.0) A_2) A_1 C ?x272 L_2) 0.0) $x22072) $x47702 (or $x66 (<= (+ (* (- 1.0) A_2) ?x347 S_3 L_2 B) 0.0)) (or $x76 (<= (+ L_3 (* (- 1.0) A_3) S_4 ?x347 B) 0.0)) (or $x76 (= (+ L_3 (* (- 1.0) A_3) A_2 C ?x289) 0.0) $x22260) (or $x66 (<= (+ S_4 (* (- 1.0) A_2) ?x1144 L_2 B) 0.0)) $x46158 (or $x66 (not $x76) $x2466) $x45533 (or $x96 (= ?x3531 0.0) $x22442) (or $x86 $x22441) (or $x96 (not $x2823) $x3234 $x22270) (or $x96 $x2823 $x4231 $x22270) (or $x66 (<= 0.0 (+ ?x440 L_3 A_2 ?x1069 ?x289)) $x22224) $x45708 (or $x66 $x2395 (<= 0.0 (+ L_4 ?x443 A_2 (* 3.0 C) ?x289))) (or $x86 (<= (+ S_5 ?x440 L_4 ?x347 B) 0.0)) (<= (+ ?x432 L_1 ?x347 S_2) 0.0) (or $x487 (= (+ L_3 (* (- 1.0) A_3) A_2 ?x289 C B) 0.0)) (or $x487 $x22062) $x47689 $x46365 (or $x76 (<= 0.0 ?x3113)) $x46003 $x45955 (or $x76 $x481 $x489) $x47634 (or $x56 $x21770) (or $x56 (<= (+ ?x432 C S_0 L_1 B) 0.0)) $x22680 $x1426 $x1438 $x22694 (or $x491 (<= (+ A_1 C (* (- 1.0) S_3) ?x272 ?x263) 0.0)) $x26869 (or $x56 (<= 0.0 (+ ?x443 A_1 ?x272 ?x1204 L_5))) (<= (+ (* (- 1.0) A_0) ?x347 S_1 L_0) 0.0) $x6405 (or $x22224 (<= 0.0 (+ ?x440 A_3 C B))) (<= (+ ?x1144 S_1 (* (- 1.0) S_0)) 0.0) (<= (+ A_4 ?x323 (* (- 3.0) C) (* (- 1.0) S_2) ?x263) 0.0) (or $x86 (<= (+ ?x440 L_4 ?x1204 S_0 B) 0.0) $x21448 $x22229 $x22765) $x22856 (or $x86 (<= (+ ?x440 L_4 C S_3 B) 0.0)) $x27742 (or $x86 $x21448 (<= (+ ?x440 L_4 ?x1069 S_2 B) 0.0)) $x45385 (or $x86 $x491 $x529 $x21448) (or $x86 $x481 $x21448 $x22765) (<= (+ A_4 ?x323 ?x1144 (* (- 1.0) S_3) ?x263) 0.0) $x2821 (<= (+ A_4 ?x323 (* (- 5.0) C) (* (- 1.0) S_0) ?x263) 0.0) (<= (+ A_4 ?x323 (* (- 4.0) C) (* (- 1.0) S_1) ?x263) 0.0) $x45358 (or $x56 $x21609) $x45445 (or $x22224 (<= 0.0 (+ ?x440 L_3 A_2 ?x289 ?x1069 B))) $x29509 (or $x481 $x5600) $x46461 $x46035 (or $x491 $x531 (<= (+ ?x323 L_5 ?x263) 0.0) $x4231 $x22938) (or $x96 $x491 $x531 $x4231 $x22938) (or $x491 $x515 $x529 (<= (+ ?x323 L_5 ?x263) 0.0) $x3234) (or $x491 $x529 (<= (+ ?x323 L_5 ?x263) 0.0) $x4231 $x22286) (or $x96 $x491 $x515 $x529 $x3234) (or $x96 $x491 $x529 $x4231 $x22286) (or $x481 $x515 (<= (+ ?x323 L_5 ?x263) 0.0) $x3234 $x23052) (or $x481 (<= (+ ?x323 L_5 ?x263) 0.0) $x2466 $x5160 $x22641) (or $x481 (<= (+ ?x323 L_5 ?x263) 0.0) $x2466 $x4231 (not $x22641)) (or $x481 (<= (+ ?x323 L_5 ?x263) 0.0) $x4231 $x22286 $x23052) (or $x96 $x481 $x2466 $x5160 $x22641) (or $x96 $x481 $x2466 $x4231 (not $x22641)) (or $x96 $x481 $x515 $x3234 $x23052) (or $x96 $x481 $x4231 $x22286 $x23052) (or $x5600 (<= (+ C (* (- 1.0) S_3) S_1) 0.0)) (or $x2395 (<= 0.0 (+ A_4 ?x443 C B))) $x25310 $x45320 (or $x96 (<= (+ S_5 ?x443 L_5 B) 0.0)) (or $x96 (not $x23488)) (or (<= (+ A_1 ?x272 C (* (- 1.0) S_3)) 0.0) $x8114 $x22062) (<= (+ (* (- 3.0) C) S_2 (* (- 1.0) S_0)) 0.0) (or $x5600 $x8114 $x22072) (<= (+ (* (- 1.0) A_0) ?x1144 S_2 L_0) 0.0) (<= (+ ?x1144 S_2 (* (- 1.0) S_1)) 0.0) (or $x515 (not $x23547)) (or $x96 (<= (+ S_4 ?x443 C L_5 B) 0.0)) (<= (+ A_5 (* (- 4.0) C) (* (- 1.0) S_2) ?x340 ?x263) 0.0) (or $x3234 (not $x23553)) $x26546 $x45757 (<= (+ A_5 (* (- 3.0) C) (* (- 1.0) S_3) ?x340 ?x263) 0.0) (or $x96 $x23547 (<= (+ ?x443 ?x1069 S_3 L_5 B) 0.0)) (or $x4231 (not $x23547)) (or $x22641 (not $x23547)) (<= (+ S_5 ?x440 L_4 ?x347) 0.0) (or $x11159 $x23488 $x23523 $x23547 $x23550 $x23553) (or $x5160 $x23551) (or $x21609 (not $x23547)) (<= (+ A_5 (* (- 6.0) C) (* (- 1.0) S_0) ?x340 ?x263) 0.0) (or (<= (+ ?x443 ?x1204 S_1 L_5 B) 0.0) $x23488 $x23547 $x23550 $x23553) $x11187 (<= (+ A_5 (* (- 5.0) C) (* (- 1.0) S_1) ?x340 ?x263) 0.0) (or $x2466 (not $x22641) $x22849 $x23488 $x23524 $x23547) (or $x96 $x2466 $x22641 $x22849 $x23524 $x23550) (or $x96 $x11159 $x22072 $x22442 $x23550 $x23553) (or $x96 $x515 $x22056 $x22062 $x23524 $x23553) (or $x96 $x515 $x22072 $x23052 $x23524 $x23553) (or $x22062 $x23551) (<= (+ ?x1144 S_3 (* (- 1.0) S_2)) 0.0) (or (= (+ ?x443 A_1 ?x272 ?x1204 L_5 B) 0.0) (not $x23456)) (<= (+ (* (- 3.0) C) S_3 (* (- 1.0) S_1)) 0.0) (or $x96 $x21609 $x21770 $x22062 $x23456 $x23524) (or $x96 $x2466 $x21609 $x22072 $x23524 $x23550) (<= (+ S_5 (* (- 3.0) C) (* (- 1.0) S_3)) 0.0) (or $x2466 $x21718 (not $x22849) $x23488 $x23524 $x23547) (or $x21718 $x21770 $x22062 $x23488 $x23524 $x23547) (or $x22056 $x22062 $x22286 $x23488 $x23524 $x23547) (or $x22072 $x22286 $x23052 $x23488 $x23524 $x23547) (<= (+ (* (- 1.0) A_0) (* (- 3.0) C) S_3 L_0) 0.0) (<= (+ (* (- 4.0) C) S_3 (* (- 1.0) S_0)) 0.0) (<= (+ S_4 ?x1144 (* (- 1.0) S_3)) 0.0) (<= (+ S_5 (* (- 5.0) C) (* (- 1.0) S_1)) 0.0) (<= (+ S_5 (* (- 4.0) C) (* (- 1.0) S_2)) 0.0) (<= (+ S_5 (* (- 1.0) A_0) (* (- 5.0) C) L_0) 0.0) (<= (+ S_4 (* (- 3.0) C) (* (- 1.0) S_2)) 0.0) (<= (+ S_4 (* (- 4.0) C) (* (- 1.0) S_1)) 0.0) (<= (+ S_4 (* (- 1.0) A_0) (* (- 4.0) C) L_0) 0.0) (<= (+ S_5 (* (- 6.0) C) (* (- 1.0) S_0)) 0.0) (<= (+ S_4 (* (- 5.0) C) (* (- 1.0) S_0)) 0.0) $x776 $x747 $x39 (<= (+ (* (- 1.0) A_0) S_0 L_0) 0.0) (<= (+ S_5 ?x443 L_5) 0.0) (<= (+ ?x432 L_1 S_1) 0.0) (<= (+ (* (- 1.0) A_2) L_2 S_2) 0.0) (<= (+ L_3 (* (- 1.0) A_3) S_3) 0.0) (<= (+ L_3 (* (- 1.0) A_3) S_4 ?x347) 0.0) (<= (+ (* (- 1.0) A_2) L_2 ?x347 S_3) 0.0) (<= (+ S_4 (* (- 1.0) A_2) L_2 ?x1144) 0.0) (<= (+ S_5 L_3 (* (- 1.0) A_3) ?x1144) 0.0) (<= (+ S_5 (* (- 1.0) A_2) L_2 (* (- 3.0) C)) 0.0) (<= (+ ?x432 L_1 ?x1144 S_3) 0.0) (<= (+ S_5 ?x432 L_1 (* (- 4.0) C)) 0.0) (<= (+ S_4 ?x432 L_1 (* (- 3.0) C)) 0.0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
