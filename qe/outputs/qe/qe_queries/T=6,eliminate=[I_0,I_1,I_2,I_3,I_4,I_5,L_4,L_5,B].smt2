; benchmark generated from python API
(set-info :status unknown)
(declare-fun A_2 () Real)
(declare-fun L_2 () Real)
(declare-fun C () Real)
(declare-fun S_5 () Real)
(declare-fun S_4 () Real)
(declare-fun A_3 () Real)
(declare-fun L_3 () Real)
(declare-fun S_3 () Real)
(declare-fun A_5 () Real)
(declare-fun A_1 () Real)
(declare-fun L_1 () Real)
(declare-fun A_4 () Real)
(declare-fun S_2 () Real)
(declare-fun S_0 () Real)
(declare-fun S_1 () Real)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(assert
 (let ((?x1751 (* (- 3.0) C)))
 (let ((?x999 (* (- 1.0) A_1)))
 (let ((?x1026 (* (- 1.0) A_5)))
 (let ((?x1715 (* (- 4.0) C)))
 (let ((?x1768 (* (- 2.0) A_0)))
 (let ((?x954 (* (- 1.0) L_0)))
 (let ((?x963 (* (- 1.0) L_1)))
 (let (($x840 (= ?x963 ?x954)))
 (let (($x32577 (or $x840 (<= (+ S_5 ?x1768 ?x1715 L_0 ?x1026 S_0 L_1 A_4) 0.0) (<= (+ S_5 A_4 ?x1026 L_1 ?x999 ?x1751) 0.0))))
 (let (($x5129 (<= (+ A_2 (* (- 1.0) L_2) (* (- 1.0) S_5) (* 2.0 C)) 0.0)))
 (let (($x3622 (<= (+ (* (- 1.0) S_5) A_4 (* (- 1.0) L_3)) 0.0)))
 (let (($x2141 (<= (+ ?x963 A_1 (* (- 1.0) C) L_0 (* (- 1.0) A_0)) 0.0)))
 (let (($x1746 (<= (+ (* (- 1.0) S_5) A_0 (* 4.0 C) ?x954) 0.0)))
 (let (($x1803 (<= (+ A_0 (* 3.0 C) ?x954 L_3 (* (- 1.0) A_3)) 0.0)))
 (let (($x1223 (not $x1803)))
 (let (($x4141 (<= (+ L_3 (* (- 1.0) L_2)) 0.0)))
 (let (($x4102 (not $x4141)))
 (let (($x2863 (<= (+ (* (- 1.0) S_5) (* (- 1.0) L_3) A_3 C) 0.0)))
 (let (($x2108 (<= (+ ?x963 L_3) 0.0)))
 (let ((?x1149 (* (- 1.0) A_0)))
 (let ((?x1758 (* (- 2.0) C)))
 (let ((?x1071 (* (- 1.0) A_2)))
 (let (($x8991 (<= (+ ?x1071 L_2 S_5 ?x1758 ?x1026 L_1 S_0 ?x1149 A_4) 0.0)))
 (let (($x6109 (<= (+ S_5 (* (- 1.0) C) ?x1026 L_3 (* (- 1.0) A_3) A_4) 0.0)))
 (let (($x2066 (not $x2141)))
 (let (($x3299 (<= (+ A_0 (* (- 1.0) S_1) ?x963) 0.0)))
 (let (($x2076 (<= (+ ?x963 A_1 (* (- 1.0) S_5) (* 3.0 C)) 0.0)))
 (let (($x1788 (<= (+ (* (- 1.0) C) L_2 (* (- 1.0) L_3) ?x1071 A_3) 0.0)))
 (let (($x1632 (not $x1788)))
 (let (($x2530 (<= (+ ?x1751 (* (- 1.0) L_3) A_3 ?x1149 L_0) 0.0)))
 (let (($x2536 (<= (+ (* (- 1.0) C) A_2 (* (- 1.0) L_2) L_1 ?x999) 0.0)))
 (let (($x2397 (not $x2536)))
 (let ((?x981 (* (- 1.0) L_3)))
 (let ((?x1765 (* (- 1.0) C)))
 (let (($x6477 (<= (+ ?x1071 L_2 ?x1765 ?x1149 S_0 L_1 ?x981 A_3) 0.0)))
 (let (($x5158 (<= (+ ?x1071 L_2 A_0 ?x954 L_1 ?x981 ?x999 A_3) 0.0)))
 (let (($x1799 (<= (+ A_0 C ?x954 L_1 ?x999) 0.0)))
 (let (($x992 (not $x1799)))
 (let (($x5130 (<= (+ ?x1071 L_2 S_5 ?x1765 ?x1026 A_0 ?x954 L_1 ?x999 A_4) 0.0)))
 (let (($x5098 (<= (+ A_2 (* (- 1.0) L_2) C (* (- 1.0) S_4)) 0.0)))
 (let (($x2425 (<= (+ ?x981 A_3 (* (- 1.0) S_4)) 0.0)))
 (let (($x1795 (<= (+ C ?x963 L_2 A_1 ?x1071) 0.0)))
 (let (($x32219 (or $x840 (<= (+ (* 2.0 L_1) ?x999 ?x1758 S_0 ?x981 ?x1149 A_3) 0.0) $x2536)))
 (let (($x4067 (<= (+ C L_3 (* (- 1.0) L_2) A_2 (* (- 1.0) A_3)) 0.0)))
 (let ((?x1197 (* (- 1.0) A_3)))
 (let ((?x1762 (* (- 1.0) S_1)))
 (let ((?x2221 (* (- 2.0) L_1)))
 (let ((?x1263 (* 2.0 C)))
 (let (($x4009 (<= (+ ?x1263 ?x2221 A_1 ?x1762 L_3 A_0 ?x1197) 0.0)))
 (let (($x1612 (not $x1795)))
 (let (($x2106 (<= (+ ?x963 L_2) 0.0)))
 (let (($x1764 (<= (+ (* 2.0 A_0) ?x1263 ?x954 ?x1762 ?x963 L_2 ?x1071) 0.0)))
 (let (($x19202 (or $x1612 (<= (+ ?x963 A_1 ?x1263 (* (- 1.0) S_4)) 0.0) $x2066 $x2425)))
 (let (($x10410 (<= (+ S_5 L_3 ?x1197 ?x1765 ?x1026 ?x1149 S_0 L_1 A_4) 0.0)))
 (let (($x11680 (<= (+ (* 2.0 L_1) ?x999 S_5 ?x1751 ?x1026 S_0 ?x1149 A_4) 0.0)))
 (let (($x6907 (<= (+ S_5 L_3 ?x1197 C ?x1026 A_0 ?x954 L_2 ?x1071 A_4) 0.0)))
 (let (($x31546 (or $x840 (<= (+ ?x1768 ?x1758 L_0 S_0 L_1 (* (- 1.0) L_2) A_2) 0.0) $x2536)))
 (let (($x5492 (<= (+ A_2 (* (- 1.0) L_2) ?x1149 L_0 L_3 ?x963 A_1 ?x1197) 0.0)))
 (let (($x32209 (or $x2141 (not (<= (+ ?x1758 A_2 (* (- 1.0) L_2) ?x1149 L_0) 0.0)) $x4141 $x5492)))
 (let (($x8932 (<= (+ ?x1768 ?x1751 L_0 S_0 L_1 ?x981 A_3) 0.0)))
 (let (($x2532 (<= (+ ?x1758 ?x981 A_3 L_1 ?x999) 0.0)))
 (let (($x8931 (<= (+ (* 2.0 A_0) (* 3.0 C) ?x954 ?x1762 ?x963 L_3 ?x1197) 0.0)))
 (let (($x1801 (<= (+ A_0 ?x1263 ?x954 L_2 ?x1071) 0.0)))
 (let (($x974 (not $x1801)))
 (let (($x3820 (<= (+ C ?x2221 A_1 ?x1762 L_2 A_0 ?x1071) 0.0)))
 (let (($x32294 (or $x1799 $x2106 $x2536 (<= (+ S_5 L_3 ?x1197 ?x1026 ?x963 A_1 L_2 ?x1071 A_4) 0.0))))
 (let (($x18665 (or $x840 $x2141 (<= (+ S_5 L_3 ?x1197 ?x1026 A_0 ?x954 L_1 ?x999 A_4) 0.0) $x10410)))
 (let (($x5561 (<= (+ A_2 (* (- 1.0) L_2) C A_0 ?x1762 L_3 ?x963 ?x1197) 0.0)))
 (let (($x2409 (<= (+ A_2 (* (- 1.0) L_2) (* (- 1.0) S_3)) 0.0)))
 (let (($x18611 (or $x1223 (<= (+ A_0 (* 3.0 C) ?x954 (* (- 1.0) S_4)) 0.0) $x2141 $x5098)))
 (let (($x2127 (<= (+ (* 2.0 L_1) ?x999 ?x1765 S_0 (* (- 1.0) L_2) ?x1149 A_2) 0.0)))
 (let (($x2085 (<= (+ ?x963 A_1 C (* (- 1.0) S_3)) 0.0)))
 (let (($x2316 (or (<= (+ A_0 C ?x954 (* (- 1.0) S_2)) 0.0) (<= (+ ?x963 A_1 (* (- 1.0) S_2)) 0.0))))
 (and (<= ?x963 ?x954) (<= ?x981 (* (- 1.0) L_2)) (<= (* (- 1.0) L_2) ?x963) $x2316 (or $x974 (<= (+ A_0 ?x1263 ?x954 (* (- 1.0) S_3)) 0.0) $x2085) (or $x1788 $x2106) (or $x1799 $x2085 $x2409) (or $x840 $x2127 $x2536) (or $x1799 $x2106 $x2536 $x3820) (or $x992 $x1764 $x2106 $x2536) (or $x1746 $x2076 $x2106 $x2532 $x3622) (or $x1801 $x2141 $x2409) $x18611 (or $x1803 $x2141 $x2425 $x5098) (or $x1801 $x2106 $x2141) (or $x1632 $x1803 $x2141 $x4141) (or $x1795 $x2106 $x2141) (or $x2141 $x4067 $x4141) (or $x840 $x2141 $x5158 $x6477) (or $x2106 $x2141 $x6907) (or $x1803 $x2108 $x2141 $x2863 $x3622 $x4102) (or $x840 $x1788 $x1799 $x6477) (or $x1788 $x1803 $x2076 $x3622 $x5129) (or $x992 $x1801 $x2409) (or $x1788 (<= (+ ?x963 A_1 ?x1263 L_3 ?x1197) 0.0) $x4141 $x5492) (or $x840 $x2536 $x8932) (or $x1803 $x2076 $x2536 $x2863 $x3622) (or $x1788 $x1795 $x1801 $x4141 $x5561) (or $x4141 $x6109) (or $x1632 $x1803 $x2141 $x2863 $x3622) (or $x1746 $x2076 $x2536 $x3622 $x4141) (or $x1223 $x1801 $x2076 $x3622 $x5129) $x18665 (or $x1612 $x1788 $x2066 $x4009 $x4141) (or $x2106 (<= (+ S_5 ?x1758 ?x1026 L_2 ?x1071 A_4) 0.0)) $x32294 (or (not $x2532) $x2536 $x4141) (or $x2532 $x4067 $x4141) (or $x1632 $x2066 $x2532 $x3820 $x4141) (or $x840 $x1799 $x6109 $x11680) (or $x1746 $x2141 $x3622 $x4141 $x5129) (or $x974 $x2141 $x4141 $x8931) (or $x1788 $x1799 $x2076 (<= (+ ?x981 ?x1765 L_1 ?x999 A_2) 0.0) $x3622) (or $x840 $x2532 $x8932) (or $x1795 $x2106 $x3299) (or $x2066 $x2106 $x2397 $x3299) (or $x1799 $x2106 $x2397 $x6109) (or $x1632 $x1803 $x2076 $x2863 (<= (+ A_4 ?x1026) 0.0)) (or $x3299 $x4067 $x4141) (or $x1632 $x1795 $x2530 $x4141) (or $x1223 $x1632 $x1746 $x2076 (<= (+ A_4 ?x1026) 0.0)) $x32209 $x31546 (or $x992 $x2106 $x2536 $x6907) (or $x1788 $x2066 $x2076 (<= (+ ?x981 ?x1765 L_1 ?x999 A_2) 0.0) $x3622) (or $x840 $x2536 $x11680) (or $x1632 $x1795 $x3299 $x4141) (or $x1632 $x2066 $x2397 $x3299 $x4141) (or $x1632 $x1746 $x2076 $x2532 $x3622) (or $x992 $x1223 $x1746 $x2536 $x3622) (or $x2066 $x840 $x6109 $x10410) (or $x2066 $x2106 $x2397 $x6109) $x19202 (or $x1764 $x2106 $x2141) (or $x1612 $x1746 $x2076 $x3622 $x4009 (not $x4067)) $x32219 (or $x1795 $x2066 $x2425 $x5098) (or $x840 $x2141 $x5130 $x8991) (or $x992 $x840 $x5158 $x6477) (or $x2066 $x2397 $x2530 $x3622 $x5129) (or $x1632 $x2066 $x2076 $x2863 $x3299 $x3622) (or $x2066 $x840 $x6109 $x8991) (or $x1746 $x2108 $x2141 $x2863 $x3622 $x4102) (or $x1223 $x1746 $x2141 $x3622 $x5129) $x32577 (<= (+ ?x1149 ?x1765 L_0 S_1) 0.0) (<= (+ ?x1149 ?x1758 L_0 S_2) 0.0) (<= (+ ?x1149 ?x1751 L_0 S_3) 0.0) (<= (+ ?x1149 ?x1715 L_0 S_4) 0.0) (<= (+ S_5 ?x1149 (* (- 5.0) C) L_0) 0.0) (<= (+ S_0 L_0 ?x1149) 0.0) (<= (+ L_1 ?x999 S_1) 0.0) (<= (+ ?x1762 S_0) 0.0) (<= (+ L_1 ?x999 ?x1765 S_2) 0.0) (<= (+ L_1 ?x999 ?x1758 S_3) 0.0) (<= (+ L_1 ?x999 ?x1751 S_4) 0.0) (<= (+ ?x1071 L_2 S_2) 0.0) (<= (+ L_3 ?x1197 S_3) 0.0) (<= (+ S_5 L_3 ?x1197 ?x1758) 0.0) (<= (+ (* (- 1.0) S_5) S_4) 0.0) (<= (+ (* (- 1.0) A_4) L_3 S_4) 0.0) (<= (+ S_5 (* (- 1.0) A_4) ?x1765 L_3) 0.0) (<= (+ S_5 ?x1715 L_1 ?x999) 0.0) (<= (+ S_5 ?x1026 L_3) 0.0) (<= (+ ?x1071 L_2 ?x1765 S_3) 0.0) (<= (+ L_3 ?x1197 ?x1765 S_4) 0.0) (<= (+ S_4 ?x1758 L_2 ?x1071) 0.0) (<= (+ S_5 ?x1751 L_2 ?x1071) 0.0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
