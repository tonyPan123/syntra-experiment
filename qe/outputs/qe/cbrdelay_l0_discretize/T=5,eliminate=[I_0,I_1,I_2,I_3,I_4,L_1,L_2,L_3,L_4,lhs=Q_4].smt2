; benchmark generated from python API
(set-info :status unknown)
(declare-fun C () Real)
(declare-fun B () Real)
(declare-fun S_4 () Real)
(declare-fun S_0 () Real)
(declare-fun S_1 () Real)
(declare-fun S_3 () Real)
(declare-fun S_2 () Real)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(declare-fun L0 () Real)
(declare-fun Q_4 () Real)
(declare-fun A_1 () Real)
(declare-fun A_3 () Real)
(declare-fun A_4 () Real)
(declare-fun A_2 () Real)
(assert
 (let (($x14081 (>= (+ (* (- 1.0) B) (* (- 2.0) C) (* (- 1.0) S_0) S_4) 0.0)))
 (let (($x37 (>= L0 0.0)))
 (let (($x784 (>= C 5.0)))
 (let (($x15081 (or (not (<= Q_4 0.0)) (= Q_4 0.0))))
 (let ((?x1116 (* (- 1.0) S_0)))
 (let ((?x499 (* (- 1.0) L_0)))
 (let ((?x766 (* (- 2.0) C)))
 (let ((?x566 (* (- 1.0) B)))
 (let (($x14035 (<= (+ ?x566 ?x766 A_1 ?x499 ?x1116) 0.0)))
 (let (($x14036 (not $x14035)))
 (let (($x13832 (= (+ (* (- 1.0) C) B (* (- 1.0) Q_4) A_4 (* (- 1.0) A_3)) 0.0)))
 (let (($x13671 (<= 0.0 (+ C A_2 (* (- 1.0) A_3)))))
 (let (($x13664 (>= S_0 (+ (* (- 1.0) Q_4) A_4 ?x499 (* (- 5.0) C)))))
 (let (($x1559 (= Q_4 B)))
 (let (($x14071 (= (+ (* 3.0 C) Q_4 (* (- 1.0) A_4) A_1 ?x566) 0.0)))
 (let ((?x533 (* (- 1.0) A_2)))
 (let ((?x13672 (+ C A_1 ?x533)))
 (let (($x13673 (<= 0.0 ?x13672)))
 (let (($x14056 (not $x13673)))
 (let (($x488 (<= (+ A_1 Q_4 (* (- 1.0) A_4) (* 3.0 C)) B)))
 (let (($x12727 (not $x488)))
 (let (($x14123 (<= 0.0 (+ (* 3.0 C) A_1 (* (- 1.0) A_4)))))
 (let (($x14124 (not $x14123)))
 (let (($x12874 (<= (+ ?x566 C A_1 ?x499 (* (- 1.0) S_3)) 0.0)))
 (let (($x14017 (not $x12874)))
 (let ((?x521 (* (- 1.0) Q_4)))
 (let ((?x457 (+ ?x521 A_4 ?x499 ?x766)))
 (let (($x373 (>= S_3 ?x457)))
 (let (($x14255 (<= (+ ?x566 (* (- 3.0) C) ?x499 ?x1116 A_2) 0.0)))
 (let (($x14258 (not $x14255)))
 (let (($x13801 (<= 0.0 (+ (* 2.0 C) A_2 (* (- 1.0) A_4)))))
 (let (($x14138 (not $x13801)))
 (let (($x13882 (not $x13671)))
 (let (($x13554 (<= (+ ?x566 (* 2.0 C) A_1 ?x499 (* (- 1.0) S_4)) 0.0)))
 (let (($x14291 (<= (+ ?x566 C ?x499 (* (- 1.0) S_4) A_2) 0.0)))
 (let (($x14301 (not $x14291)))
 (let (($x14029 (not $x13554)))
 (let ((?x263 (* (- 1.0) C)))
 (let ((?x13638 (+ ?x521 A_4 ?x499 ?x263)))
 (let (($x13639 (>= S_4 ?x13638)))
 (let (($x26890 (or $x13639 $x14029 (not (<= 0.0 (+ (* 2.0 C) A_1 (* (- 1.0) A_3)))) $x14124 $x14301)))
 (let (($x13965 (<= (+ ?x566 ?x766 ?x499 (* (- 1.0) S_1) A_2) 0.0)))
 (let (($x14249 (not $x13965)))
 (let ((?x1131 (* (- 4.0) C)))
 (let ((?x487 (+ ?x521 A_4 ?x499 ?x1131)))
 (let (($x485 (>= S_1 ?x487)))
 (let (($x18225 (or $x485 $x13882 (not (<= (+ ?x566 ?x263 A_1 ?x499 (* (- 1.0) S_1)) 0.0)) $x14124 $x14249)))
 (let (($x14002 (<= (+ ?x566 ?x263 A_1 ?x499 (* (- 1.0) S_1)) 0.0)))
 (let ((?x555 (* (- 3.0) C)))
 (let ((?x13393 (+ ?x521 A_4 ?x499 ?x555)))
 (let (($x13450 (>= S_2 ?x13393)))
 (let (($x26191 (or (not (<= (+ ?x566 A_1 ?x499 (* (- 1.0) S_2)) 0.0)) $x13450 $x13882 $x14138 (not (<= (+ ?x566 ?x263 ?x499 (* (- 1.0) S_2) A_2) 0.0)))))
 (let (($x14235 (<= (+ ?x566 ?x766 (* (- 1.0) A_0) A_2) 0.0)))
 (let (($x14241 (not $x14235)))
 (let (($x13850 (<= (+ ?x566 ?x263 A_1 (* (- 1.0) A_0)) 0.0)))
 (let (($x14026 (not $x13850)))
 (let (($x13485 (<= (+ ?x521 A_4 ?x1131) A_0)))
 (let (($x14041 (<= ?x13672 0.0)))
 (let (($x13345 (<= 0.0 (+ C A_3 (* (- 1.0) A_4)))))
 (let (($x13717 (= (+ (* 2.0 C) Q_4 (* (- 1.0) A_4) A_2 ?x566) 0.0)))
 (let (($x14088 (<= 0.0 (+ (* 2.0 C) A_1 (* (- 1.0) A_3)))))
 (let (($x1707 (<= (+ ?x566 A_1 ?x499 (* (- 1.0) S_2)) 0.0)))
 (let (($x36 (>= L_0 L0)))
 (let (($x111 (>= S_1 S_0)))
 (let (($x114 (>= S_2 S_1)))
 (let (($x117 (>= S_3 S_2)))
 (let (($x120 (>= S_4 S_3)))
 (let (($x123 (>= A_2 A_1)))
 (let (($x124 (>= A_3 A_2)))
 (let (($x125 (>= A_4 A_3)))
 (and (<= (+ A_0 ?x499) S_4) $x125 $x124 $x123 $x120 $x117 $x114 $x111 $x36 (not (<= (+ A_1 ?x499) S_4)) (<= Q_4 B) (<= (+ A_3 Q_4 (* (- 1.0) A_4) C) B) (<= (+ A_2 Q_4 (* (- 1.0) A_4) (* 2.0 C)) B) (<= S_4 (+ ?x499 A_4 ?x521)) (or $x488 (<= Q_4 0.0)) (not (<= 0.0 (+ ?x566 L_0 ?x263 S_4 (* (- 1.0) A_0)))) (not (<= 0.0 (+ ?x566 (* (- 1.0) S_2) S_4))) (or $x1559 $x13345 $x14002 $x14056 $x14071) (not (<= 0.0 (+ ?x566 ?x263 S_4 (* (- 1.0) S_1)))) (or (<= Q_4 0.0) (<= S_0 ?x487)) (or (<= Q_4 0.0) (<= S_2 ?x457)) (or $x1559 $x13345 $x13485 $x13673 $x13801) (or $x1559 $x13345 $x13664 $x13673 $x14258) (or $x485 $x1559 $x13345 $x13673 $x13801) (<= (+ L_0 ?x1131 S_4 (* (- 1.0) A_0)) 0.0) (<= (+ ?x1131 S_4 (* (- 1.0) S_1)) 0.0) (<= (+ ?x766 (* (- 1.0) S_3) S_4) 0.0) (<= (+ ?x555 (* (- 1.0) S_2) S_4) 0.0) (<= (+ (* (- 5.0) C) ?x1116 S_4) 0.0) (or $x1559 $x13673 $x13717 $x13832 $x14291) (or $x373 $x1559 $x13673 $x13717 $x13832) (or $x13485 $x13673 $x13832 $x14138 $x14241) (or $x1559 $x13673 $x13717 $x13832 $x14235) (or $x1559 $x13450 $x13673 $x13717 $x13832) (or $x1559 $x13673 $x13717 $x13832 $x14255) (or (<= Q_4 0.0) (<= S_1 ?x13393)) (or $x1559 $x12727 $x13832 $x13850 $x14056 $x14071) (or $x1559 $x13485 $x13671 $x13832 $x14123) (or $x1559 $x1707 $x12727 $x13832 $x14056 $x14071) (or $x373 $x1559 $x13671 $x13832 $x14088) (or $x1559 $x12727 $x12874 $x13832 $x14056 $x14071) (or $x1559 $x13673 $x13717 $x13832 $x13965) (or $x485 $x13673 $x13882 $x14138 $x14249) (or $x1559 (not (<= A_3 (+ ?x521 A_4 ?x263)))) (<= (+ C S_2 (* (- 1.0) S_4)) 0.0) (or (<= Q_4 0.0) (<= S_3 ?x13638)) (or $x1559 $x13639 $x13671 $x13832 $x14029) (or $x13485 $x13671 $x13832 $x14026 $x14124) (or $x1559 $x13450 $x13671 $x13832 $x14071) (or $x485 $x1559 $x13671 $x13832 $x14071) (or $x1559 $x13345 $x13639 $x14029 $x14301) (or $x1559 $x13345 $x13450 $x14056 $x14071) (or $x373 $x1559 $x13345 $x14056 $x14071) (or $x13345 $x13485 $x14026 $x14056 $x14124) (or $x1559 $x13345 $x13485 $x14041 $x14123) (or $x1559 $x13345 $x13485 $x14056 $x14123) (or $x13639 $x13673 $x13882 $x14138 $x14301) (or $x1559 $x13345 $x13664 $x14056 $x14123) (or $x485 $x1559 $x13345 $x14056 $x14123) (or $x1559 $x13345 $x13664 $x14041 $x14071) (or $x373 $x13882 $x14017 $x14056 $x14138) (or $x13485 $x13882 $x14026 $x14138 $x14241) $x26191 (or $x12727 $x13882 $x14002 $x14056 $x14071 $x14138) $x18225 $x26890 (or $x1559 $x12727 $x13554 $x13832 $x14056 $x14071) (or $x13664 $x13882 $x14036 $x14138 $x14258) (or $x373 $x13671 $x13832 $x14017 $x14124) (or $x1559 $x12727 $x13832 $x14035 $x14056 $x14071) (or $x1559 $x13664 $x13671 $x13832 $x14036) $x15081 $x784 $x37 (<= (+ L_0 S_0 (* (- 1.0) A_0)) 0.0) (<= (+ C S_0 (* (- 1.0) S_2)) 0.0) (<= (+ ?x263 L_0 (* (- 1.0) A_0) S_1) 0.0) (<= (+ ?x766 ?x1116 S_1) 0.0) (<= (+ ?x766 L_0 S_2 (* (- 1.0) A_0)) 0.0) (<= (+ ?x555 ?x1116 S_2) 0.0) (<= (+ C (* (- 1.0) S_3) S_1) 0.0) (<= (+ ?x555 L_0 S_3 (* (- 1.0) A_0)) 0.0) (<= (+ (* 2.0 C) S_0 (* (- 1.0) S_3)) 0.0) (not (>= (+ ?x566 C (* (- 1.0) S_3) S_4) 0.0)) (not $x14081) (<= (+ ?x766 S_2 (* (- 1.0) S_1)) 0.0) (<= (+ ?x1131 ?x1116 S_3) 0.0) (<= (+ ?x766 S_3 (* (- 1.0) S_2)) 0.0) (<= (+ ?x555 S_3 (* (- 1.0) S_1)) 0.0) (<= (+ (* 2.0 C) (* (- 1.0) S_4) S_1) 0.0) (<= (+ (* 3.0 C) S_0 (* (- 1.0) S_4)) 0.0) (not (>= (+ ?x566 (* 2.0 C)) 0.0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
