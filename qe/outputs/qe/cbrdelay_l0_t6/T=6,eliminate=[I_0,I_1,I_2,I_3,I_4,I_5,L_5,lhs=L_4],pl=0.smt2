; benchmark generated from python API
(set-info :status unknown)
(declare-fun L0 () Real)
(declare-fun C () Real)
(declare-fun B () Real)
(declare-fun S_5 () Real)
(declare-fun S_0 () Real)
(declare-fun L_3 () Real)
(declare-fun A_4 () Real)
(declare-fun L_0 () Real)
(declare-fun L_1 () Real)
(declare-fun S_4 () Real)
(declare-fun S_1 () Real)
(declare-fun S_2 () Real)
(declare-fun S_3 () Real)
(declare-fun A_2 () Real)
(declare-fun L_4 () Real)
(declare-fun A_1 () Real)
(declare-fun L_2 () Real)
(declare-fun A_3 () Real)
(declare-fun A_5 () Real)
(declare-fun A_0 () Real)
(assert
 (let (($x42 (>= L0 0.0)))
 (let (($x732 (>= C 5.0)))
 (let (($x926 (>= B 5.0)))
 (let ((?x558 (* (- 1.0) L_3)))
 (let ((?x1044 (+ A_4 ?x558)))
 (let (($x3070 (>= S_5 ?x1044)))
 (let (($x958 (not (<= L_1 L_0))))
 (let (($x20108 (or $x958 $x3070 (<= (+ (* 4.0 C) S_0 (* (- 1.0) S_5)) 0.0))))
 (let (($x13840 (or $x958 $x3070 (<= (+ (* 2.0 C) (* (- 1.0) S_5) S_2) 0.0))))
 (let (($x19098 (or $x958 $x3070 (<= (+ (* 3.0 C) (* (- 1.0) S_5) S_1) 0.0))))
 (let ((?x368 (* (- 1.0) L_1)))
 (let ((?x1020 (+ A_2 ?x368)))
 (let (($x2779 (>= S_3 ?x1020)))
 (let (($x12210 (<= (+ A_1 (* (- 1.0) L_0) L_4 (* (- 1.0) A_4) (* 3.0 C)) 0.0)))
 (let (($x2357 (not (<= L_2 L_0))))
 (let (($x89 (= L_4 L_3)))
 (let (($x12028 (<= (+ A_2 (* (- 1.0) L_0) L_4 (* (- 1.0) A_4) (* 2.0 C)) 0.0)))
 (let (($x1574 (not (= L_1 L_2))))
 (let ((?x266 (* (- 1.0) L_2)))
 (let ((?x1032 (+ A_3 ?x266)))
 (let (($x1923 (>= S_4 ?x1032)))
 (let (($x19917 (or $x89 $x1923 (<= S_2 (+ (* (- 1.0) B) (* (- 1.0) L_4) A_4 (* (- 2.0) C))))))
 (let (($x14037 (or $x89 $x1923 $x2779 (<= S_0 (+ (* (- 1.0) B) (* (- 1.0) L_4) A_4 (* (- 4.0) C))))))
 (let (($x19991 (or $x89 $x1923 $x2779 (<= S_1 (+ (* (- 1.0) B) (* (- 1.0) L_4) A_4 (* (- 3.0) C))))))
 (let (($x19305 (or $x89 (<= S_3 (+ (* (- 1.0) B) (* (- 1.0) L_4) A_4 (* (- 1.0) C))))))
 (let (($x1564 (not (= L_3 L_4))))
 (let (($x20116 (or (not (<= L_3 L_1)) $x1564 (<= (+ A_4 (* (- 1.0) A_2) (* (- 2.0) C)) B))))
 (let (($x10324 (<= A_2 (+ A_1 (* (- 1.0) B) C))))
 (let (($x11371 (not $x10324)))
 (let ((?x337 (* (- 1.0) C)))
 (let ((?x588 (* (- 1.0) A_2)))
 (let ((?x11236 (+ A_3 ?x588 ?x337)))
 (let (($x11237 (<= ?x11236 0.0)))
 (let (($x11328 (not $x11237)))
 (let (($x19449 (or (>= S_5 (+ A_4 ?x368)) $x11328 $x11371 (>= S_5 (+ A_3 ?x368 C)))))
 (let (($x69 (= L_2 L_1)))
 (let ((?x11320 (+ A_3 ?x266 C)))
 (let (($x11704 (>= S_5 ?x11320)))
 (let (($x20041 (or $x3070 $x10324 $x11704 (>= S_5 (+ A_1 ?x368 (* (- 1.0) B) (* 3.0 C))))))
 (let (($x962 (not (<= L_3 L_2))))
 (let (($x960 (not (<= L_2 L_1))))
 (let (($x59 (= L_1 L_0)))
 (let (($x14362 (or $x59 $x960 $x962 $x1564 (<= (+ A_4 (* (- 1.0) A_1) (* (- 3.0) C)) 0.0))))
 (let (($x19536 (or $x1923 $x10324 (>= S_4 (+ A_1 ?x368 (* (- 1.0) B) (* 2.0 C))))))
 (let (($x11506 (<= S_5 (+ A_1 ?x368 (* (- 1.0) B) (* 4.0 C)))))
 (let (($x11419 (<= A_3 (+ A_2 (* (- 1.0) B) C))))
 (let (($x11547 (not $x11419)))
 (let (($x19084 (or $x3070 $x11419 (>= S_5 (+ A_2 ?x266 (* (- 1.0) B) (* 2.0 C))))))
 (let ((?x11617 (+ A_3 ?x368 C)))
 (let ((?x631 (* (- 1.0) B)))
 (let ((?x335 (* (- 1.0) L_4)))
 (let ((?x950 (+ A_4 ?x335 ?x631)))
 (let (($x11618 (= ?x950 ?x11617)))
 (let (($x4571 (= L_4 L_1)))
 (let (($x2878 (not (= L_1 L_3))))
 (let (($x20125 (or $x2878 $x4571 $x10324 $x11618 (not (<= A_3 (+ A_1 ?x631 (* 2.0 C)))))))
 (let (($x11430 (<= A_3 (+ A_1 ?x631 (* 2.0 C)))))
 (let (($x963 (<= L_4 L_3)))
 (let (($x20109 (or $x59 $x960 $x963 $x10324 $x11430 (= (+ A_4 ?x335) (+ A_1 ?x368 (* 3.0 C))))))
 (let (($x1308 (not (= L_2 L_3))))
 (let (($x11289 (or $x1308 $x11237 (<= (+ A_3 (* (- 1.0) A_1) (* (- 2.0) C)) 0.0))))
 (let (($x19650 (or $x69 $x963 (= (+ A_4 ?x335) (+ A_2 ?x266 (* 2.0 C))) $x11419)))
 (let (($x9813 (<= A_4 (+ A_3 ?x631 C))))
 (let (($x79 (= L_3 L_2)))
 (let (($x3022 (= L_3 L_1)))
 (let (($x2498 (= L_2 L_0)))
 (let (($x1362 (not (= L_0 L_1))))
 (let (($x11365 (or $x1362 $x2498 (<= (+ A_1 (* (- 1.0) L_0) L_2 ?x588 C) 0.0))))
 (let (($x41 (>= L_0 L0)))
 (let (($x131 (>= S_1 S_0)))
 (let (($x134 (>= S_2 S_1)))
 (let (($x137 (>= S_3 S_2)))
 (let (($x140 (>= S_4 S_3)))
 (let (($x145 (>= A_1 A_0)))
 (let (($x146 (>= A_2 A_1)))
 (let (($x147 (>= A_3 A_2)))
 (let (($x148 (>= A_4 A_3)))
 (let (($x149 (>= A_5 A_4)))
 (and (<= (+ A_3 ?x558) S_5) (not (<= (+ A_0 (* (- 1.0) L_0)) S_4)) $x149 $x148 $x147 $x146 $x145 $x140 $x137 $x134 $x131 $x41 (>= S_4 (+ A_3 ?x558 ?x631)) (or $x69 (<= S_2 (+ A_2 ?x266 ?x631))) (or $x59 (<= S_1 (+ A_1 ?x368 ?x631))) (or $x79 $x962) (or $x79 (<= S_3 (+ A_3 ?x558 ?x631))) (or $x59 (<= S_0 (+ ?x631 ?x368 A_1 ?x337))) (or $x79 $x89 (= (+ A_4 ?x335) (+ A_3 ?x558 C))) (or $x69 $x79 (= (+ A_3 ?x558) (+ A_2 ?x266 C))) (>= S_0 (+ ?x631 ?x368 A_1 (* (- 2.0) C))) (>= S_1 (+ ?x631 ?x368 A_1 ?x337)) (or $x59 $x69 (= (+ A_2 ?x266) (+ A_1 ?x368 C))) (or $x89 (<= S_4 ?x950)) (<= S_5 (+ A_5 ?x335)) (>= S_2 (+ A_1 ?x368 ?x631)) (>= S_3 (+ A_2 ?x266 ?x631)) (or $x79 (<= S_4 (+ A_3 ?x558 ?x631 C))) (or $x79 (<= S_5 (+ A_3 ?x558 ?x631 (* 2.0 C)))) (or $x59 $x958) (or $x10324 (>= S_3 (+ A_1 ?x368 ?x631 C))) (or $x79 $x10324 (= (+ A_1 ?x368 (* 2.0 C)) (+ A_3 ?x558))) (or $x89 (not $x963)) (>= S_5 ?x950) (or $x69 $x960) (or $x89 (<= S_5 (+ A_4 ?x335 ?x631 C))) (or $x69 (<= S_1 (+ ?x631 ?x266 A_2 ?x337))) (or $x69 $x1308 $x11237) (>= S_2 (+ ?x631 ?x266 A_2 ?x337)) $x11365 (or $x59 (<= S_2 (+ A_1 ?x368 ?x631 C))) (or $x79 $x2357) (or $x2779 $x11371) (or $x3022 $x11371 (= (+ A_3 ?x558 ?x631) (+ A_2 ?x368 C))) (or $x59 $x1574 (<= (+ A_2 (* (- 1.0) A_1) ?x337) 0.0)) (<= S_2 ?x1020) (or $x79 (<= (+ A_4 (* (- 1.0) A_3) ?x337) 0.0) $x1564) (or $x9813 (>= S_5 (+ A_3 ?x558 ?x631 C))) (or $x2878 (<= ?x11236 B)) (or $x3070 (not $x9813)) (or $x59 (<= S_3 (+ A_1 ?x368 ?x631 (* 2.0 C)))) (<= S_3 ?x1032) (<= S_5 (+ A_4 ?x558 C)) (or $x69 (<= S_3 (+ A_2 ?x266 ?x631 C))) $x19650 (or (<= L_4 L_2) $x11547 (= ?x950 ?x11320)) (or $x1923 (>= S_4 (+ A_2 ?x266 ?x631 C))) (<= S_4 ?x1044) (or (>= S_4 (+ A_3 ?x368)) $x11371 (>= S_4 (+ A_2 ?x368 C))) (<= S_3 (+ A_2 ?x368 C)) (or $x963 $x11237 $x11371 (= ?x950 (+ A_2 ?x368 (* 2.0 C)))) $x11289 $x20109 $x20125 (or $x4571 $x11328 $x11371 $x11618) $x19084 (or $x69 $x962 $x1564 (<= (+ A_4 ?x588 (* (- 2.0) C)) 0.0)) (or $x69 (<= S_4 (+ A_1 ?x368 ?x631 (* 3.0 C)))) (or $x69 (<= S_0 (+ ?x631 ?x266 A_2 (* (- 2.0) C)))) (<= S_4 ?x11320) (or (>= S_5 (+ A_4 ?x266)) $x11547 $x11704) (or $x69 (not (= (+ A_1 ?x368 C) (+ A_2 ?x266))) $x11506) (<= S_5 (+ A_3 ?x266 (* 2.0 C))) $x19536 (or $x59 (<= S_4 (+ A_1 ?x368 ?x631 (* 3.0 C)))) (or $x59 $x11506) $x14362 $x20041 (or (not (= L_2 L_4)) (<= (+ A_4 (* (- 1.0) A_3) ?x337) B)) (>= S_0 (+ ?x631 ?x266 A_2 (* (- 3.0) C))) (>= S_1 (+ ?x631 ?x266 A_2 (* (- 2.0) C))) (or $x69 (<= S_5 (+ A_2 ?x266 ?x631 (* 3.0 C)))) (or $x1564 (>= S_4 (+ ?x631 ?x558 A_4 ?x337))) $x19449 (or $x3070 $x11237 $x11371 (>= S_5 (+ A_2 ?x368 (* 2.0 C)))) $x20116 $x19305 (>= S_3 (+ ?x631 ?x335 A_4 (* (- 2.0) C))) (>= S_4 (+ ?x631 ?x335 A_4 ?x337)) $x19991 (<= (+ C S_0 (* (- 1.0) S_2)) 0.0) $x14037 $x19917 (or $x89 $x958 $x1574 $x12028) (>= S_0 (+ ?x631 ?x335 A_4 (* (- 5.0) C))) (>= S_1 (+ ?x631 ?x335 A_4 (* (- 4.0) C))) (<= S_4 (+ A_2 ?x368 (* 2.0 C))) (<= S_5 (+ A_2 ?x368 (* 3.0 C))) (>= S_2 (+ ?x631 ?x335 A_4 (* (- 3.0) C))) (<= (+ (* (- 2.0) C) (* (- 1.0) S_0) S_1) 0.0) (or $x89 $x2357 $x12210) (<= (+ (* (- 3.0) C) (* (- 1.0) S_0) S_2) 0.0) (<= (+ (* (- 2.0) C) S_5 (* (- 1.0) S_4)) 0.0) (or $x2779 (<= (+ C (* (- 1.0) S_3) S_1) 0.0)) (<= (+ (* (- 2.0) C) (* (- 1.0) S_2) S_3) 0.0) (or $x2779 (<= (+ (* 2.0 C) S_0 (* (- 1.0) S_3)) 0.0)) (<= (+ (* (- 2.0) C) S_2 (* (- 1.0) S_1)) 0.0) (<= (+ (* (- 4.0) C) (* (- 1.0) S_0) S_3) 0.0) (or $x958 (<= (+ C (* (- 1.0) S_4) S_2) 0.0)) (<= (+ (* (- 3.0) C) S_3 (* (- 1.0) S_1)) 0.0) (or $x3070 (<= (+ C (* (- 1.0) S_5) S_3) 0.0)) (or $x958 (<= (+ (* 2.0 C) (* (- 1.0) S_4) S_1) 0.0)) (or $x958 (<= (+ (* 3.0 C) S_0 (* (- 1.0) S_4)) 0.0)) (<= (+ (* (- 3.0) C) S_4 (* (- 1.0) S_2)) 0.0) (<= (+ (* (- 2.0) C) S_4 (* (- 1.0) S_3)) 0.0) $x19098 $x13840 (<= (+ (* (- 4.0) C) S_4 (* (- 1.0) S_1)) 0.0) (<= (+ (* (- 3.0) C) S_5 (* (- 1.0) S_3)) 0.0) (<= (+ (* (- 6.0) C) (* (- 1.0) S_0) S_5) 0.0) (<= (+ (* (- 4.0) C) S_5 (* (- 1.0) S_2)) 0.0) (<= (+ (* (- 5.0) C) S_5 (* (- 1.0) S_1)) 0.0) (<= (+ (* (- 5.0) C) (* (- 1.0) S_0) S_4) 0.0) $x20108 $x926 $x732 $x42))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
