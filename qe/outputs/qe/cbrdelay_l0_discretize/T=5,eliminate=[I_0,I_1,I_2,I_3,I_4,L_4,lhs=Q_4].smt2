; benchmark generated from python API
(set-info :status unknown)
(declare-fun A_0 () Real)
(declare-fun S_0 () Real)
(declare-fun L_0 () Real)
(declare-fun L0 () Real)
(declare-fun C () Real)
(declare-fun B () Real)
(declare-fun S_3 () Real)
(declare-fun S_1 () Real)
(declare-fun S_2 () Real)
(declare-fun S_4 () Real)
(declare-fun A_1 () Real)
(declare-fun L_1 () Real)
(declare-fun A_2 () Real)
(declare-fun A_3 () Real)
(declare-fun L_3 () Real)
(declare-fun A_4 () Real)
(declare-fun Q_4 () Real)
(declare-fun L_2 () Real)
(assert
 (let (($x37 (>= L0 0.0)))
 (let (($x714 (>= C 5.0)))
 (let (($x782 (>= B 5.0)))
 (let (($x18153 (<= 0.0 (+ C (* (- 1.0) A_1) L_0 S_0))))
 (let ((?x327 (* (- 1.0) L_1)))
 (let ((?x889 (+ A_2 ?x327)))
 (let (($x2756 (>= S_3 ?x889)))
 (let (($x35155 (or $x2756 $x18153 (<= (+ (* 2.0 C) (* (- 1.0) S_3) S_0) 0.0))))
 (let (($x34917 (or (not (<= L_3 L_1)) (<= (+ A_3 (* (- 1.0) A_2) (* (- 1.0) C)) B))))
 (let (($x16895 (>= S_0 (+ (* (- 1.0) L_0) (* (- 5.0) C) (* (- 1.0) Q_4) A_4))))
 (let (($x1315 (= Q_4 B)))
 (let (($x842 (not (<= L_3 L_2))))
 (let (($x839 (not (<= L_2 L_1))))
 (let (($x835 (not (<= L_1 L_0))))
 (let (($x18156 (not $x18153)))
 (let (($x17992 (<= 0.0 (+ C A_1 (* (- 1.0) A_2)))))
 (let (($x17267 (<= A_3 (+ (* (- 1.0) C) (* (- 1.0) Q_4) A_4))))
 (let (($x949 (= Q_4 0.0)))
 (let (($x35011 (or $x949 $x17267 $x17992 $x18156 (not (<= (+ A_3 (* (- 1.0) A_1) (* (- 2.0) C)) 0.0)))))
 (let (($x17662 (<= (+ A_3 (* (- 1.0) A_1) (* (- 2.0) C)) 0.0)))
 (let (($x17299 (<= A_1 (+ (* (- 3.0) C) (* (- 1.0) Q_4) A_4))))
 (let ((?x501 (* (- 1.0) Q_4)))
 (let ((?x2062 (* (- 4.0) C)))
 (let ((?x587 (* (- 1.0) L_0)))
 (let ((?x17414 (+ ?x587 ?x2062 ?x501 A_4)))
 (let ((?x1444 (* (- 3.0) C)))
 (let ((?x16838 (+ ?x587 ?x1444 ?x501 A_4)))
 (let (($x17431 (>= S_2 ?x16838)))
 (let (($x16931 (<= A_2 (+ (* (- 2.0) C) ?x501 A_4))))
 (let (($x16979 (not $x16931)))
 (let (($x19967 (or $x842 $x1315 $x16979 (= (+ (* (- 1.0) A_2) (* (- 2.0) C) ?x501 A_4) 0.0))))
 (let ((?x592 (* (- 2.0) C)))
 (let ((?x16899 (+ ?x587 ?x592 ?x501 A_4)))
 (let (($x17667 (>= S_3 ?x16899)))
 (let (($x17471 (not (= 0.0 (+ (* (- 1.0) A_3) (* (- 1.0) C) ?x501 A_4)))))
 (let ((?x235 (* (- 1.0) C)))
 (let ((?x513 (* (- 1.0) A_2)))
 (let ((?x16881 (+ A_3 ?x513 ?x235)))
 (let (($x16882 (<= ?x16881 0.0)))
 (let (($x22411 (or $x1315 (= (+ (* (- 1.0) A_3) ?x235 ?x501 A_4) 0.0) (not $x17267))))
 (let (($x1295 (not (= L_2 L_3))))
 (let ((?x389 (* (- 1.0) L_2)))
 (let ((?x543 (* (- 1.0) B)))
 (let ((?x16842 (+ ?x543 ?x389 A_2 ?x592)))
 (let (($x17157 (<= S_0 ?x16842)))
 (let ((?x16935 (+ A_2 ?x327 C)))
 (let ((?x481 (* (- 1.0) L_3)))
 (let ((?x482 (+ A_3 ?x481)))
 (let (($x17016 (<= ?x482 ?x16935)))
 (let (($x17094 (not $x17016)))
 (let ((?x16781 (+ ?x543 ?x389 A_2 ?x235)))
 (let ((?x876 (+ A_1 ?x587)))
 (let (($x14577 (<= ?x876 ?x16781)))
 (let (($x74 (= L_3 L_2)))
 (let ((?x17802 (+ ?x543 ?x481 A_3 ?x235)))
 (let ((?x1220 (+ A_2 ?x587)))
 (let (($x18058 (<= ?x1220 ?x17802)))
 (let ((?x17796 (+ ?x543 ?x481 A_3 ?x592)))
 (let (($x17913 (<= ?x876 ?x17796)))
 (let (($x2991 (= L_3 L_0)))
 (let ((?x17783 (+ ?x543 ?x481 A_3 ?x1444)))
 (let (($x17789 (<= S_0 ?x17783)))
 (let (($x3033 (= L_3 L_1)))
 (let (($x17179 (<= (+ A_2 (* (- 1.0) A_1) ?x235) 0.0)))
 (let (($x17180 (not $x17179)))
 (let (($x20042 (or $x839 $x1295 $x1315 (not $x17299) (= (+ (* 3.0 C) A_1 (* (- 1.0) A_4) Q_4) 0.0))))
 (let (($x2386 (not (= L_0 L_2))))
 (let (($x18039 (or $x2386 $x2991 $x18058 (<= (+ A_1 ?x587 L_3 (* (- 1.0) A_3) (* 2.0 C)) 0.0))))
 (let (($x35586 (or (<= (+ A_1 ?x587 (* (- 1.0) S_2)) 0.0) (<= (+ C (* (- 1.0) S_2) S_0) 0.0))))
 (let (($x19904 (or (>= S_3 ?x1220) (<= (+ C A_1 ?x587 (* (- 1.0) S_3)) 0.0) $x18156)))
 (let (($x1142 (not (= L_1 L_2))))
 (let (($x17970 (or $x835 $x1142 $x3033 (<= (+ A_2 ?x587 L_3 (* (- 1.0) A_3) C) 0.0))))
 (let (($x17923 (or (= (+ ?x592 ?x543 A_3 (* (- 1.0) A_1) L_0 ?x481) 0.0) (not $x17913))))
 (let (($x1707 (= L_2 L_0)))
 (let (($x1308 (not (= L_0 L_1))))
 (let (($x54 (= L_1 L_0)))
 (let (($x20698 (or $x54 $x839 $x842 $x1315 (not (<= (+ A_1 (* 3.0 C) Q_4 (* (- 1.0) A_4)) B)) (= (+ (* (- 1.0) A_1) B ?x1444 ?x501 A_4) 0.0))))
 (let (($x17082 (<= (+ A_1 (* 3.0 C) Q_4 (* (- 1.0) A_4)) B)))
 (let (($x17061 (<= A_2 (+ A_1 ?x543 C))))
 (let (($x21731 (or (<= S_4 (+ A_2 ?x389 ?x543 (* 2.0 C))) (not (= 0.0 (+ ?x513 B ?x592 ?x501 A_4))))))
 (let (($x64 (= L_2 L_1)))
 (let (($x35666 (or $x64 $x842 $x1315 (= (+ ?x513 B ?x592 ?x501 A_4) 0.0) (not (<= (+ A_2 (* 2.0 C) Q_4 (* (- 1.0) A_4)) B)))))
 (let (($x17215 (<= (+ A_2 (* 2.0 C) Q_4 (* (- 1.0) A_4)) B)))
 (let (($x1328 (not (<= Q_4 0.0))))
 (let (($x3429 (or $x949 $x1328)))
 (let (($x20925 (or $x74 $x1315 (= (+ (* (- 1.0) A_3) B ?x235 ?x501 A_4) 0.0) (not (<= (+ A_3 C Q_4 (* (- 1.0) A_4)) B)))))
 (let (($x36 (>= L_0 L0)))
 (let (($x111 (>= S_1 S_0)))
 (let (($x114 (>= S_2 S_1)))
 (let (($x117 (>= S_3 S_2)))
 (let (($x122 (>= A_1 A_0)))
 (let (($x123 (>= A_2 A_1)))
 (let (($x124 (>= A_3 A_2)))
 (and (<= ?x482 S_4) $x124 $x123 $x122 $x117 $x114 $x111 $x36 (>= S_3 (+ A_2 ?x389 ?x543)) (or $x54 (<= S_1 (+ A_1 ?x327 ?x543))) (or $x74 (<= S_3 (+ A_3 ?x481 ?x543))) (or $x64 (<= S_2 (+ A_2 ?x389 ?x543))) (not (<= (+ A_4 ?x481) S_4)) (or $x64 $x74 (= ?x482 (+ A_2 ?x389 C))) (or $x1328 (<= (+ A_4 (* (- 1.0) A_3) ?x235) 0.0)) (or $x74 (<= S_4 (+ A_3 ?x481 ?x543 C))) (<= Q_4 B) (>= S_0 (+ ?x543 ?x327 A_1 ?x592)) (<= (+ ?x543 ?x327 A_1 ?x235) (+ A_0 ?x587)) (>= S_2 (+ A_1 ?x327 ?x543)) (or $x74 $x842) $x20925 (or $x54 $x835) $x3429 (or $x64 $x839) (>= S_1 (+ ?x543 ?x327 A_1 ?x235)) (or $x3033 (not $x17061) (= (+ A_3 ?x481 ?x543) ?x16935)) (or $x54 (<= S_0 (+ ?x543 ?x327 A_1 ?x235))) (or $x54 (<= S_2 (+ A_1 ?x327 ?x543 C))) (or $x949 (<= (+ A_3 C Q_4 (* (- 1.0) A_4)) B)) (or $x64 (<= S_1 ?x16781)) (or $x17061 (>= S_3 (+ A_1 ?x327 ?x543 C))) (or $x2756 (not $x17061)) (or $x54 $x64 (= (+ A_2 ?x389) (+ A_1 ?x327 C))) (<= S_2 ?x889) (>= S_2 ?x16781) (or $x54 $x74 $x17061 (= ?x482 (+ A_1 ?x327 (* 2.0 C)))) (or $x1142 $x54 $x17179) (>= S_0 (+ ?x543 ?x389 A_2 ?x1444)) (or $x64 $x14577 $x17157) (<= S_3 (+ A_3 ?x389)) (or $x949 $x17215 $x17267) $x35666 $x21731 (or $x64 (<= S_4 (+ A_2 ?x389 ?x501 (* 2.0 C)))) (or $x64 $x1295 $x16882) (<= S_4 (+ A_3 ?x389 C)) (or $x64 (<= S_3 (+ A_2 ?x389 ?x543 C))) (or $x949 $x17061 $x17082 $x17267) (or $x949 (not $x17061) $x17094 $x17267) (or $x949 $x16882 $x16931 (not $x17061)) $x20698 (or $x54 $x839 $x842 $x17662) (or $x54 (<= S_4 (+ A_1 ?x327 ?x543 (* 3.0 C)))) (or $x54 (<= S_3 (+ A_1 ?x327 ?x543 (* 2.0 C)))) (<= ?x16842 (+ A_0 ?x587)) (<= (+ (* (- 1.0) A_1) L_0 S_1) 0.0) (or (not $x14577) (= (+ C A_1 ?x513 L_2 B ?x587) 0.0)) (>= S_1 ?x16842) (or (<= (+ A_1 ?x587 L_2 ?x513 C) 0.0) $x1308 $x1707) (or $x74 (<= S_2 ?x17802)) (<= (+ ?x235 (* (- 1.0) A_1) L_0 S_2) 0.0) $x17923 $x17970 (<= (+ ?x235 L_0 S_1 (* (- 1.0) A_0)) 0.0) (>= S_2 ?x17796) (<= S_4 (+ ?x587 ?x501 A_4)) (<= (+ ?x592 S_1 (* (- 1.0) S_0)) 0.0) $x19904 (<= ?x17783 (+ A_0 ?x587)) (or $x74 $x835 (<= S_1 ?x17796) $x18058) (>= S_3 ?x17802) (or (= (+ A_3 ?x481 ?x543) (+ A_2 ?x587 C)) (not $x18058)) $x35586 $x18039 $x20042 (or $x949 (<= S_1 ?x16838) $x16931 $x17267) (or $x949 $x16931 $x17267 (<= S_0 ?x17414) $x18153) (or $x949 (<= S_2 ?x16899) $x17267) (or $x949 $x16931 $x17180 $x17267 $x18156) (>= S_0 (+ ?x543 ?x481 A_3 ?x2062)) (or $x835 $x3033 $x17180 $x17789 $x18058) (or $x835 $x3033 $x17016 $x17789 $x18058 $x18153) (or $x2991 (<= ?x482 (+ A_2 ?x587 C)) $x17913 $x18058 $x18156) (or $x74 $x14577 $x17094 $x17157) (>= S_1 ?x17783) (or $x949 (<= S_3 (+ ?x587 ?x235 ?x501 A_4))) (or $x835 $x839 $x1295 $x1315 (<= (+ ?x2062 ?x501 A_4) A_0)) (<= (+ ?x592 S_2 (* (- 1.0) S_1)) 0.0) $x22411 (or $x835 $x839 $x1315 $x17471 $x17667) (or $x1315 $x16882 $x17471) (or $x835 $x839 $x842 $x1315 $x17667) (<= S_3 ?x16935) (<= (+ ?x1444 S_2 (* (- 1.0) S_0)) 0.0) (or $x835 $x842 $x1315 $x16979 $x17431) $x19967 (or $x835 $x839 $x842 $x1315 $x17431) (or $x835 $x839 $x842 $x1315 (>= S_1 ?x17414)) (or $x949 $x17299 $x17662 $x17992 $x18156) $x35011 (or $x835 $x839 $x842 $x1315 $x16895) (or $x2756 (<= (+ C S_1 (* (- 1.0) S_3)) 0.0)) (<= S_4 (+ A_2 ?x327 (* 2.0 C))) $x34917 (<= (+ ?x592 L_0 S_2 (* (- 1.0) A_0)) 0.0) $x35155 (<= (+ ?x2062 L_0 S_4 (* (- 1.0) A_0)) 0.0) (<= (+ ?x592 (* (- 1.0) S_3) S_4) 0.0) (<= (+ ?x1444 (* (- 1.0) A_1) L_0 S_4) 0.0) (<= (+ (* (- 5.0) C) S_4 (* (- 1.0) S_0)) 0.0) (<= (+ ?x592 (* (- 1.0) A_1) S_3 L_0) 0.0) (<= (+ ?x2062 (* (- 1.0) S_1) S_4) 0.0) (<= (+ ?x1444 (* (- 1.0) S_2) S_4) 0.0) (<= (+ ?x2062 S_3 (* (- 1.0) S_0)) 0.0) (<= (+ ?x1444 L_0 S_3 (* (- 1.0) A_0)) 0.0) (<= (+ ?x592 (* (- 1.0) S_2) S_3) 0.0) (<= (+ ?x1444 (* (- 1.0) S_1) S_3) 0.0) $x782 $x714 $x37 (<= (+ L_0 S_0 (* (- 1.0) A_0)) 0.0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
