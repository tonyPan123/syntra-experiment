; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_0 () Real)
(declare-fun L_0 () Real)
(declare-fun A_0 () Real)
(declare-fun S_4 () Real)
(declare-fun C () Real)
(declare-fun L_2 () Real)
(declare-fun A_2 () Real)
(declare-fun S_5 () Real)
(declare-fun A_3 () Real)
(declare-fun L_3 () Real)
(declare-fun L_4 () Real)
(declare-fun A_4 () Real)
(declare-fun S_1 () Real)
(declare-fun S_3 () Real)
(declare-fun S_2 () Real)
(declare-fun A_5 () Real)
(declare-fun A_1 () Real)
(declare-fun L_1 () Real)
(assert
 (let (($x11591 (<= (+ L_2 (* (- 1.0) L_1)) 0.0)))
 (let (($x2141 (<= (+ (* (- 1.0) L_1) A_1 (* (- 1.0) C) L_0 (* (- 1.0) A_0)) 0.0)))
 (let ((?x1165 (* (- 1.0) A_2)))
 (let ((?x936 (* (- 1.0) L_1)))
 (let ((?x1740 (* (- 1.0) S_1)))
 (let ((?x927 (* (- 1.0) L_0)))
 (let ((?x1236 (* 2.0 C)))
 (let ((?x1739 (* 2.0 A_0)))
 (let (($x10914 (<= (+ L_4 (* (- 1.0) L_3)) 0.0)))
 (let (($x9844 (<= (+ ?x1739 (* 4.0 C) ?x927 ?x1740 L_4 ?x936 (* (- 1.0) A_4)) 0.0)))
 (let ((?x965 (* (- 1.0) A_4)))
 (let ((?x954 (* (- 1.0) L_3)))
 (let (($x2865 (<= (+ ?x954 A_3 C ?x936 ?x1740 L_4 A_0 ?x965) 0.0)))
 (let (($x2484 (<= (+ ?x954 A_3 L_1 (* (- 1.0) A_1) (* (- 2.0) C)) 0.0)))
 (let (($x2133 (<= (+ C (* (- 1.0) L_2) L_3 A_2 (* (- 1.0) A_3)) 0.0)))
 (let (($x2125 (<= (+ (* (- 1.0) C) L_3 (* (- 1.0) L_4) (* (- 1.0) A_3) A_4) 0.0)))
 (let (($x1776 (<= (+ A_0 C ?x927 L_1 (* (- 1.0) A_1)) 0.0)))
 (let (($x1714 (not $x1776)))
 (let (($x2849 (<= (+ A_3 C ?x965) 0.0)))
 (let (($x2456 (<= (+ (* (- 1.0) S_5) A_4 (* (- 1.0) L_4)) 0.0)))
 (let (($x2145 (<= (+ ?x936 A_1 (* 3.0 C) L_4 ?x965) 0.0)))
 (let (($x1782 (<= (+ A_0 (* 4.0 C) ?x927 L_4 ?x965) 0.0)))
 (let (($x1778 (<= (+ A_0 ?x1236 ?x927 L_2 ?x1165) 0.0)))
 (let (($x1068 (not $x1778)))
 (let (($x3534 (<= (+ C (* (- 2.0) L_1) A_1 ?x1740 L_2 A_0 ?x1165) 0.0)))
 (let (($x2488 (<= (+ A_2 (* (- 1.0) L_2) L_1 (* (- 1.0) A_1) (* (- 1.0) C)) 0.0)))
 (let (($x2024 (not $x2141)))
 (let ((?x945 (* (- 1.0) L_2)))
 (let ((?x974 (* (- 1.0) A_1)))
 (let (($x3136 (<= (+ A_2 ?x945 ?x1236 L_4 ?x965) 0.0)))
 (let (($x26770 (or $x2488 $x3136 (<= (+ ?x954 A_3 L_1 ?x974 ?x945 L_4 A_2 ?x965) 0.0) $x10914)))
 (let (($x4642 (<= (+ ?x945 L_3) 0.0)))
 (let (($x2098 (<= (+ (* (- 2.0) L_1) A_1 ?x1236 ?x1740 L_3 A_0 (* (- 1.0) A_3)) 0.0)))
 (let ((?x963 (* (- 1.0) L_4)))
 (let ((?x1039 (* (- 1.0) A_3)))
 (let (($x3471 (<= (+ L_3 ?x1039 ?x936 A_1 ?x963 L_2 ?x1165 A_4) 0.0)))
 (let (($x4539 (<= (+ ?x954 A_3 (* (- 1.0) A_0) L_0 ?x936 L_4 A_1 ?x965) 0.0)))
 (let (($x1768 (<= (+ (* (- 1.0) C) L_2 ?x954 ?x1165 A_3) 0.0)))
 (let (($x1656 (not $x1768)))
 (let (($x2845 (<= (+ ?x954 A_3 C L_4 ?x965) 0.0)))
 (let (($x2915 (not $x2845)))
 (let (($x2082 (<= (+ A_2 ?x945 (* (- 1.0) A_0) (* (- 2.0) C) L_0) 0.0)))
 (let (($x2413 (not $x2082)))
 (let (($x2362 (not $x2488)))
 (let (($x2391 (<= (+ ?x936 ?x1740 A_0) 0.0)))
 (let ((?x992 (* (- 1.0) A_0)))
 (let ((?x1743 (* (- 1.0) C)))
 (let (($x2840 (<= (+ ?x1165 L_2 ?x1743 L_1 S_0 ?x954 ?x992 A_3) 0.0)))
 (let (($x837 (= ?x936 ?x927)))
 (let (($x23138 (or $x837 $x2125 (<= (+ L_3 ?x1039 ?x1743 L_1 S_0 ?x963 ?x992 A_4) 0.0) (<= (+ L_3 ?x1039 A_0 ?x927 ?x963 L_1 ?x974 A_4) 0.0))))
 (let (($x11592 (<= (+ ?x936 L_3) 0.0)))
 (let (($x11579 (not $x11591)))
 (let (($x2890 (<= (+ A_2 ?x945 C ?x936 ?x1740 L_3 A_0 ?x1039) 0.0)))
 (let (($x2103 (<= (+ (* 2.0 L_1) ?x974 (* (- 2.0) C) S_0 ?x954 ?x992 A_3) 0.0)))
 (let (($x1770 (<= (+ C A_1 ?x1165) 0.0)))
 (let (($x25699 (or (not (<= (+ C L_2 ?x954 A_1 ?x1165) 0.0)) $x1768 $x1770 $x1778 $x2890)))
 (let (($x6181 (<= (+ A_2 ?x945 ?x1236 A_0 ?x1740 L_4 ?x936 ?x965) 0.0)))
 (let (($x6149 (<= (+ ?x1165 L_2 (* (- 2.0) C) ?x992 S_0 ?x963 L_1 A_4) 0.0)))
 (let (($x1760 (<= (+ (* (- 2.0) C) ?x963 L_2 ?x1165 A_4) 0.0)))
 (let (($x3099 (<= (+ A_2 ?x945 (* (- 1.0) S_5) ?x1236) 0.0)))
 (let (($x2078 (<= (+ ?x936 A_1 (* (- 1.0) S_5) (* 3.0 C)) 0.0)))
 (let (($x2028 (not $x2133)))
 (let (($x13276 (<= (+ (* (- 2.0) L_1) A_1 (* 3.0 C) ?x1740 L_4 A_0 ?x965) 0.0)))
 (let (($x2903 (<= (+ (* (- 1.0) S_5) ?x954 A_3 C) 0.0)))
 (let (($x43921 (or $x2141 (not (<= (+ ?x954 A_3 ?x992 (* (- 3.0) C) L_0) 0.0)) (<= (+ ?x954 A_3 ?x1743 ?x992 L_0 ?x945 L_4 A_2 ?x965) 0.0) $x10914)))
 (let (($x13277 (<= (+ (* 2.0 L_1) ?x974 (* (- 3.0) C) S_0 ?x963 ?x992 A_4) 0.0)))
 (let (($x25586 (or $x1768 $x1778 (<= (+ A_2 ?x945 ?x992 L_0 ?x936 L_3 A_1 ?x1039) 0.0) $x11592)))
 (let (($x43293 (or $x837 $x2141 $x2840 (<= (+ ?x1165 L_2 A_0 ?x927 L_1 ?x954 ?x974 A_3) 0.0))))
 (let (($x6503 (<= (+ (* (- 2.0) A_0) (* (- 3.0) C) L_0 S_0 L_1 ?x954 A_3) 0.0)))
 (let (($x24592 (or $x837 $x2488 (<= (+ ?x1743 (* 2.0 L_1) ?x974 S_0 ?x945 ?x992 A_2) 0.0))))
 (let (($x1772 (<= (+ C ?x936 L_2 A_1 ?x1165) 0.0)))
 (let (($x44891 (or $x2141 $x11591 (<= (+ L_3 ?x1039 C A_0 ?x927 L_2 ?x963 ?x1165 A_4) 0.0))))
 (let (($x6194 (<= (+ A_2 ?x945 C ?x992 L_0 L_4 ?x936 A_1 ?x965) 0.0)))
 (let (($x23982 (or $x2082 $x2141 $x4642 (<= (+ ?x1739 (* 3.0 C) ?x927 ?x1740 ?x936 L_3 ?x1039) 0.0))))
 (let (($x9845 (<= (+ (* (- 2.0) A_0) (* (- 4.0) C) L_0 S_0 ?x963 L_1 A_4) 0.0)))
 (let (($x42754 (or $x837 $x2141 $x6149 (<= (+ ?x1165 L_2 ?x1743 A_0 ?x927 ?x963 L_1 ?x974 A_4) 0.0))))
 (let (($x3066 (<= (+ A_2 ?x945 C (* (- 1.0) S_4)) 0.0)))
 (let (($x2137 (<= (+ ?x936 A_1 ?x1236 L_3 ?x1039) 0.0)))
 (let (($x1120 (<= (+ A_0 (* 3.0 C) ?x927 (* (- 1.0) S_4)) 0.0)))
 (let (($x2925 (<= (+ (* (- 2.0) L_3) A_3 C L_2 L_4 ?x965) 0.0)))
 (let (($x2482 (<= (+ ?x954 A_3 ?x992 (* (- 3.0) C) L_0) 0.0)))
 (let (($x1748 (<= (+ (* (- 2.0) A_0) (* (- 2.0) C) L_0 S_0 L_1 ?x945 A_2) 0.0)))
 (let (($x1724 (<= (+ (* (- 1.0) S_5) A_0 (* 4.0 C) ?x927) 0.0)))
 (let (($x2067 (<= (+ ?x936 A_1 C (* (- 1.0) S_3)) 0.0)))
 (let (($x4638 (not $x4642)))
 (let (($x4630 (<= (+ ?x945 L_4) 0.0)))
 (let (($x43375 (or (<= (+ A_4 ?x963 ?x992 (* (- 4.0) C) L_0) 0.0) $x2925 $x4630 $x4638)))
 (let (($x2030 (<= (+ ?x936 A_1 ?x1236 (* (- 1.0) S_4)) 0.0)))
 (let (($x2336 (or (<= (+ A_0 C ?x927 (* (- 1.0) S_2)) 0.0) (<= (+ ?x936 A_1 (* (- 1.0) S_2)) 0.0))))
 (and (<= ?x945 ?x936) (<= ?x963 ?x954) (<= ?x936 ?x927) (<= ?x954 ?x945) $x2336 (or (not $x1772) $x1120 (not $x2137) $x2030) (or $x1120 $x1768 $x2030 $x3066) (or $x1724 $x2133 $x2137 $x2456 $x2903) (or (= ?x945 ?x936) $x1776 $x2488 $x3471) (or $x2024 $x2067 $x2488) (or (= ?x945 ?x936) $x1770 $x2082) (or $x2125 $x4642) (or $x2082 $x2137 $x4642) (or $x1768 $x1770 $x1778 $x4630 $x4638 $x6181) (or $x1768 $x1778 $x4630 $x6194 (not (= ?x954 ?x936))) (or (= ?x945 ?x936) $x1760) (or (= ?x945 ?x936) $x1768) $x43375 (or $x2133 $x2141 $x2849 $x4630) (or $x2133 $x2141 $x4642) (or $x2067 $x2413 (<= (+ A_2 ?x945 (* (- 1.0) S_3)) 0.0)) (or $x1068 (not $x1782) $x1724 $x2078 $x2903) (or $x2133 $x2488 $x4642) (or $x2482 $x3136 $x4630 $x4638) (or $x837 $x1748 $x2488) (or (= ?x963 ?x954) $x2482 $x2925) (or $x1120 $x2137 (<= (+ ?x954 A_3 (* (- 1.0) S_4)) 0.0) $x3066) $x42754 (or $x837 (<= (+ A_4 ?x963 L_1 ?x974 (* (- 3.0) C)) 0.0) $x9845) $x23982 (or (= ?x945 ?x936) $x2141 $x2413) (or (not $x1770) $x1772 $x2082) (or $x1656 $x2141 $x2413 $x4642) (or (<= (+ A_0 ?x1236 ?x927 (* (- 1.0) S_3)) 0.0) $x2082 $x2141) (or $x1768 $x1778 $x6194 $x10914) (or $x1772 $x2125 $x11591) (or $x1772 $x1778 $x2456 $x2903 $x3099) $x44891 (or (not $x1772) $x2413 $x3471 $x11591) (or $x1068 $x1768 $x2137 $x11592) (or (not $x1760) $x1772 $x2028 $x2082 $x10914) (or $x2028 $x2488 $x3136 $x10914) (or $x1760 $x2845 $x10914) (or $x1768 $x2845 $x10914) (or $x2391 $x2413 $x3534 $x11591) $x24592 (or $x2028 $x2141 $x3136 $x10914) (or $x837 $x2484 $x6503) (or $x2028 $x2082 $x2141 $x9844 $x10914) (or (<= (+ C L_2 ?x954 A_1 ?x1165) 0.0) $x1768 $x1778 $x2890 $x11592) $x43293 $x25586 (or $x1776 $x2028 $x2488 $x10914 $x13276) (or $x837 $x1760 $x1776 $x13277) (or $x2133 $x2141 $x2145 $x4539 $x10914) $x43921 (or $x1068 $x1768 $x2145 $x10914) (or $x1768 $x1772 $x2413 $x6181 $x10914) (or $x1776 $x2078 $x2133 $x2456 $x2903) (or $x1776 $x2133 $x2484 $x10914 $x13276) (or $x1776 $x2028 $x2078 $x2456 $x3099) (or $x837 $x1768 $x1776 $x2840) (or $x1760 $x1776 $x2028 $x2362 $x6181 $x10914) (or $x1656 $x1760 $x2145 $x4539 $x10914) (or $x1776 $x2098 $x2391 $x2890 $x11579 $x11592) (or $x2362 $x2413 $x2890 $x2915 (not $x3471) $x3534 $x10914) (or $x837 $x1768 (not $x4539) $x6149) (or $x1768 $x2362 $x2413 $x6181 $x10914) $x25699 (or $x837 $x2103 $x2484) (or $x2098 $x2391 $x2413 $x2890 $x11579 $x11592) $x23138 (or $x1068 $x1782 $x2028 $x2145 $x2456) (or $x837 $x1768 $x2024 $x2840) (or $x2391 (<= (+ ?x954 A_3 C ?x945 L_1 L_4 ?x965) 0.0) $x10914) (or $x1656 $x2362 $x2413 $x2865 $x2915 $x10914) (or $x1656 $x2145 (not $x3136) $x4539 $x10914) (or $x1714 $x2028 $x2488 $x9844 $x10914) (or $x2024 $x2488 $x3471 $x11591) (or $x2024 $x2098 $x2488 $x4642) $x26770 (or $x2024 $x2488 $x3534 $x11591) (or $x1068 $x1782 $x2145 $x2456 $x2849) (or $x1714 $x2133 $x2484 $x9844 $x10914) (or $x2125 $x2133 (not $x2484) $x2865 $x9844 $x10914) (or (<= (+ ?x1739 ?x1236 ?x927 ?x1740 ?x936 L_2 ?x1165) 0.0) $x2141 $x11591) (<= (+ ?x992 ?x1743 L_0 S_1) 0.0) (<= (+ ?x992 (* (- 2.0) C) L_0 S_2) 0.0) (<= (+ ?x992 (* (- 3.0) C) L_0 S_3) 0.0) (<= (+ ?x992 (* (- 4.0) C) L_0 S_4) 0.0) (<= (+ S_5 ?x992 (* (- 5.0) C) L_0) 0.0) (<= (+ L_1 ?x974 S_1) 0.0) (<= (+ L_1 ?x974 ?x1743 S_2) 0.0) (<= (+ L_1 ?x974 (* (- 2.0) C) S_3) 0.0) (<= (+ L_1 ?x974 (* (- 3.0) C) S_4) 0.0) (<= (+ L_1 ?x974 S_5 (* (- 4.0) C)) 0.0) (<= (+ S_5 L_4 (* (- 1.0) A_5)) 0.0) (<= (+ ?x1165 L_2 S_2) 0.0) (<= (+ L_3 ?x1039 S_3) 0.0) (<= (+ L_3 ?x1039 ?x1743 S_4) 0.0) (<= (+ ?x1165 L_2 ?x1743 S_3) 0.0) (<= (+ ?x1740 S_0) 0.0) (<= (+ ?x965 L_4 S_4) 0.0) (<= (+ S_5 ?x965 L_4 ?x1743) 0.0) (<= (+ S_5 L_3 ?x1039 (* (- 2.0) C)) 0.0) (<= (+ S_5 ?x1165 L_2 (* (- 3.0) C)) 0.0) (<= (+ ?x1165 L_2 (* (- 2.0) C) S_4) 0.0) (<= (+ ?x992 L_0 S_0) 0.0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
