; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_0 () Real)
(declare-fun S_1 () Real)
(declare-fun C () Real)
(declare-fun L_0 () Real)
(declare-fun A_0 () Real)
(declare-fun L0 () Real)
(declare-fun B () Real)
(declare-fun S_2 () Real)
(declare-fun S_4 () Real)
(declare-fun A_1 () Real)
(declare-fun S_3 () Real)
(declare-fun L_1 () Real)
(declare-fun A_2 () Real)
(declare-fun A_4 () Real)
(declare-fun L_4 () Real)
(declare-fun A_3 () Real)
(declare-fun L_2 () Real)
(declare-fun L_3 () Real)
(assert
 (let (($x37 (>= L0 0.0)))
 (let (($x747 (>= C 5.0)))
 (let (($x776 (>= B 5.0)))
 (let (($x11114 (<= (+ (* (- 2.0) C) (* (- 1.0) L_0) A_1 (* (- 1.0) S_0)) 0.0)))
 (let (($x10854 (not (<= (+ A_1 (* (- 1.0) L_0) (* 2.0 C)) S_3))))
 (let ((?x287 (* (- 1.0) C)))
 (let ((?x270 (* (- 1.0) L_4)))
 (let ((?x529 (* (- 1.0) B)))
 (let ((?x11359 (+ ?x529 ?x270 A_4 ?x287)))
 (let (($x11376 (<= (+ A_3 (* (- 1.0) L_0)) ?x11359)))
 (let ((?x1063 (* (- 2.0) C)))
 (let ((?x11330 (+ ?x529 ?x270 A_4 ?x1063)))
 (let ((?x573 (* (- 1.0) L_0)))
 (let ((?x1216 (+ A_2 ?x573)))
 (let (($x11335 (<= ?x1216 ?x11330)))
 (let ((?x1429 (* (- 3.0) C)))
 (let ((?x11323 (+ ?x529 ?x270 A_4 ?x1429)))
 (let ((?x854 (+ A_1 ?x573)))
 (let (($x11324 (<= ?x854 ?x11323)))
 (let (($x1247 (<= L_2 L_0)))
 (let (($x1067 (not $x1247)))
 (let (($x84 (= L_4 L_3)))
 (let (($x11046 (or $x84 $x1067 $x11324 $x11335 $x11376 (<= S_0 (+ ?x529 ?x270 A_4 (* (- 4.0) C))))))
 (let (($x18813 (or (not $x11324) (= (+ ?x1429 ?x529 A_4 (* (- 1.0) A_1) ?x270 L_0) 0.0))))
 (let (($x18675 (or $x84 $x1067 $x11335 $x11376 (<= (+ A_1 ?x573 L_4 (* (- 1.0) A_4) (* 3.0 C)) 0.0))))
 (let (($x2583 (= L_4 L_2)))
 (let (($x1231 (not (= L_2 L_3))))
 (let (($x18810 (or $x1067 $x1231 $x2583 (<= (+ A_3 ?x573 L_4 (* (- 1.0) A_4) C) 0.0))))
 (let (($x2016 (not (= L_0 L_2))))
 (let (($x18236 (or $x84 $x2016 $x11376 (<= (+ A_2 ?x573 L_4 (* (- 1.0) A_4) (* 2.0 C)) 0.0))))
 (let ((?x469 (* (- 1.0) L_3)))
 (let ((?x10825 (+ ?x529 ?x469 A_3 ?x287)))
 (let (($x10850 (<= ?x1216 ?x10825)))
 (let (($x1246 (not (= L_0 L_1))))
 (let (($x74 (= L_3 L_2)))
 (let (($x9687 (or $x74 $x1246 $x10850 (<= (+ A_1 ?x573 L_3 (* (- 1.0) A_3) (* 2.0 C)) 0.0))))
 (let (($x18152 (or (= (+ A_4 ?x270 ?x529) (+ A_2 ?x573 (* 2.0 C))) (not $x11335))))
 (let ((?x494 (* (- 1.0) A_3)))
 (let ((?x10395 (+ A_4 ?x494 ?x287)))
 (let (($x10397 (<= ?x10395 0.0)))
 (let (($x1578 (not (= L_3 L_4))))
 (let (($x817 (not (<= L_1 L_0))))
 (let (($x18781 (or $x817 $x1247 $x1578 $x10397 (<= (+ A_4 (* (- 1.0) A_2) ?x1063) 0.0))))
 (let ((?x498 (* (- 1.0) A_2)))
 (let ((?x9880 (+ A_3 ?x498 ?x287)))
 (let (($x10431 (<= ?x9880 0.0)))
 (let (($x64 (= L_2 L_1)))
 (let (($x10771 (<= A_3 (+ A_2 ?x529 C))))
 (let (($x820 (<= L_4 L_3)))
 (let (($x18699 (or $x817 $x820 $x1247 $x10771 (= (+ A_4 ?x270) (+ A_2 (* (- 1.0) L_2) (* 2.0 C))))))
 (let (($x17802 (or (<= (+ ?x573 A_1 (* (- 1.0) S_2)) 0.0) (<= (+ C S_0 (* (- 1.0) S_2)) 0.0))))
 (let ((?x475 (* (- 1.0) L_2)))
 (let ((?x272 (+ ?x529 ?x475 A_2 ?x287)))
 (let (($x11018 (<= ?x854 ?x272)))
 (let (($x10900 (or (= (+ ?x1063 ?x469 A_3 ?x529 L_0 (* (- 1.0) A_1)) 0.0) (not (<= ?x854 (+ ?x529 ?x469 A_3 ?x1063))))))
 (let ((?x10831 (+ ?x529 ?x469 A_3 ?x1063)))
 (let (($x11084 (<= ?x854 ?x10831)))
 (let (($x10891 (or (= (+ ?x287 A_2 ?x475 ?x529 L_0 (* (- 1.0) A_1)) 0.0) (not $x11018))))
 (let (($x17912 (or $x10431 (not (= (+ A_3 (* (- 1.0) L_1) C) (+ A_4 ?x270 ?x529))))))
 (let (($x54 (= L_1 L_0)))
 (let (($x18816 (or $x54 $x1578 $x10397 (<= (+ A_4 ?x475 (* (- 1.0) A_1) L_1 ?x1429) 0.0))))
 (let (($x10990 (not (<= (+ A_3 ?x475) (+ A_1 (* (- 1.0) L_1) ?x529 (* 2.0 C))))))
 (let ((?x10735 (+ A_3 ?x475 C)))
 (let ((?x808 (+ A_4 ?x270 ?x529)))
 (let (($x10736 (= ?x808 ?x10735)))
 (let (($x18384 (or $x10736 (not (= (+ A_1 (* (- 1.0) L_1) (* 3.0 C)) (+ A_4 ?x270))) $x10990)))
 (let (($x17814 (or $x54 $x1231 (<= (+ A_3 ?x475 (* (- 1.0) A_1) L_1 ?x1063) 0.0))))
 (let (($x18124 (or $x54 (<= A_3 (+ A_1 ?x529 (* 2.0 C))) (not (= ?x808 (+ A_3 (* (- 1.0) L_1) C))))))
 (let ((?x2470 (* 3.0 C)))
 (let ((?x320 (* (- 1.0) L_1)))
 (let ((?x10744 (+ A_1 ?x320 ?x2470)))
 (let ((?x237 (+ A_4 ?x270)))
 (let (($x10745 (= ?x237 ?x10744)))
 (let ((?x383 (+ A_1 ?x320 ?x529 C)))
 (let ((?x476 (+ A_2 ?x475)))
 (let (($x10687 (<= ?x476 ?x383)))
 (let (($x11284 (or (= (+ A_2 C) A_3) (not (= (+ A_2 ?x320 (* 2.0 C)) ?x808)) (not $x10431))))
 (let (($x10730 (not (<= A_2 (+ A_1 ?x529 C)))))
 (let ((?x10611 (+ A_3 ?x320 C)))
 (let (($x9737 (= ?x808 ?x10611)))
 (let (($x1890 (= L_4 L_1)))
 (let (($x1782 (not (= L_1 L_3))))
 (let (($x1714 (= L_3 L_1)))
 (let (($x1539 (not (= L_1 L_2))))
 (let (($x461 (<= (+ A_2 (* (- 1.0) A_1) ?x287) 0.0)))
 (let (($x18597 (or $x64 (not (= L_2 (+ A_2 (* (- 1.0) A_1) L_1 ?x287))) $x820 $x10745 (<= (+ A_3 ?x469) (+ A_1 ?x320 ?x529 (* 2.0 C))))))
 (let (($x10679 (or $x54 $x74 (= (+ A_3 ?x469) (+ A_1 ?x320 (* 2.0 C))) $x10687)))
 (let (($x36 (>= L_0 L0)))
 (let (($x111 (>= S_1 S_0)))
 (let (($x114 (>= S_2 S_1)))
 (let (($x122 (>= A_1 A_0)))
 (let (($x123 (>= A_2 A_1)))
 (and (<= (+ A_3 ?x469) S_4) (<= ?x476 S_3) (not (<= (+ A_3 ?x469) S_3)) $x123 $x122 $x114 $x111 $x36 (or $x84 (<= S_4 ?x808)) (or $x74 (<= S_3 (+ A_3 ?x469 ?x529))) (or $x54 (<= S_1 (+ A_1 ?x320 ?x529))) (or $x64 (<= S_2 (+ A_2 ?x475 ?x529))) (>= S_1 (+ ?x529 ?x320 A_1 ?x287)) (or $x54 $x817) (or $x54 (<= S_0 (+ ?x529 ?x320 A_1 ?x287))) (or $x54 (<= S_2 ?x383)) $x10679 (<= (+ ?x529 ?x320 A_1 ?x287) (+ A_0 ?x573)) (or $x84 (not $x820)) (or $x74 (not (<= L_3 L_2))) (or $x74 $x84 (= ?x237 (+ A_3 ?x469 C))) (>= S_2 (+ A_1 ?x320 ?x529)) (or $x74 (not $x820) $x10397) (>= S_0 (+ ?x529 ?x320 A_1 ?x1063)) (or (not (<= L_3 L_2)) (<= ?x9880 B)) (or $x64 (not $x10687)) (or $x54 $x64 (= L_2 (+ A_2 (* (- 1.0) A_1) L_1 ?x287))) (<= (+ ?x498 L_0 S_2) 0.0) (or $x1067 (= L_2 L_0)) (or $x74 (<= S_4 (+ A_3 ?x469 ?x529 C))) $x18597 (or (not $x461) $x64) (or $x54 $x461 $x1539) (or $x2583 $x10736 (not $x10771)) (<= S_2 (+ A_2 ?x320)) (>= S_2 ?x272) (<= (+ ?x529 ?x475 A_2 ?x1063) (+ A_0 ?x573)) (or $x64 (<= S_1 ?x272)) (or $x64 $x74 (= (+ ?x287 ?x498 ?x469 L_2 A_3) 0.0)) (or $x1714 $x10730 (= (+ A_3 ?x469 ?x529) (+ A_2 ?x320 C))) (<= S_4 (+ A_4 ?x469)) (or $x1782 $x1890 $x9737 (= ?x808 (+ A_2 ?x320 (* 2.0 C))) $x10730) $x11284 (<= S_4 ?x10735) (or $x54 (<= S_3 (+ A_1 ?x320 ?x529 (* 2.0 C)))) (or $x54 $x1231 $x2583 $x10687 $x10736 $x10745) $x18124 (or $x1578 $x10397 (<= (+ A_4 ?x498 ?x1063) B)) $x17814 $x18384 $x18816 (or (not (= L_2 L_4)) (<= ?x10395 B)) (or $x54 (<= S_4 (+ A_1 ?x320 ?x529 ?x2470))) $x17912 (<= (+ L_0 (* (- 1.0) A_1) S_1) 0.0) $x10891 (or $x74 (<= S_2 ?x10825)) (or $x2016 (= L_3 L_0) (<= (+ A_2 ?x573 L_3 ?x494 C) 0.0)) (or (not $x10850) (= (+ A_3 ?x469 ?x529) (+ A_2 ?x573 C))) (<= (+ ?x529 ?x469 A_3 ?x1429) (+ A_0 ?x573)) (or $x74 $x1246 $x10850 (<= S_1 ?x10831)) (or $x74 $x1246 $x10850 (<= S_0 (+ ?x529 ?x469 A_3 ?x1429)) $x11084) $x10900 (or $x64 (<= S_3 (+ A_2 ?x475 ?x529 C))) (<= (+ ?x287 L_0 (* (- 1.0) A_0) S_1) 0.0) (>= S_1 (+ ?x529 ?x475 A_2 ?x1063)) (>= S_0 (+ ?x529 ?x475 A_2 ?x1429)) (or $x1246 (= L_2 L_0) (<= (+ A_1 ?x573 L_2 ?x498 C) 0.0)) (or $x64 (<= S_0 (+ ?x529 ?x475 A_2 ?x1063)) $x11018) (>= S_2 ?x10831) $x17802 $x18699 (or $x64 (<= S_4 (+ A_2 ?x475 ?x529 (* 2.0 C)))) (or $x64 $x1231 $x10431) $x18781 (>= S_1 (+ ?x529 ?x469 A_3 ?x1429)) (>= S_0 (+ ?x529 ?x469 A_3 (* (- 4.0) C))) (<= S_3 (+ A_2 ?x320 C)) (or $x84 $x1067 (<= S_2 ?x11330) $x11376) (>= S_2 ?x11323) (<= (+ ?x529 ?x270 A_4 (* (- 4.0) C)) (+ A_0 ?x573)) (or (= ?x808 (+ A_3 ?x573 C)) (not $x11376)) $x18152 $x9687 (or $x84 (<= S_3 ?x11359)) $x18236 $x18810 (or $x84 $x1067 $x11335 $x11376 (<= S_1 ?x11323)) $x18675 (>= S_1 (+ ?x529 ?x270 A_4 (* (- 4.0) C))) (>= S_0 (+ ?x529 ?x270 A_4 (* (- 5.0) C))) (<= (+ ?x1063 (* (- 1.0) S_1) S_2) 0.0) (<= (+ (* (- 4.0) C) S_4 (* (- 1.0) S_1)) 0.0) (or $x10854 (<= (+ ?x287 ?x573 A_1 (* (- 1.0) S_1)) 0.0)) (<= (+ ?x1063 S_3 (* (- 1.0) S_2)) 0.0) $x18813 $x11046 (<= (+ ?x1429 L_0 (* (- 1.0) A_0) S_3) 0.0) (<= (+ ?x1063 (* (- 1.0) A_1) L_0 S_3) 0.0) (<= (+ ?x1429 S_3 (* (- 1.0) S_1)) 0.0) (<= (+ (* (- 5.0) C) S_4 (* (- 1.0) S_0)) 0.0) (<= S_4 (+ A_2 ?x320 (* 2.0 C))) (<= (+ ?x1429 (* (- 1.0) S_0) S_2) 0.0) (or $x10854 $x11114) (<= (+ ?x1063 L_0 (* (- 1.0) A_0) S_2) 0.0) (<= (+ ?x287 L_0 (* (- 1.0) A_1) S_2) 0.0) (<= (+ (* (- 4.0) C) S_3 (* (- 1.0) S_0)) 0.0) (<= (+ (* (- 4.0) C) L_0 (* (- 1.0) A_0) S_4) 0.0) (<= (+ L_0 (* (- 1.0) A_1) ?x1429 S_4) 0.0) (<= (+ ?x1429 S_4 (* (- 1.0) S_2)) 0.0) $x776 $x747 $x37 (<= (+ (* (- 1.0) A_0) L_0 S_0) 0.0) (<= (+ ?x1063 S_1 (* (- 1.0) S_0)) 0.0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
