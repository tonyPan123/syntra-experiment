; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_0 () Real)
(declare-fun S_1 () Real)
(declare-fun C () Real)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(declare-fun L0 () Real)
(declare-fun B () Real)
(declare-fun S_3 () Real)
(declare-fun S_2 () Real)
(declare-fun S_4 () Real)
(declare-fun A_1 () Real)
(declare-fun L_1 () Real)
(declare-fun A_2 () Real)
(declare-fun A_4 () Real)
(declare-fun L_4 () Real)
(declare-fun A_3 () Real)
(declare-fun L_3 () Real)
(declare-fun L_2 () Real)
(assert
 (let (($x37 (>= L0 0.0)))
 (let (($x937 (>= C 5.0)))
 (let (($x889 (>= B 5.0)))
 (let (($x12533 (<= (+ A_2 (* (- 1.0) A_1) (* (- 1.0) C)) 0.0)))
 (let (($x12869 (not $x12533)))
 (let ((?x298 (* (- 1.0) C)))
 (let ((?x291 (* (- 1.0) L_4)))
 (let ((?x231 (* (- 1.0) B)))
 (let ((?x9731 (+ ?x231 ?x291 A_4 ?x298)))
 (let (($x12617 (<= (+ A_3 (* (- 1.0) L_0)) ?x9731)))
 (let ((?x1885 (* (- 4.0) C)))
 (let ((?x12303 (+ ?x231 ?x291 A_4 ?x1885)))
 (let (($x12612 (<= S_0 ?x12303)))
 (let ((?x1232 (* (- 2.0) C)))
 (let ((?x11674 (+ ?x231 ?x291 A_4 ?x1232)))
 (let ((?x214 (* (- 1.0) L_0)))
 (let ((?x1422 (+ A_2 ?x214)))
 (let (($x12378 (<= ?x1422 ?x11674)))
 (let (($x1020 (not (<= L_1 L_0))))
 (let (($x84 (= L_4 L_3)))
 (let (($x1018 (not (<= L_2 L_1))))
 (let (($x22887 (or $x84 $x1018 $x1020 $x12378 $x12617 (<= S_1 (+ ?x231 ?x291 A_4 (* (- 3.0) C))))))
 (let ((?x369 (* (- 1.0) A_2)))
 (let ((?x9737 (+ A_3 ?x369 ?x298)))
 (let (($x11710 (<= ?x9737 0.0)))
 (let (($x12679 (not $x11710)))
 (let ((?x1583 (* (- 3.0) C)))
 (let ((?x12218 (+ ?x231 ?x291 A_4 ?x1583)))
 (let ((?x1075 (+ A_1 ?x214)))
 (let (($x12375 (<= ?x1075 ?x12218)))
 (let (($x3199 (= L_4 L_2)))
 (let (($x23000 (or (not $x12375) (= (+ ?x1583 ?x231 A_4 (* (- 1.0) A_1) ?x291 L_0) 0.0))))
 (let (($x3865 (<= L_3 L_1)))
 (let (($x3829 (not $x3865)))
 (let (($x12840 (or $x84 $x1020 $x3829 $x12617 (<= (+ A_2 ?x214 L_4 (* (- 1.0) A_4) (* 2.0 C)) 0.0))))
 (let (($x1368 (not (<= L_2 L_0))))
 (let (($x22829 (or $x84 $x1368 $x12378 (<= (+ A_1 ?x214 L_4 (* (- 1.0) A_4) (* 3.0 C)) 0.0) $x12617)))
 (let ((?x274 (* (- 1.0) L_3)))
 (let ((?x12219 (+ ?x231 ?x274 A_3 ?x298)))
 (let (($x12470 (<= ?x1422 ?x12219)))
 (let (($x74 (= L_3 L_2)))
 (let (($x22596 (or $x74 $x1368 $x12470 (<= (+ A_1 ?x214 L_3 (* (- 1.0) A_3) (* 2.0 C)) 0.0))))
 (let ((?x11967 (+ ?x231 ?x274 A_3 ?x1583)))
 (let (($x12547 (<= S_0 ?x11967)))
 (let (($x3268 (= L_3 L_1)))
 (let (($x13272 (or (not (<= ?x1075 (+ ?x231 ?x274 A_3 ?x1232))) (= (+ ?x1232 ?x274 A_3 ?x231 L_0 (* (- 1.0) A_1)) 0.0))))
 (let (($x16962 (or (<= (+ ?x214 A_1 (* (- 1.0) S_2)) 0.0) (<= (+ C (* (- 1.0) S_2) S_0) 0.0))))
 (let (($x16086 (or $x11710 (not (= (+ A_4 ?x291 ?x231) (+ A_3 (* (- 1.0) L_1) C))))))
 (let ((?x997 (+ A_4 ?x291 ?x231)))
 (let (($x12877 (= ?x997 (+ A_3 (* (- 1.0) L_1) C))))
 (let (($x12531 (<= A_2 (+ A_1 ?x231 C))))
 (let (($x12855 (not $x12531)))
 (let (($x5277 (= L_4 L_1)))
 (let (($x2816 (not (= L_1 L_3))))
 (let (($x22514 (or $x2816 $x5277 $x12855 $x12877 (= ?x997 (+ A_2 (* (- 1.0) L_1) (* 2.0 C))))))
 (let ((?x240 (* (- 1.0) L_1)))
 (let ((?x12597 (+ A_2 ?x240 C)))
 (let ((?x999 (+ A_3 ?x274 ?x231)))
 (let (($x12806 (= ?x999 ?x12597)))
 (let (($x2775 (not (= L_1 L_2))))
 (let (($x12994 (<= A_4 (+ A_2 (* 2.0 C)))))
 (let (($x1015 (<= L_3 L_2)))
 (let (($x1016 (not $x1015)))
 (let (($x1014 (not (<= L_4 L_3))))
 (let (($x54 (= L_1 L_0)))
 (let (($x13769 (or $x54 $x1014 $x1016 $x12994 (<= (+ A_4 (* (- 1.0) A_1) ?x1583) 0.0))))
 (let ((?x257 (* (- 1.0) L_2)))
 (let ((?x11972 (+ ?x231 ?x257 A_2 ?x298)))
 (let (($x12799 (<= ?x1075 ?x11972)))
 (let (($x64 (= L_2 L_1)))
 (let (($x22771 (or (= (+ ?x298 A_2 ?x257 ?x231 (* (- 1.0) A_1) L_0) 0.0) (not $x12799))))
 (let (($x1413 (not (= L_2 L_3))))
 (let (($x12960 (or $x54 $x1018 $x1413 (<= 0.0 (+ (* 2.0 C) A_1 (* (- 1.0) A_3))))))
 (let (($x13043 (<= A_3 (+ A_1 ?x231 (* 2.0 C)))))
 (let (($x22687 (or $x54 $x84 $x1018 $x12531 (= (+ A_4 ?x291) (+ A_1 ?x240 (* 3.0 C))) $x13043)))
 (let (($x12979 (or $x1020 $x2775 $x3268 (<= (+ A_2 ?x214 L_3 (* (- 1.0) A_3) C) 0.0))))
 (let (($x12240 (<= (+ A_1 ?x214 L_2 ?x369 C) 0.0)))
 (let (($x4906 (= L_2 L_0)))
 (let (($x1305 (not (= L_0 L_1))))
 (let ((?x12442 (+ A_3 ?x257 C)))
 (let (($x12889 (= ?x997 ?x12442)))
 (let (($x12938 (<= A_3 (+ A_2 ?x231 C))))
 (let (($x12360 (or $x64 $x84 $x12938 (= (+ A_4 ?x291) (+ A_2 ?x257 (* 2.0 C))))))
 (let (($x13437 (or $x54 $x1015 $x12531 (= (+ A_3 ?x274) (+ A_1 ?x240 (* 2.0 C))))))
 (let (($x13573 (or $x1014 $x1016 (not $x12240) (= (+ A_2 ?x257) (+ A_1 ?x214 C)) (not (<= 0.0 (+ ?x1232 ?x231 ?x369 A_4))))))
 (let (($x12936 (or $x1018 $x1020 $x1413 $x3199 (<= (+ A_3 ?x214 L_4 (* (- 1.0) A_4) C) 0.0))))
 (let (($x1737 (not (= L_3 L_4))))
 (let (($x36 (>= L_0 L0)))
 (let (($x111 (>= S_1 S_0)))
 (let (($x114 (>= S_2 S_1)))
 (let (($x122 (>= A_1 A_0)))
 (let (($x123 (>= A_2 A_1)))
 (and (<= (+ A_3 ?x274) S_4) (<= (+ A_2 ?x257) S_3) (not (<= (+ A_3 ?x274) S_3)) $x123 $x122 $x114 $x111 $x36 (or $x84 (<= S_4 ?x997)) (or $x74 (<= S_3 ?x999)) (>= S_2 (+ A_1 ?x240 ?x231)) (<= (+ ?x231 ?x240 A_1 ?x298) (+ A_0 ?x214)) (>= S_0 (+ ?x231 ?x240 A_1 ?x1232)) (>= S_1 (+ ?x231 ?x240 A_1 ?x298)) (or $x54 $x1020) (or $x54 (<= S_1 (+ A_1 ?x240 ?x231))) (or $x64 $x74 (= (+ A_3 ?x274) (+ A_2 ?x257 C))) (or $x84 $x1014) (or $x84 (= (+ A_4 ?x291) (+ A_3 ?x274 C)) $x1015) (or $x74 (<= S_2 ?x12219)) (or $x64 $x1018) (or $x64 $x1413 $x11710) (or $x54 (<= S_0 (+ ?x231 ?x240 A_1 ?x298))) (or $x74 $x1016) (or $x74 (<= (+ A_4 (* (- 1.0) A_3) ?x298) 0.0) $x1737) (<= ?x12303 (+ A_0 ?x214)) (>= S_0 (+ ?x231 ?x291 A_4 (* (- 5.0) C))) $x12936 (<= ?x11967 (+ A_0 ?x214)) $x13573 (or $x54 (<= S_2 (+ A_1 ?x240 ?x231 C))) (<= S_2 (+ A_2 ?x240)) (>= S_1 ?x11967) (or $x74 (<= ?x1075 (+ ?x231 ?x274 A_3 ?x1232)) $x12533 $x12547) (or $x74 (<= S_4 (+ A_3 ?x274 ?x231 C))) (>= S_2 (+ ?x231 ?x274 A_3 ?x1232)) (>= S_0 (+ ?x231 ?x274 A_3 ?x1885)) (or $x84 $x11710 $x12375 $x12533 $x12612) (<= S_4 (+ A_4 ?x274)) (<= (+ ?x1232 S_2 (* (- 1.0) S_1)) 0.0) (or $x64 (<= S_1 ?x11972)) (or $x64 (<= S_2 (+ A_2 ?x257 ?x231))) (<= (+ L_0 (* (- 1.0) A_1) S_1) 0.0) (or $x3865 $x12806 $x12855) $x13437 (or $x84 (<= S_3 ?x9731)) (or $x54 $x64 (= (+ A_2 ?x257) (+ A_1 ?x240 C))) (or $x54 $x2775 $x12533) (or (= ?x997 (+ A_3 ?x214 C)) (not $x12617)) $x12360 (or $x3199 $x12889 (not $x12938)) (or $x64 (<= S_4 (+ A_2 ?x257 ?x231 (* 2.0 C)))) (or $x64 (<= S_3 (+ A_2 ?x257 ?x231 C))) (or $x1305 $x4906 $x12240) $x12979 (or (not (= L_2 L_4)) (<= (+ A_4 (* (- 1.0) A_3) ?x298) B)) (or $x64 $x1014 $x1016 $x12994) (or $x1413 $x3199 (<= S_2 ?x11674) $x12889) (or $x2816 $x5277 $x12531 $x12877 (not $x13043)) $x22687 $x12960 (or $x54 (<= S_3 (+ A_1 ?x240 ?x231 (* 2.0 C)))) $x22771 (>= S_2 ?x11972) (or $x64 (<= S_0 (+ ?x231 ?x257 A_2 ?x1232)) $x12799) (<= (+ ?x298 L_0 (* (- 1.0) A_0) S_1) 0.0) (or $x1014 $x3829 (<= (+ A_4 ?x369 ?x1232) B)) $x13769 (or $x54 (<= S_4 (+ A_1 ?x240 ?x231 (* 3.0 C)))) (or (= ?x999 (+ A_2 ?x214 C)) (not $x12470)) (>= S_0 (+ ?x231 ?x257 A_2 ?x1583)) (or $x2775 $x3865 (<= S_1 (+ ?x231 ?x274 A_3 ?x1232)) $x12806) $x22514 (or $x5277 $x12679 $x12855 $x12877) $x16086 (or $x2816 (<= ?x9737 B)) $x16962 $x13272 (or $x1020 $x3268 $x12470 $x12547 $x12869) $x22596 (<= (+ ?x231 ?x257 A_2 ?x1232) (+ A_0 ?x214)) (>= S_1 (+ ?x231 ?x257 A_2 ?x1232)) (<= S_4 ?x12442) (>= S_2 ?x12218) (>= S_1 ?x12303) $x22829 $x12840 (or (not $x12378) (= (+ ?x1232 ?x231 A_4 ?x369 ?x291 L_0) 0.0)) (or $x12533 (not $x12378)) $x23000 (<= S_3 ?x12597) (<= (+ ?x1232 S_3 (* (- 1.0) S_2)) 0.0) (<= (+ ?x1232 L_0 (* (- 1.0) A_0) S_2) 0.0) (or $x1018 $x1020 $x3199 $x12375 $x12612 $x12617 $x12679) $x22887 (or $x84 $x1020 $x12378 $x12612 $x12617 $x12869) (<= (+ ?x1583 L_0 S_3 (* (- 1.0) A_0)) 0.0) (<= (+ ?x1583 S_2 (* (- 1.0) S_0)) 0.0) (<= (+ ?x298 L_0 (* (- 1.0) A_1) S_2) 0.0) (<= (+ ?x1885 S_3 (* (- 1.0) S_0)) 0.0) (<= S_4 (+ A_2 ?x240 (* 2.0 C))) (<= (+ ?x1232 (* (- 1.0) A_1) L_0 S_3) 0.0) (<= (+ S_4 L_0 (* (- 1.0) A_1) ?x1583) 0.0) (<= (+ ?x1885 S_4 (* (- 1.0) S_1)) 0.0) (<= (+ (* (- 5.0) C) S_4 (* (- 1.0) S_0)) 0.0) (<= (+ ?x1885 L_0 S_4 (* (- 1.0) A_0)) 0.0) (<= (+ ?x1583 S_4 (* (- 1.0) S_2)) 0.0) (<= (+ ?x1583 S_3 (* (- 1.0) S_1)) 0.0) $x889 $x937 $x37 (<= (+ L_0 (* (- 1.0) A_0) S_0) 0.0) (<= (+ ?x1232 S_1 (* (- 1.0) S_0)) 0.0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
