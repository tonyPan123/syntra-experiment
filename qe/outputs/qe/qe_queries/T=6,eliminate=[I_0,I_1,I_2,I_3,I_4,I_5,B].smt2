; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_4 () Real)
(declare-fun C () Real)
(declare-fun A_3 () Real)
(declare-fun L_3 () Real)
(declare-fun S_5 () Real)
(declare-fun S_3 () Real)
(declare-fun A_1 () Real)
(declare-fun L_1 () Real)
(declare-fun S_2 () Real)
(declare-fun L_4 () Real)
(declare-fun A_4 () Real)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(declare-fun S_0 () Real)
(declare-fun S_1 () Real)
(declare-fun L_5 () Real)
(declare-fun A_5 () Real)
(declare-fun L_2 () Real)
(declare-fun A_2 () Real)
(assert
 (let ((?x938 (* (- 1.0) L_4)))
 (let ((?x900 (* (- 1.0) L_5)))
 (let (($x63842 (= ?x900 ?x938)))
 (let (($x14510 (<= (+ (* (- 1.0) L_3) A_3 (* (- 3.0) C) L_0 (* (- 1.0) A_0)) 0.0)))
 (let (($x14435 (not $x14510)))
 (let ((?x929 (* (- 1.0) L_3)))
 (let ((?x1184 (* (- 1.0) A_5)))
 (let ((?x1714 (* (- 1.0) S_1)))
 (let (($x4860 (<= (+ A_4 ?x938 C A_0 ?x1714 ?x1184 L_5 ?x929) 0.0)))
 (let ((?x1206 (* 3.0 C)))
 (let ((?x920 (* (- 1.0) L_2)))
 (let (($x4283 (<= (+ A_2 ?x920 ?x1206 ?x1714 ?x1184 L_5 ?x938 A_0) 0.0)))
 (let (($x2234 (<= (+ A_2 ?x920 C L_3 (* (- 1.0) A_3)) 0.0)))
 (let (($x2171 (not $x2234)))
 (let (($x1755 (<= (+ C (* (- 1.0) L_1) L_2 A_1 (* (- 1.0) A_2)) 0.0)))
 (let (($x1739 (<= (+ (* (- 3.0) C) A_5 ?x900 L_2 (* (- 1.0) A_2)) 0.0)))
 (let ((?x1138 (* (- 1.0) A_3)))
 (let ((?x911 (* (- 1.0) L_1)))
 (let ((?x980 (* (- 1.0) A_0)))
 (let (($x5680 (<= (+ A_2 ?x920 ?x980 L_0 ?x911 L_3 A_1 ?x1138) 0.0)))
 (let (($x4638 (<= (+ A_4 ?x938 ?x980 L_0 ?x1184 L_5 ?x911 A_1) 0.0)))
 (let (($x2218 (<= (+ (* (- 1.0) C) ?x980 L_0 ?x911 A_1) 0.0)))
 (let (($x2228 (<= (+ (* (- 2.0) C) A_5 ?x900 L_3 ?x1138) 0.0)))
 (let (($x2098 (not $x2228)))
 (let (($x1763 (<= (+ A_0 ?x1206 (* (- 1.0) L_0) L_3 ?x1138) 0.0)))
 (let (($x4957 (<= (+ (* 4.0 C) ?x1184 L_5 ?x911 A_1) 0.0)))
 (let (($x1751 (<= (+ (* (- 1.0) C) L_2 ?x929 (* (- 1.0) A_2) A_3) 0.0)))
 (let (($x1648 (not $x1751)))
 (let (($x954 (not $x1763)))
 (let (($x36537 (<= (+ ?x929 A_3 C ?x980 L_0 ?x1184 A_1) 0.0)))
 (let (($x1765 (<= (+ A_0 (* 4.0 C) (* (- 1.0) L_0) L_4 (* (- 1.0) A_4)) 0.0)))
 (let (($x978 (not $x1765)))
 (let ((?x902 (* (- 1.0) L_0)))
 (let ((?x1197 (* 5.0 C)))
 (let ((?x1713 (* 2.0 A_0)))
 (let (($x5059 (<= (+ ?x1713 ?x1197 ?x902 ?x1714 ?x1184 L_5 ?x938) 0.0)))
 (let (($x3657 (<= (+ (* 2.0 C) ?x911 L_3 A_1 ?x1138) 0.0)))
 (let (($x3616 (not $x3657)))
 (let (($x2210 (<= (+ A_2 ?x920 (* (- 2.0) C) ?x980 L_0) 0.0)))
 (let (($x63853 (= ?x900 ?x929)))
 (let (($x4606 (<= (+ A_4 ?x938 C A_0 ?x1714 ?x1184 L_5 ?x911) 0.0)))
 (let (($x4612 (<= (+ A_4 ?x938 (* (- 1.0) C) ?x980 L_0 ?x1184 A_2) 0.0)))
 (let (($x62740 (= ?x938 ?x929)))
 (let (($x3927 (<= (+ ?x1206 ?x911 L_4 A_1 (* (- 1.0) A_4)) 0.0)))
 (let (($x63851 (not $x63842)))
 (let (($x182010 (or $x2210 (<= (+ ?x1206 A_1 (* (- 1.0) A_4)) 0.0) $x14510 $x63851 $x63853)))
 (let (($x4642 (<= (+ A_4 ?x938 (* (- 4.0) C) ?x980 L_0) 0.0)))
 (let (($x4558 (not $x4642)))
 (let (($x4632 (<= (+ A_4 ?x938 (* (- 2.0) C) ?x980 L_0 ?x1184 L_5 ?x929 A_3) 0.0)))
 (let (($x2230 (<= (+ (* (- 1.0) C) A_5 ?x900 L_4 (* (- 1.0) A_4)) 0.0)))
 (let (($x18307 (<= (+ ?x929 A_3 C ?x911 ?x1714 L_4 A_0 (* (- 1.0) A_4)) 0.0)))
 (let (($x3914 (<= (+ ?x1713 (* 4.0 C) ?x902 ?x1714 ?x911 L_4 (* (- 1.0) A_4)) 0.0)))
 (let ((?x1050 (* (- 1.0) A_1)))
 (let ((?x1710 (* (- 2.0) C)))
 (let ((?x3360 (+ ?x1710 L_1 ?x929 ?x1050 A_3)))
 (let (($x3390 (<= ?x3360 0.0)))
 (let (($x3344 (not $x3390)))
 (let (($x2236 (<= (+ A_2 ?x920 (* 2.0 C) L_4 (* (- 1.0) A_4)) 0.0)))
 (let (($x2125 (not $x2236)))
 (let (($x2512 (<= (+ (* (- 1.0) C) ?x938 L_3 ?x1138 A_4) 0.0)))
 (let (($x2449 (not $x2512)))
 (let (($x1746 (<= (+ ?x1710 L_2 ?x938 (* (- 1.0) A_2) A_4) 0.0)))
 (let (($x1567 (not $x1746)))
 (let (($x181483 (or $x1567 $x1763 $x2218 (<= (+ ?x929 A_3 ?x980 L_0 A_1 (* (- 1.0) A_4)) 0.0) $x63851 $x63853)))
 (let ((?x1213 (* (- 1.0) A_4)))
 (let ((?x1717 (* (- 1.0) C)))
 (let (($x28328 (<= (+ ?x929 A_3 ?x1717 ?x980 L_0 ?x920 L_4 A_2 ?x1213) 0.0)))
 (let (($x63855 (= ?x920 ?x911)))
 (let (($x35313 (<= (+ L_3 ?x1138 C A_0 ?x902 L_2 ?x938 (* (- 1.0) A_2) A_4) 0.0)))
 (let (($x15089 (<= (+ ?x929 A_3 (* 2.0 C) ?x911 ?x1714 ?x1184 L_5 A_0) 0.0)))
 (let (($x4318 (<= (+ A_2 ?x920 (* 2.0 C) ?x911 ?x1714 L_4 A_0 ?x1213) 0.0)))
 (let (($x4012 (<= (+ ?x1713 (* 4.0 C) ?x902 ?x1714 ?x929 L_4 ?x1213) 0.0)))
 (let (($x1759 (<= (+ A_0 C ?x902 L_1 ?x1050) 0.0)))
 (let (($x1018 (not $x1759)))
 (let (($x181081 (or $x1018 $x2171 (<= (+ ?x1713 C ?x902 ?x1714 L_1 ?x929 ?x1050) 0.0) $x4012 $x4318 $x62740)))
 (let (($x6694 (<= (+ (* 2.0 C) (* (- 2.0) L_1) A_1 ?x1714 L_3 A_0 ?x1138) 0.0)))
 (let (($x2856 (<= (+ A_2 ?x920 C ?x1714 A_0 ?x1138) 0.0)))
 (let (($x181079 (or $x1018 $x2171 (<= (+ ?x1713 C ?x902 ?x1714 ?x938 L_1 ?x1050) 0.0) $x3914 $x4318 $x62740)))
 (let (($x14482 (<= (+ (* (- 1.0) S_5) ?x929 A_3 C) 0.0)))
 (let (($x7448 (<= (+ ?x911 A_1 (* (- 1.0) S_5) ?x1206) 0.0)))
 (let (($x2106 (<= (+ A_2 ?x920 (* (- 1.0) S_5) (* 2.0 C)) 0.0)))
 (let (($x1698 (<= (+ (* (- 1.0) S_5) A_0 (* 4.0 C) ?x902) 0.0)))
 (let (($x5558 (<= (+ (* (- 1.0) A_2) L_2 ?x1710 A_0 ?x902 A_5 ?x900 L_1 ?x1050) 0.0)))
 (let (($x4593 (<= (+ (* (- 1.0) S_5) A_4 ?x938) 0.0)))
 (let (($x3322 (<= (+ (* (- 3.0) C) ?x938 L_1 ?x1050 A_4) 0.0)))
 (let (($x3330 (not $x3322)))
 (let (($x3921 (<= (+ C ?x929 L_4 A_3 ?x1213) 0.0)))
 (let (($x2182 (not $x2218)))
 (let (($x2232 (<= (+ A_2 ?x920 ?x1717 L_1 ?x1050) 0.0)))
 (let (($x2175 (not $x2232)))
 (let (($x5278 (<= (+ ?x1213 L_4 A_0 ?x902 A_5 ?x900 L_1 ?x1050) 0.0)))
 (let (($x2188 (<= (+ A_0 ?x1714 ?x911) 0.0)))
 (let (($x82663 (or $x2188 $x2449 (<= (+ L_4 C A_2 ?x920 ?x900 L_3 ?x1138) 0.0) $x62740)))
 (let (($x3863 (<= (+ (* 2.0 C) ?x929 L_4 A_2 ?x1213) 0.0)))
 (let (($x178396 (or $x1018 (not (<= (+ A_2 C ?x900 L_3 ?x1138) 0.0)) (<= (+ ?x1713 C ?x902 ?x900 ?x1714 L_1 ?x1050) 0.0) $x3863 $x62740)))
 (let (($x4285 (<= (+ A_2 ?x920 (* 2.0 C) L_1 ?x900 L_4 ?x1213) 0.0)))
 (let (($x14503 (<= (+ L_3 ?x1138 ?x911 A_1 L_2 ?x938 (* (- 1.0) A_2) A_4) 0.0)))
 (let (($x52225 (<= (+ L_3 ?x1138 A_0 ?x902 L_1 ?x938 ?x1050 A_4) 0.0)))
 (let (($x63514 (= ?x911 ?x902)))
 (let (($x18308 (<= (+ L_3 ?x1138 ?x1717 L_1 S_0 ?x938 ?x980 A_4) 0.0)))
 (let (($x4410 (<= (+ C ?x1184 L_5 ?x938 A_4) 0.0)))
 (let (($x4357 (not $x4410)))
 (let (($x15121 (<= (+ ?x929 A_3 (* 2.0 C) ?x1714 ?x1184 L_5 ?x938 A_0) 0.0)))
 (let ((?x1150 (* (- 1.0) A_2)))
 (let ((?x35246 (+ L_3 ?x1138 A_0 ?x902 A_5 ?x900 L_2 ?x1150)))
 (let (($x35271 (<= ?x35246 0.0)))
 (let (($x1716 (<= (+ ?x1713 (* 2.0 C) ?x902 ?x1714 ?x911 L_2 ?x1150) 0.0)))
 (let (($x30701 (<= (+ ?x1213 L_4 C A_0 ?x902 A_5 ?x900 L_2 ?x1150) 0.0)))
 (let (($x14478 (<= (+ ?x929 A_3 (* (- 1.0) S_4)) 0.0)))
 (let (($x1239 (<= (+ A_0 ?x1206 ?x902 (* (- 1.0) S_4)) 0.0)))
 (let (($x7403 (<= (+ (* (- 2.0) L_1) A_1 (* 4.0 C) ?x1714 ?x1184 L_5 A_0) 0.0)))
 (let (($x14497 (<= (+ L_3 ?x1138 ?x1717 ?x911 A_1 A_5 ?x900 L_2 ?x1150) 0.0)))
 (let (($x11887 (<= (+ C (* (- 2.0) L_1) A_1 ?x1714 L_2 A_0 ?x1150) 0.0)))
 (let (($x6744 (<= (+ (* 2.0 C) ?x911 A_1 (* (- 1.0) S_4)) 0.0)))
 (let (($x7143 (<= (+ A_4 ?x938 L_1 ?x1050 ?x1184 L_5 ?x920 A_2) 0.0)))
 (let (($x76756 (or $x2232 $x3657 $x7143 (<= (+ ?x929 A_3 C L_1 ?x1050 ?x1184 L_5 ?x920 A_2) 0.0) $x63842)))
 (let (($x176856 (or $x2232 (<= (+ ?x1213 L_4 ?x911 A_1 A_5 ?x900 L_2 ?x1150) 0.0) $x30701 $x63855)))
 (let (($x31374 (<= (+ A_2 ?x920 C ?x980 L_0 ?x911 L_4 A_1 ?x1213) 0.0)))
 (let (($x28330 (<= (+ ?x929 A_3 ?x980 L_0 ?x911 L_4 A_1 ?x1213) 0.0)))
 (let (($x4608 (<= (+ ?x1213 L_4 ?x1717 ?x980 S_0 A_5 ?x900 L_1) 0.0)))
 (let (($x36622 (<= (+ ?x929 A_3 C ?x980 L_0 ?x1184 L_5 ?x911 A_1) 0.0)))
 (let (($x15090 (<= (+ L_3 ?x1138 ?x1710 L_1 S_0 A_5 ?x900 ?x980) 0.0)))
 (let (($x177119 (or $x2218 $x15090 (<= (+ L_3 ?x1138 ?x1717 A_0 ?x902 A_5 ?x900 L_1 ?x1050) 0.0) $x63514)))
 (let (($x15120 (<= (+ ?x929 A_3 (* 2.0 C) ?x1714 ?x1184 A_0) 0.0)))
 (let (($x1761 (<= (+ A_0 (* 2.0 C) ?x902 L_2 ?x1150) 0.0)))
 (let (($x1203 (not $x1761)))
 (let (($x82457 (or $x954 $x2210 (not (<= (+ (* 4.0 C) ?x1184 L_5 ?x938 A_1) 0.0)) (<= (+ (* 4.0 C) ?x1184 L_5 ?x929 A_1) 0.0) $x63842)))
 (let (($x9258 (<= (+ ?x911 A_1 ?x1206 ?x1714 ?x900 L_4 A_0 ?x1213) 0.0)))
 (let (($x63895 (not $x62740)))
 (let (($x4405 (<= (+ A_2 ?x920 ?x1206 ?x1714 ?x1184 A_0) 0.0)))
 (let (($x63856 (= ?x929 ?x911)))
 (let (($x3802 (<= (+ ?x1713 ?x1206 ?x902 ?x1714 ?x920 L_3 ?x1138) 0.0)))
 (let (($x2462 (<= (+ A_2 ?x920 C ?x911 ?x1714 L_3 A_0 ?x1138) 0.0)))
 (let (($x26470 (<= (+ ?x1213 L_4 (* 2.0 C) A_0 ?x902 A_5 ?x900 L_3 ?x1138) 0.0)))
 (let (($x174380 (or $x2171 (<= (+ ?x1213 L_4 C ?x911 A_1 A_5 ?x900 L_3 ?x1138) 0.0) $x26470 (<= (+ ?x1213 L_4 A_2 ?x920 A_5 ?x900 L_3 ?x1138) 0.0) $x63856)))
 (let (($x29554 (<= (+ ?x1150 L_2 (* (- 3.0) C) L_1 S_0 A_5 ?x900 ?x980) 0.0)))
 (let (($x2927 (<= (+ A_2 (* (- 2.0) L_2) C ?x1714 L_3 A_0 ?x1138) 0.0)))
 (let (($x7010 (<= (+ (* 2.0 C) ?x911 A_1 ?x1714 A_0 ?x1138) 0.0)))
 (let (($x50676 (<= (+ A_2 ?x920 (* 2.0 C) ?x980 L_0 ?x1184 L_5 ?x911 A_1) 0.0)))
 (let (($x80852 (or $x1751 $x1755 $x1761 $x2125 (<= (+ A_2 ?x920 ?x1206 ?x911 ?x1714 ?x1184 L_5 A_0) 0.0) $x63842)))
 (let (($x176593 (or $x1203 $x1751 $x2125 (<= (+ (* 4.0 C) ?x1184 L_5 ?x920 A_1) 0.0) $x63842)))
 (let (($x2511 (<= (+ A_2 C ?x938 L_3 ?x1138) 0.0)))
 (let (($x77898 (or $x2171 $x5680 (<= (+ L_4 (* 2.0 C) ?x911 A_1 ?x900 L_3 ?x1138) 0.0) $x63856)))
 (let (($x89301 (or $x1751 $x1765 $x2236 (<= (+ A_4 ?x938 ?x980 L_0 ?x1184 A_1) 0.0) $x63853)))
 (let (($x63852 (= ?x929 ?x920)))
 (let (($x80962 (or $x2210 $x2218 (<= (+ ?x1713 ?x1206 ?x902 ?x1714 ?x911 L_3 ?x1138) 0.0) $x63852)))
 (let (($x3650 (<= (+ (* (- 2.0) A_0) (* (- 3.0) C) L_0 S_0 L_1 ?x929 A_3) 0.0)))
 (let (($x79373 (or $x1751 (<= (+ (* 2.0 C) ?x920 L_3 A_1 ?x1138) 0.0) $x5680 $x63856)))
 (let (($x8770 (<= (+ ?x911 A_1 ?x1206 ?x1714 ?x929 L_4 A_0 ?x1213) 0.0)))
 (let (($x4319 (<= (+ ?x1150 L_2 ?x1710 L_1 S_0 ?x938 ?x980 A_4) 0.0)))
 (let (($x71778 (or $x2218 $x4319 (<= (+ ?x1150 L_2 ?x1717 A_0 ?x902 L_1 ?x938 ?x1050 A_4) 0.0) $x63514)))
 (let (($x3915 (<= (+ (* (- 2.0) A_0) (* (- 4.0) C) L_0 S_0 L_1 ?x938 A_4) 0.0)))
 (let (($x4346 (<= (+ (* 2.0 C) ?x1184 L_5 ?x938 A_3) 0.0)))
 (let (($x84485 (or $x1751 $x4346 (<= (+ A_4 ?x938 ?x1150 L_2 ?x1184 L_5 ?x929 A_3) 0.0) $x63842)))
 (let (($x4636 (<= (+ A_4 ?x938 ?x1717 ?x980 L_0 ?x1184 L_5 ?x920 A_2) 0.0)))
 (let (($x4418 (<= (+ (* 2.0 C) ?x1184 L_5 ?x929 A_3) 0.0)))
 (let (($x4624 (<= (+ A_4 (* (- 2.0) L_4) ?x1710 ?x980 L_0 ?x1184 L_5 A_3) 0.0)))
 (let (($x96563 (or (<= (+ (* (- 2.0) A_0) ?x1710 L_0 S_0 L_1 ?x920 A_2) 0.0) $x2232 $x63514)))
 (let (($x2446 (<= (+ ?x1150 L_2 ?x1717 L_1 S_0 ?x929 ?x980 A_3) 0.0)))
 (let (($x77119 (or $x2218 $x2446 (<= (+ ?x1150 L_2 A_0 ?x902 L_1 ?x929 ?x1050 A_3) 0.0) $x63514)))
 (let (($x4952 (<= (+ (* (- 2.0) A_0) (* (- 5.0) C) L_0 S_0 A_5 ?x900 L_1) 0.0)))
 (let (($x81729 (or $x2232 (<= (+ ?x1717 (* 2.0 L_1) ?x1050 S_0 ?x920 ?x980 A_2) 0.0) $x63514)))
 (let (($x174766 (or $x2232 $x3927 $x7143 (<= (+ (* (- 2.0) L_3) A_3 C L_2 L_4 ?x1213) 0.0) $x63853)))
 (let (($x7003 (<= (+ (* 2.0 C) ?x911 A_1 ?x1714 ?x920 L_3 A_0 ?x1138) 0.0)))
 (let (($x8022 (<= (+ (* 2.0 L_1) ?x1050 (* (- 3.0) C) S_0 ?x938 ?x980 A_4) 0.0)))
 (let (($x183948 (or $x2512 $x3657 (<= (+ ?x929 A_3 L_1 ?x1050 ?x920 L_4 A_2 ?x1213) 0.0) $x62740)))
 (let (($x7288 (<= (+ (* 2.0 L_1) ?x1050 (* (- 4.0) C) S_0 A_5 ?x900 ?x980) 0.0)))
 (let (($x76965 (or $x2232 $x4346 (<= (+ A_4 ?x938 ?x1717 L_1 ?x1050 ?x1184 L_5 ?x929 A_3) 0.0) $x63842)))
 (let (($x6914 (or (<= (+ A_0 (* 2.0 C) ?x902 (* (- 1.0) S_3)) 0.0) (<= (+ A_2 ?x920 (* (- 1.0) S_3)) 0.0) (<= (+ C ?x911 A_1 (* (- 1.0) S_3)) 0.0))))
 (let (($x82236 (or $x1751 $x1759 (<= (+ ?x1710 (* 2.0 L_1) ?x1050 S_0 ?x929 ?x980 A_3) 0.0) $x63514)))
 (let (($x1777 (or (<= (+ A_0 C ?x902 (* (- 1.0) S_2)) 0.0) (<= (+ ?x911 A_1 (* (- 1.0) S_2)) 0.0))))
 (and (<= ?x938 ?x929) (<= ?x920 ?x911) (<= ?x900 ?x938) (<= ?x929 ?x920) (<= ?x911 ?x902) $x1777 (or $x2512 $x63852) (or $x1755 $x2210 $x63855) (or $x2210 (= ?x3360 0.0) $x3344 $x63852) (or $x1751 $x1755 $x1761 $x2856 $x63856) (or $x1751 $x1759 $x2446 $x63514) $x82236 $x6914 $x76965 (or (not $x1739) $x1751 (not $x3921) $x63842) (or $x2232 (<= (+ C ?x900 L_4 A_3 ?x1213) 0.0) $x3927 $x7143 $x63853) (or $x1759 $x2232 $x11887 $x63855) (or $x2230 $x62740) (or $x3322 $x3390 (<= (+ A_2 ?x1206 ?x1184 L_5 ?x938) 0.0) $x63842) (or $x3390 $x7288 $x63514) (or $x1739 $x63855) (or $x3322 $x3616 (<= (+ A_2 ?x1206 ?x1184 L_5 ?x938) 0.0) $x63842) (or $x1759 $x2232 $x3330 $x4593 $x14482) (or $x1746 $x4410 $x63842) $x183948 (or $x2232 $x8022 $x63514) (or $x3390 $x3921 $x62740) (or $x3322 (<= (+ C ?x1184 A_4) 0.0) $x63842) (or $x2232 $x4410 $x63842) (or $x3390 $x3863 $x62740) (or $x1759 $x2232 $x3390 $x9258 $x63851 $x63853) (or $x1759 $x2232 $x7003 $x63852) (or $x3390 (<= (+ A_2 ?x1206 ?x1184) 0.0) $x7143 $x63842) (or $x3390 (<= (+ A_2 ?x1206 ?x1184 L_5 ?x938) 0.0) $x7143 $x63842) (or $x1759 $x2125 $x2232 $x3390 $x7403 $x63842) (or $x1648 $x1746 $x1759 $x3616 $x7403 $x63842) (or $x1759 $x2125 $x2232 $x3616 $x7403 $x63842) (or $x2232 $x4418 $x7143 $x63842) (or $x2512 $x3616 $x3863 $x62740) $x174766 (or $x2232 $x2449 $x3344 $x7143 $x63853) (or $x1759 $x2232 $x4606 $x7403 $x15089 $x63842) $x81729 (or (<= (+ (* (- 4.0) C) A_5 ?x900 L_1 ?x1050) 0.0) $x4952 $x63514) (or $x954 $x1648 (not $x2230) $x2218 $x3914 $x63853) (or $x1759 $x2236 $x3921 $x3927 $x4593) (or $x1759 $x2175 $x2230 $x63855) (or $x2230 $x2234 $x63852) $x77119 (or $x1751 $x2182 $x2446 $x63514) $x96563 (or $x1763 $x2512 (not $x35271) (= ?x35246 0.0) (not (= ?x938 ?x920)) $x63853) (or $x954 $x2512 (<= (+ A_2 ?x1206 ?x1184 L_5 ?x938) 0.0) $x63842) (or $x1765 $x2232 $x4624 $x63842) (or $x1765 $x2232 $x3921 $x4612 $x63853) (or $x1765 $x2232 $x3921 $x4636 $x63853) (or $x978 $x3390 $x4418 $x63853 $x63895) (or (<= (+ A_2 ?x1206 ?x1184) 0.0) $x4642 $x14510 $x63842) (or (<= (+ A_2 ?x1206 ?x1184 L_5 ?x929) 0.0) $x4642 $x14510 $x63842) (or $x2232 $x2449 $x4636 $x14435 (not (= ?x938 ?x920)) $x63853) (or $x2232 $x3921 $x4558 $x4636 $x63853) (or (not $x1755) $x1751 $x1759 $x2125 $x7403 $x63842) (or $x2228 $x63852) $x84485 (or $x2232 $x3650 $x63514) (or $x1759 $x2232 $x3390 $x8770 $x62740) (or $x2182 $x2232 $x7010 $x63852) (or $x2232 $x2234 $x63852) (or $x3322 $x3915 $x63514) (or $x1751 $x1755 $x1761 $x4318 $x62740) (or $x1751 $x1761 $x31374 $x62740) $x71778 (or $x1751 $x2182 $x4319 $x63514) (or $x2232 $x3802 $x6694 $x63852) (or $x1751 $x1759 $x2175 $x2927 $x63856) (or $x1751 $x1759 $x4318 $x8770 $x62740) $x79373 (or $x1765 $x2230 $x4632 $x63853) (or (not $x1755) $x1751 $x3650 $x63514) (or (<= (+ ?x1710 ?x900 L_1 ?x1050 A_3) 0.0) $x3650 $x63514) (or $x1751 (not $x2230) $x2210 $x2218 $x3914 $x63853) $x80962 (or $x1239 (<= (+ A_2 ?x920 C (* (- 1.0) S_4)) 0.0) $x2171 $x6744) (or $x1755 $x1761 $x2171 $x2927 $x63856) $x89301 (or $x1751 $x1765 $x2236 $x4638 $x63853) $x77898 (or $x1751 $x3921 $x62740) (or $x1746 $x2511 $x3657 $x14435 $x15089 $x63842) (or $x1746 $x63855) (or $x1759 $x2228 $x14503 $x63855) (or $x1759 $x2512 $x18308 $x63514) (or $x2188 $x2234 $x63852) (or $x1759 $x2175 $x2188 $x63855) (or $x1759 $x2512 $x14503 $x63855) (or $x2512 $x4418 $x63842) (or $x2512 $x4410 $x63842) (or (not $x1739) $x1759 $x2125 $x3657 $x18307 $x63842) (or $x1759 $x2511 $x2512 $x3657 $x15089 $x63842) (or $x1203 $x1751 $x1755 $x2125 $x5059 $x63842) $x176593 (or $x1567 $x1751 $x4558 $x4638 $x63853) (or $x1751 (<= (+ ?x1206 ?x929 L_4 A_1 ?x1213) 0.0) $x31374 $x62740) (or $x2218 $x5558 $x29554 $x63514) (or $x1751 $x1755 $x1761 $x2125 $x4405 $x63853 $x63895) $x80852 (or $x1751 $x1761 $x2125 $x50676 $x63842) (or $x1755 $x2188 $x4405 $x4606 $x14435 $x15089 $x63853 $x63895) (or $x1755 $x1759 $x2188 $x2449 $x4318 $x63851 $x63853) (or $x1759 $x2188 $x2234 $x3657 $x18307 $x62740) (or $x2188 $x3921 $x62740) (or $x2188 $x4410 $x63842) (or (not $x1739) $x2125 $x2171 $x2175 $x2188 $x14435 $x63842) (or $x1759 $x2125 $x2171 $x3344 $x4318 $x62740) (or $x2188 $x2236 $x3657 $x4606 $x14435 $x15089 $x63842) (or (not $x2230) $x2188 $x3921 $x63853) (or $x1759 $x2171 $x2462 $x7010 $x63856) (or $x1759 $x2175 $x2188 $x2927 $x63856) (or $x1739 $x1759 $x2236 $x3616 $x3927 $x4606 $x63853) (or $x1759 $x2098 $x2230 $x2236 $x3927 $x4606 $x63853) (or $x1759 $x2230 $x4608 $x63514) (or (not $x1755) $x1739 $x1759 $x2125 $x3616 $x7403 $x63842) (or $x1751 $x63855) (or $x1751 $x5278 $x29554 $x63514) $x174380 (or $x1751 $x1765 $x2236 $x3927 $x4606 $x63853) (or $x1018 $x2171 $x2462 $x3802 $x63856) (or $x978 $x1751 $x4405 $x5059 $x7403 $x63853 $x63895) (or $x1751 $x4283 $x4860 $x5059 $x7403 $x63842) (or $x1751 $x3914 $x4318 $x9258 $x63851 $x63853) (or $x1751 $x2175 $x4012 $x4318 $x62740) (or $x2218 $x4608 $x5278 $x63514) (or $x1763 $x2210 $x2218 $x15120 $x62740 $x63842) (or $x1567 $x1763 $x2512 $x28330 $x62740) (or $x1648 $x1746 $x1763 $x36622 $x63842) (or $x1648 $x1739 $x1763 $x2449 $x4638 $x63853) (or $x1567 $x1698 $x1755 $x4593 $x14482) (or $x978 $x2210 (<= (+ (* 4.0 C) ?x1184 A_1) 0.0) $x36537 $x63842) (or $x2210 $x4410 $x63853 $x63895) (or $x2210 $x4642 $x4957 $x14510 $x63842) (or $x1755 $x2210 $x4642 $x5059 $x14510 $x63842) (or $x1567 $x1755 $x14510 $x62740) (or $x1765 $x2210 $x3921 $x4638 $x63853) (or $x1755 $x1765 $x2210 $x3921 $x4606 $x63853) (or $x978 $x1755 $x2210 $x3921 $x5059 $x63853) (or $x954 $x1567 $x1755 $x62740) $x82457 (or $x954 $x2125 $x2210 $x4957 $x63842) (or $x1755 $x2228 $x63855) (or $x1203 $x1755 $x63855) (or $x2218 $x4410 $x63842) (or $x1761 $x2218 $x63855) (or $x1755 $x2188 $x63855) (or $x1746 $x1755 $x1763 $x2234 $x4357 $x15089 $x62740) (or $x1648 $x1746 $x1755 $x1763 $x15120 $x63842) (or $x2218 $x2234 $x63852) (or (not $x2230) $x2234 $x2512 $x14435 $x28330 $x63853) (or $x1755 $x2234 $x2512 $x14435 $x15120 $x63842) (or $x1755 $x2234 $x2512 $x14435 $x15121 $x63842) (or $x2512 $x15090 $x52225 $x63514) (or $x1567 $x1755 $x2188 $x4357 $x15089 $x62740) (or $x1755 $x2230 $x63855) $x177119 (or $x2512 $x4285 $x18307 $x63851 $x63853) (or $x2234 $x2512 $x14435 $x36622 $x63842) (or $x2230 $x2234 $x2449 $x4638 $x14435 $x63853) (or $x1018 $x4608 $x5278 $x63514) (or $x2218 $x2236 $x3921 $x4638 $x14435 $x63853) (or $x1746 $x1763 $x28330 $x31374 $x62740) (or $x1746 $x1755 $x1763 $x2171 $x4318 $x62740) (or $x1746 $x2171 $x14435 $x31374 $x62740) (or $x1763 $x2171 $x5680 $x63856) (or $x2182 $x2232 $x14503 $x63855) (or $x2182 $x2232 $x14497 $x63855) (or $x2125 $x2232 $x3657 $x14435 $x15089 $x63842) $x176856 $x76756 (or $x2182 $x2232 (<= (+ C ?x911 A_1 ?x1714 A_0 ?x1150) 0.0) $x63855) (or $x1698 $x2232 $x3322 $x3390 $x7448) (or $x2182 $x2232 $x3322 $x3390 $x7403 $x63842) (or $x1239 $x2232 $x6744 $x14478) (or $x1698 $x2232 $x2512 $x7448 $x14482) (or $x1018 $x1698 $x2232 $x4593 $x14482) (or $x1716 $x2232 $x11887 $x63855) (or $x1018 $x1716 $x2182 $x2232 $x4606 $x7403 (not $x14497) $x63842) (or $x2182 $x2232 $x4606 $x7403 $x15089 $x63842) (or $x1018 $x2232 $x3914 $x18307 $x63851 $x63853) (or $x1746 $x1755 $x1763 $x4283 $x15089 $x63842) (or $x1239 $x2218 $x2234 $x14478) (or $x1765 $x2218 $x2234 $x3921 $x4606 $x63853) (or $x978 $x2234 $x3921 $x4957 $x63853) (or $x978 $x2218 $x2234 $x3921 $x5059 $x63853) (or $x2218 $x30701 $x63855) (or $x1716 $x2218 $x63855) (or $x1763 $x2234 $x3657 $x14478) (or $x1018 (not $x2210) (<= (+ ?x1713 C ?x902 ?x1714 ?x1050) 0.0) $x63855) (or $x1763 $x2125 $x2218 $x2234 $x15121 $x63842) (or $x2218 $x35271 $x63855) (or $x2218 $x18308 $x52225 $x63514) (or $x1746 $x1763 $x2234 $x3657 $x15121 $x63842) (or $x978 $x1763 $x2234 $x3657 $x4357 $x15089 $x62740) (or $x1763 $x2234 $x3657 $x4593 $x14482) (or $x2512 $x3863 $x18307 $x62740) (or $x1018 $x18308 $x52225 $x63514) (or $x1018 $x2234 $x4558 $x15089 $x52225 $x63842) (or $x2182 $x2512 $x14503 $x63855) (or $x2188 $x2449 $x4285 $x63851 $x63853) $x178396 (or $x1567 $x1755 $x2188 $x2449 $x62740) $x82663 (or $x2175 $x2230 $x5278 $x63855) (or $x1739 $x1763 $x2171 $x2175 $x4283 $x4860 $x63842) (or $x1018 $x1765 $x2236 $x3921 $x4593) (or $x1739 $x2182 $x2236 $x3921 $x3927 $x4606 $x63853) (or $x1698 $x2106 $x3330 $x4593 $x14482) (or $x978 $x1018 $x1648 $x3616 $x5059 $x5558 $x63842) (or $x2098 $x2182 $x2230 $x2236 $x3927 $x4606 $x63853) (or $x1698 $x1746 $x2106 $x7448 $x14482) $x181079 (or $x954 $x2856 $x4558 $x6694 $x62740) $x181081 (or $x2125 $x2218 $x2234 $x14435 $x15089 $x63842) (or $x2218 $x2234 $x4642 $x5059 $x14510 $x63842) (or $x2218 $x35313 $x63855) (or (not $x2230) $x2218 $x14435 $x28328 $x63853) (or $x2218 $x2236 $x28328 $x63851 $x63853) $x181483 (or $x1567 $x1763 $x2218 $x2449 $x62740) (or $x2125 $x2234 $x3344 $x3914 $x18307 $x63851 $x63853) (or $x2210 $x2218 $x3616 $x4642 $x5059 $x63842) (or $x978 $x2230 (<= (+ (* 2.0 C) ?x1184 A_3) 0.0) $x63853) (or $x2230 $x4558 $x4632 $x63853) (or $x2218 $x3616 $x4558 $x62740) $x182010 (or $x2210 $x3927 $x14510 $x62740) (or $x2218 $x3616 $x4612 $x4957 $x63842) (or $x2218 $x3616 $x4638 $x4957 $x63842) (or $x1765 $x2210 $x2218 $x3616 $x4606 $x63853) (or $x978 $x2210 $x2218 $x3616 $x5059 $x63842) (or $x978 $x2098 $x4957 $x5680 $x63842) (or $x1648 $x1739 $x4638 $x4957 $x36537 $x63842) (or $x954 $x1648 $x1755 $x4638 $x4957 $x63842) (or $x1763 $x2098 $x2218 $x4638 $x5680 $x63842) (or $x1739 $x1755 $x2171 $x4283 $x4860 $x14435 $x63842) (<= (+ ?x980 ?x1717 L_0 S_1) 0.0) (<= (+ ?x980 (* (- 4.0) C) L_0 S_4) 0.0) (<= (+ S_5 ?x980 (* (- 5.0) C) L_0) 0.0) (<= (+ ?x1150 L_2 S_2) 0.0) (<= (+ ?x1150 L_2 ?x1717 S_3) 0.0) (<= (+ ?x1150 L_2 ?x1710 S_4) 0.0) (<= (+ L_1 ?x1050 S_1) 0.0) (<= (+ ?x1150 L_2 S_5 (* (- 3.0) C)) 0.0) (<= (+ S_5 ?x1184 L_5) 0.0) (<= (+ ?x1714 S_0) 0.0) (<= (+ ?x980 ?x1710 L_0 S_2) 0.0) (<= (+ ?x980 (* (- 3.0) C) L_0 S_3) 0.0) (<= (+ S_0 L_0 ?x980) 0.0) (<= (+ ?x1213 L_4 S_4) 0.0) (<= (+ S_5 ?x1213 L_4 ?x1717) 0.0) (<= (+ ?x1710 L_1 ?x1050 S_3) 0.0) (<= (+ ?x1717 L_1 ?x1050 S_2) 0.0) (<= (+ L_1 ?x1050 S_5 (* (- 4.0) C)) 0.0) (<= (+ L_1 ?x1050 (* (- 3.0) C) S_4) 0.0) (<= (+ L_3 ?x1138 S_3) 0.0) (<= (+ S_5 L_3 ?x1138 ?x1710) 0.0) (<= (+ L_3 ?x1138 ?x1717 S_4) 0.0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
