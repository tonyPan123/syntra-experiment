; benchmark generated from python API
(set-info :status unknown)
(declare-fun C () Real)
(declare-fun L_2 () Real)
(declare-fun A_2 () Real)
(declare-fun S_5 () Real)
(declare-fun S_3 () Real)
(declare-fun S_2 () Real)
(declare-fun L_1 () Real)
(declare-fun A_1 () Real)
(declare-fun S_4 () Real)
(declare-fun S_1 () Real)
(declare-fun L_0 () Real)
(declare-fun S_0 () Real)
(declare-fun A_0 () Real)
(declare-fun L_4 () Real)
(declare-fun A_5 () Real)
(declare-fun B () Real)
(declare-fun A_4 () Real)
(declare-fun L_3 () Real)
(declare-fun A_3 () Real)
(assert
 (let (($x39 (>= L_0 0.0)))
 (let (($x804 (>= C 5.0)))
 (let (($x667 (>= B 5.0)))
 (let (($x15788 (<= 0.0 (+ (* (- 1.0) A_1) C S_0 L_1))))
 (let (($x15789 (not $x15788)))
 (let (($x15531 (<= 0.0 (+ (* (- 1.0) A_2) L_2 A_1 (* (- 1.0) L_1) C))))
 (let (($x4495 (<= (+ (* (- 1.0) S_5) A_1 (* (- 1.0) L_1) (* 3.0 C)) 0.0)))
 (let (($x2944 (<= (+ (* (- 1.0) S_5) A_4 (* (- 1.0) L_4)) 0.0)))
 (let (($x7982 (<= (+ (* (- 1.0) S_5) (* 4.0 C) S_0) 0.0)))
 (let (($x3419 (<= (+ (* (- 1.0) S_5) A_2 (* (- 1.0) L_2) (* 2.0 C)) 0.0)))
 (let (($x4482 (<= (+ (* (- 1.0) S_4) A_1 (* (- 1.0) L_1) (* 2.0 C)) 0.0)))
 (let (($x3333 (<= (+ A_2 (* (- 1.0) L_2) (* (- 1.0) S_4) C) 0.0)))
 (let (($x14335 (or $x2944 $x3419 (<= (+ (* (- 1.0) S_5) (* 3.0 C) S_1) 0.0))))
 (let (($x16565 (or $x3333 (<= (+ (* (- 1.0) S_4) (* 3.0 C) S_0) 0.0) $x15788)))
 (let (($x3368 (<= (+ A_2 (* (- 1.0) L_2) (* (- 1.0) S_3)) 0.0)))
 (let (($x12434 (or $x3368 (<= (+ A_1 (* (- 1.0) L_1) C (* (- 1.0) S_3)) 0.0) (<= (+ (* 2.0 C) (* (- 1.0) S_3) S_0) 0.0))))
 (let ((?x265 (* (- 1.0) B)))
 (let ((?x325 (* (- 1.0) L_4)))
 (let ((?x1237 (* (- 4.0) C)))
 (let ((?x1342 (* (- 1.0) A_0)))
 (let (($x15532 (not $x15531)))
 (let (($x15280 (<= 0.0 (+ (* (- 1.0) A_2) L_2 A_4 (* (- 2.0) C) ?x325 ?x265))))
 (let (($x2058 (<= (+ (* (- 1.0) A_4) (* 4.0 C) S_0 L_4 B) 0.0)))
 (let (($x86 (= L_4 L_3)))
 (let (($x29284 (or $x86 (<= (+ (* (- 1.0) A_4) (* 3.0 C) S_1 L_4 B) 0.0) $x15280)))
 (let ((?x1147 (* (- 2.0) C)))
 (let ((?x434 (* (- 1.0) A_1)))
 (let ((?x308 (* (- 1.0) L_3)))
 (let (($x15219 (<= 0.0 (+ ?x308 A_3 ?x434 ?x1147 L_1 ?x265))))
 (let ((?x1077 (* 2.0 C)))
 (let ((?x274 (* (- 1.0) L_1)))
 (let ((?x439 (* (- 1.0) A_3)))
 (let (($x15302 (<= 0.0 (+ ?x308 A_3 (* (- 1.0) A_2) L_2 (* (- 1.0) C) ?x265))))
 (let (($x76 (= L_3 L_2)))
 (let (($x16007 (or $x76 (<= (+ L_3 ?x439 (* 3.0 C) S_0 B) 0.0) $x15219 $x15302)))
 (let (($x56 (= L_1 L_0)))
 (let (($x779 (not $x56)))
 (let (($x28426 (or $x76 $x779 (<= (+ L_3 ?x439 A_1 ?x1077 (* (- 1.0) L_0)) 0.0) $x15302)))
 (let (($x15151 (<= 0.0 (+ A_4 ?x434 (* (- 3.0) C) L_1 ?x325 ?x265))))
 (let (($x15091 (not $x15151)))
 (let (($x28406 (or (= (+ (* (- 1.0) A_4) A_1 ?x274 (* 3.0 C) L_4 B) 0.0) $x15091)))
 (let (($x28443 (or (<= (+ A_1 ?x274 (* (- 1.0) C) (* (- 1.0) S_1)) 0.0) $x15091)))
 (let (($x3841 (= (+ A_2 (* (- 1.0) L_2) (* (- 1.0) A_4) ?x1077 L_4 B) 0.0)))
 (let (($x520 (<= 0.0 (+ A_2 (* (- 1.0) L_2) ?x434 (* (- 1.0) C) L_1 ?x265))))
 (let (($x28431 (or (not $x520) (= (+ (* (- 1.0) A_2) L_2 A_1 ?x274 C B) 0.0))))
 (let (($x29386 (or (= (+ L_3 ?x439 A_2 (* (- 1.0) L_2) C B) 0.0) (not $x15302))))
 (let (($x66 (= L_2 L_1)))
 (let (($x28328 (or $x66 $x779 (<= (+ (* (- 1.0) A_2) L_2 A_1 C (* (- 1.0) L_0)) 0.0))))
 (let (($x5158 (or (<= (+ A_1 ?x274 (* (- 1.0) S_2)) 0.0) (<= (+ C (* (- 1.0) S_2) S_0) 0.0))))
 (let (($x548 (<= 0.0 (+ (* (- 1.0) A_2) L_2 A_1 C ?x274 ?x265))))
 (let (($x546 (not $x548)))
 (let (($x19716 (or $x548 (<= (+ (* (- 1.0) S_5) A_1 (* 3.0 C) ?x274 ?x265) 0.0) $x2944)))
 (let (($x1390 (<= (+ (* (- 1.0) S_5) A_2 (* (- 1.0) L_2) ?x1077 ?x265) 0.0)))
 (let (($x14293 (not (<= 0.0 (+ (* (- 1.0) L_2) L_1)))))
 (let (($x574 (<= 0.0 (+ (* (- 1.0) A_2) A_1 C))))
 (let (($x15251 (<= 0.0 (+ ?x308 L_2))))
 (let (($x15250 (not $x15251)))
 (let (($x29393 (or $x86 (<= (+ A_3 (* (- 1.0) L_2) (* (- 1.0) A_4) C L_4) 0.0) $x15250)))
 (let (($x28423 (or $x86 (<= (+ A_2 (* (- 1.0) A_4) ?x1077 ?x274 L_4) 0.0) $x14293)))
 (let ((?x891 (+ L_3 ?x325)))
 (let (($x15200 (<= 0.0 ?x891)))
 (let (($x14947 (not $x15200)))
 (let (($x28400 (or $x56 (<= 0.0 (+ L_3 (* (- 1.0) A_4) A_1 (* 3.0 C) ?x274)) $x14947)))
 (let (($x29114 (or $x56 $x548 (= (+ (* (- 1.0) A_4) A_1 (* 3.0 C) ?x274 L_4) 0.0) $x15200)))
 (let (($x2134 (<= (+ (* (- 1.0) A_4) A_1 (* 3.0 C) L_4 (* (- 1.0) L_0)) 0.0)))
 (let (($x1241 (<= (+ A_1 (* (- 1.0) S_2) ?x274 ?x265) 0.0)))
 (let (($x534 (<= 0.0 (+ A_2 (* (- 1.0) L_2) (* (- 1.0) A_4) L_4 ?x1077 ?x265))))
 (let (($x20747 (or $x66 (<= (+ S_5 (* (- 1.0) A_2) L_2 (* (- 3.0) C) B) 0.0))))
 (let (($x14676 (or $x86 (<= (+ S_5 (* (- 1.0) A_4) (* (- 1.0) C) L_4 B) 0.0))))
 (let (($x608 (or $x66 $x520 (<= (+ (* (- 1.0) A_2) L_2 ?x1077 S_0 B) 0.0))))
 (let (($x595 (or $x66 (<= (+ (* (- 1.0) A_2) L_2 (* (- 1.0) C) S_3 B) 0.0))))
 (let (($x2024 (not $x86)))
 (let (($x607 (or $x66 (<= (+ ?x308 (* (- 1.0) A_2) L_2 A_4 ?x1147) 0.0) $x2024)))
 (let (($x490 (or $x66 $x86 (= (+ A_2 (* (- 1.0) L_2) (* (- 1.0) A_4) ?x1077 L_4) 0.0))))
 (let (($x1382 (<= (+ A_2 (* (- 1.0) L_2) (* (- 1.0) C) (* (- 1.0) S_2) ?x265) 0.0)))
 (let (($x1665 (<= (+ A_2 (* (- 1.0) L_2) (* (- 3.0) C) (* (- 1.0) S_0) ?x265) 0.0)))
 (let (($x128 (>= S_1 S_0)))
 (let (($x131 (>= S_2 S_1)))
 (let (($x134 (>= S_3 S_2)))
 (let (($x137 (>= S_4 S_3)))
 (let (($x142 (>= A_1 A_0)))
 (let (($x143 (>= A_2 A_1)))
 (let (($x145 (>= A_4 A_3)))
 (let (($x146 (>= A_5 A_4)))
 (and (<= (+ A_3 ?x308) S_5) (<= (+ A_2 (* (- 1.0) L_2)) S_4) (not (<= (+ A_3 ?x308) S_4)) $x146 $x145 $x143 $x142 $x137 $x134 $x131 $x128 (or (not (<= 0.0 (+ ?x274 L_0))) $x56) (or $x56 (<= (+ ?x434 S_1 L_1 B) 0.0)) (or $x66 (<= (+ (* (- 1.0) A_2) L_2 S_2 B) 0.0)) (<= (+ A_2 (* (- 1.0) L_2) ?x1342 ?x1147 ?x265 L_0) 0.0) $x1665 (<= (+ A_2 (* (- 1.0) L_2) (* (- 1.0) S_3) ?x265) 0.0) $x1382 (<= (+ A_2 (* (- 1.0) L_2) ?x1147 (* (- 1.0) S_1) ?x265) 0.0) $x490 (or $x66 $x76 (= (+ L_3 ?x439 A_2 (* (- 1.0) L_2) C) 0.0)) $x607 $x595 (or $x66 (<= (+ (* (- 1.0) A_2) L_2 C S_1 B) 0.0)) $x608 (or $x86 (<= (+ S_4 (* (- 1.0) A_4) L_4 B) 0.0)) (or $x86 $x14947) (<= (+ (* (- 1.0) S_5) A_4 ?x325 ?x265) 0.0) $x14676 (<= (+ A_4 ?x1147 (* (- 1.0) S_3) ?x325 ?x265) 0.0) (<= (+ (* (- 1.0) S_4) A_4 (* (- 1.0) C) ?x325 ?x265) 0.0) (or $x86 $x574 $x2058 $x15151) (or $x86 (<= (+ (* (- 1.0) A_4) ?x1077 S_2 L_4 B) 0.0)) (or $x86 (<= (+ (* (- 1.0) A_4) C S_3 L_4 B) 0.0)) (or $x76 (<= (+ L_3 ?x439 C S_2 B) 0.0)) (or $x76 (<= (+ L_3 ?x439 S_3 B) 0.0)) (or $x76 (<= (+ L_3 ?x439 A_2 C ?x274) 0.0) $x14293) (<= (+ ?x308 A_3 (* (- 1.0) S_4) ?x265) 0.0) (<= (+ A_2 (* (- 1.0) L_2) (* (- 1.0) S_4) C ?x265) 0.0) (or $x66 $x14293) (or $x66 (<= (+ (* (- 1.0) A_2) L_2 S_4 ?x1147 B) 0.0)) (or $x56 $x66 (= (+ (* (- 1.0) A_2) L_2 A_1 C ?x274) 0.0)) $x20747 (or $x534 $x1390) $x1241 (<= (+ A_1 ?x1342 (* (- 1.0) C) ?x274 ?x265 L_0) 0.0) (<= (+ A_1 ?x1147 (* (- 1.0) S_0) ?x274 ?x265) 0.0) (<= (+ A_1 (* (- 1.0) C) (* (- 1.0) S_1) ?x274 ?x265) 0.0) (or $x86 $x15251 (= (+ ?x308 A_3 (* (- 1.0) A_4) C L_4) 0.0)) (or $x56 (<= (+ ?x434 C S_0 L_1 B) 0.0)) (or $x86 $x548 $x779 $x2134) (<= (+ A_4 (* (- 3.0) C) (* (- 1.0) S_2) ?x325 ?x265) 0.0) (or $x76 $x14947 (<= 0.0 (+ A_3 (* (- 1.0) A_4) C))) (or $x76 $x15250) (or $x56 (<= (+ ?x434 (* (- 1.0) C) S_2 L_1 B) 0.0)) (or $x56 (<= (+ ?x434 ?x1147 S_3 L_1 B) 0.0)) (or $x56 $x548 (= (+ L_3 ?x439 A_1 ?x1077 ?x274) 0.0) $x15251) $x29114 (<= (+ ?x308 A_3 (* (- 1.0) C) (* (- 1.0) S_3) ?x265) 0.0) $x28400 (or $x548 (<= (+ A_1 C (* (- 1.0) S_3) ?x274 ?x265) 0.0)) (or $x56 (<= (+ S_5 ?x434 ?x1237 L_1 B) 0.0)) (or $x56 (<= (+ S_4 ?x434 (* (- 3.0) C) L_1 B) 0.0)) $x28423 $x29393 (or $x66 (<= 0.0 (+ L_3 ?x439 A_2 (* (- 1.0) L_2) C))) (or $x56 (<= 0.0 (+ ?x439 L_2 A_1 ?x1077 ?x274)) $x15250) (or (<= (+ (* (- 1.0) S_5) ?x308 A_3 C ?x265) 0.0) $x2944) (or $x56 $x574 $x14293) (or (<= (+ (* (- 1.0) S_4) A_1 ?x1077 ?x274 ?x265) 0.0) $x3333) (or $x76 $x546 $x15302) (or $x1390 $x2944) (or $x546 $x3368) $x19716 (or $x86 $x546 $x15280) (or $x546 $x2944 $x3419) (<= (+ ?x1342 (* (- 1.0) C) S_1 L_0) 0.0) $x5158 (<= (+ ?x1147 S_1 (* (- 1.0) S_0)) 0.0) $x28328 (<= (+ ?x308 A_3 ?x1147 (* (- 1.0) S_2) ?x265) 0.0) $x29386 (or $x76 (<= (+ S_5 L_3 ?x439 ?x1147 B) 0.0)) $x28431 (or $x3841 (not $x15280)) $x28443 $x28406 (or (<= (+ A_1 ?x274 ?x1147 (* (- 1.0) S_0)) 0.0) $x15091) (<= (+ A_4 (* (- 5.0) C) (* (- 1.0) S_0) ?x325 ?x265) 0.0) (or $x76 (<= (+ L_3 ?x439 S_4 (* (- 1.0) C) B) 0.0)) (or $x76 $x15302 (<= (+ L_3 ?x439 ?x1077 S_1 B) 0.0)) $x28426 (<= (+ ?x308 A_3 ?x1342 (* (- 3.0) C) ?x265 L_0) 0.0) (<= (+ ?x308 A_3 ?x1237 (* (- 1.0) S_0) ?x265) 0.0) $x16007 (<= (+ ?x308 A_3 (* (- 3.0) C) (* (- 1.0) S_1) ?x265) 0.0) (or (= (+ L_3 ?x439 A_1 ?x274 ?x1077 B) 0.0) (not $x15219)) (<= (+ A_4 ?x1237 (* (- 1.0) S_1) ?x325 ?x265) 0.0) $x29284 (or $x86 $x2058 $x15280 $x15532) (<= (+ A_4 ?x1342 ?x1237 ?x325 ?x265 L_0) 0.0) (or $x2944 (<= (+ (* (- 1.0) S_5) C S_3) 0.0)) (or $x2944 (<= (+ (* (- 1.0) S_5) ?x1077 S_2) 0.0)) (<= (+ ?x1147 S_3 (* (- 1.0) S_2)) 0.0) (<= (+ (* (- 1.0) A_2) L_2 S_4 ?x1147) 0.0) (<= (+ S_5 (* (- 1.0) A_4) (* (- 1.0) C) L_4) 0.0) (<= (+ S_4 (* (- 3.0) C) (* (- 1.0) S_2)) 0.0) (<= (+ ?x1147 S_2 (* (- 1.0) S_1)) 0.0) (or $x2944 $x3419 $x7982 $x15532) $x12434 (or $x3368 (<= (+ C (* (- 1.0) S_3) S_1) 0.0)) (<= (+ ?x1342 ?x1147 S_2 L_0) 0.0) (or $x3333 (<= (+ (* (- 1.0) S_4) ?x1077 S_1) 0.0)) (<= (+ (* (- 3.0) C) S_2 (* (- 1.0) S_0)) 0.0) (<= (+ S_4 ?x1237 (* (- 1.0) S_1)) 0.0) (<= (+ ?x1342 (* (- 3.0) C) S_3 L_0) 0.0) $x16565 (<= (+ S_4 (* (- 5.0) C) (* (- 1.0) S_0)) 0.0) (<= (+ ?x1237 S_3 (* (- 1.0) S_0)) 0.0) $x14335 (<= (+ S_4 ?x1342 ?x1237 L_0) 0.0) (<= (+ S_5 ?x1237 (* (- 1.0) S_2)) 0.0) (<= (+ S_5 ?x1342 (* (- 5.0) C) L_0) 0.0) (<= (+ S_5 ?x434 L_1 ?x1237) 0.0) (<= (+ (* (- 3.0) C) S_3 (* (- 1.0) S_1)) 0.0) (or $x3333 $x4482 $x15789) (or $x2944 $x3419 $x7982 $x15788) (or $x2944 $x4495 $x15531 $x15789) (<= (+ S_5 (* (- 5.0) C) (* (- 1.0) S_1)) 0.0) (<= (+ S_5 (* (- 6.0) C) (* (- 1.0) S_0)) 0.0) $x667 $x804 $x39 (<= (+ S_5 (* (- 1.0) A_5) L_4) 0.0) (<= (+ ?x1342 S_0 L_0) 0.0) (<= (+ ?x434 L_1 S_1) 0.0) (<= (+ (* (- 1.0) A_2) L_2 S_2) 0.0) (<= (+ (* (- 1.0) A_2) L_2 (* (- 1.0) C) S_3) 0.0) (<= (+ (* (- 1.0) S_4) C S_2) 0.0) (<= (+ S_5 (* (- 1.0) S_4) ?x1147) 0.0) (<= (+ ?x434 L_1 ?x1147 S_3) 0.0) (<= (+ S_4 ?x1147 (* (- 1.0) S_3)) 0.0) (<= (+ S_4 ?x434 L_1 (* (- 3.0) C)) 0.0) (<= (+ ?x434 L_1 (* (- 1.0) C) S_2) 0.0) (<= (+ S_5 (* (- 3.0) C) (* (- 1.0) S_3)) 0.0) (<= (+ S_5 (* (- 1.0) A_2) L_2 (* (- 3.0) C)) 0.0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
