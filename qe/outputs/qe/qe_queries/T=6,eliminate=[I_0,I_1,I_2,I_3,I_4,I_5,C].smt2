; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_3 () Real)
(declare-fun S_4 () Real)
(declare-fun A_3 () Real)
(declare-fun B () Real)
(declare-fun L_3 () Real)
(declare-fun S_1 () Real)
(declare-fun S_2 () Real)
(declare-fun S_5 () Real)
(declare-fun A_1 () Real)
(declare-fun L_1 () Real)
(declare-fun A_4 () Real)
(declare-fun L_4 () Real)
(declare-fun S_0 () Real)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(declare-fun L_5 () Real)
(declare-fun A_5 () Real)
(declare-fun L_2 () Real)
(declare-fun A_2 () Real)
(assert
 (let (($x13806 (<= (+ (* (- 1.0) S_4) (* (- 1.0) L_3) (* (- 1.0) B) A_3) 0.0)))
 (let (($x3507 (<= (+ (* (- 1.0) S_2) (* (- 1.0) B) (* (- 1.0) L_1) A_1) 0.0)))
 (let (($x2987 (<= (+ (* (- 1.0) S_5) (* (- 1.0) B) (* (- 1.0) L_4) A_4) 0.0)))
 (let (($x1767 (<= (+ (* (- 1.0) S_3) (* (- 1.0) B) (* (- 1.0) L_2) A_2) 0.0)))
 (let (($x1781 (<= (+ A_0 (* (- 1.0) S_1) (* (- 1.0) B) (* (- 1.0) L_1)) 0.0)))
 (let (($x1833 (>= B 0.0)))
 (let ((?x954 (* (- 1.0) L_0)))
 (let ((?x963 (* (- 1.0) L_1)))
 (let (($x415330 (= ?x963 ?x954)))
 (let ((?x2720 (* (- 3.0) A_1)))
 (let ((?x2721 (* 3.0 L_1)))
 (let ((?x1769 (* 3.0 B)))
 (let ((?x1663 (* (- 3.0) L_0)))
 (let ((?x1667 (* 3.0 A_0)))
 (let ((?x1095 (* (- 1.0) A_2)))
 (let (($x2271 (= B 0.0)))
 (let (($x1786 (<= (+ (* (- 1.0) A_0) S_0 B L_1) 0.0)))
 (let (($x1347183 (or $x1786 $x2271 (<= (+ ?x1095 L_2 S_5 ?x1667 ?x1663 ?x1769 ?x2721 ?x2720) 0.0) $x415330)))
 (let ((?x992 (* (- 1.0) A_1)))
 (let ((?x1147 (* (- 1.0) A_4)))
 (let (($x515017 (or $x1786 $x2271 (<= (+ S_5 ?x1147 L_4 A_0 ?x954 B L_1 ?x992) 0.0) $x415330)))
 (let ((?x981 (* (- 1.0) L_3)))
 (let ((?x952 (* (- 1.0) L_5)))
 (let (($x418124 (= ?x952 ?x981)))
 (let ((?x1844 (* 2.0 L_5)))
 (let ((?x1843 (* (- 2.0) A_5)))
 (let ((?x1760 (* 2.0 B)))
 (let ((?x45703 (* 3.0 S_4)))
 (let (($x2991 (<= (+ S_4 B L_4 ?x1147) 0.0)))
 (let (($x418830 (not (= (* (- 1.0) L_4) ?x963))))
 (let ((?x3194 (* 5.0 A_1)))
 (let ((?x983 (* (- 1.0) A_5)))
 (let ((?x5292 (* (- 4.0) B)))
 (let ((?x93134 (* 4.0 L_0)))
 (let ((?x93053 (* (- 4.0) A_0)))
 (let (($x147952 (<= (+ ?x93053 ?x93134 ?x5292 ?x983 L_5 (* (- 5.0) L_1) ?x3194) 0.0)))
 (let ((?x2679 (* 3.0 A_1)))
 (let ((?x2678 (* (- 3.0) L_1)))
 (let ((?x1750 (* (- 2.0) B)))
 (let ((?x1841 (* 3.0 L_0)))
 (let ((?x1840 (* (- 3.0) A_0)))
 (let ((?x972 (* (- 1.0) L_2)))
 (let (($x75237 (<= (+ A_2 ?x972 ?x1840 ?x1841 ?x1750 ?x983 L_5 ?x2678 ?x2679) 0.0)))
 (let ((?x1197 (* (- 1.0) A_3)))
 (let ((?x1810 (* (- 2.0) L_4)))
 (let ((?x3002 (* 2.0 A_4)))
 (let (($x39709 (<= (+ ?x3002 ?x1810 L_3 ?x1197 B ?x983 L_5) 0.0)))
 (let ((?x1771 (* (- 3.0) A_2)))
 (let ((?x1003 (* (- 1.0) B)))
 (let ((?x1770 (* 3.0 L_2)))
 (let ((?x990 (* (- 1.0) L_4)))
 (let ((?x1799 (* 2.0 A_1)))
 (let ((?x1824 (* (- 2.0) L_1)))
 (let (($x39115 (<= (+ ?x1824 ?x1799 ?x990 ?x1770 ?x1003 ?x1771 A_4) 0.0)))
 (let ((?x1787 (* 2.0 A_5)))
 (let ((?x2993 (* (- 3.0) A_4)))
 (let ((?x2900 (* 3.0 L_4)))
 (let ((?x1788 (* (- 2.0) L_5)))
 (let (($x29912 (<= (+ A_2 ?x972 ?x1788 ?x2900 B ?x2993 ?x1787) 0.0)))
 (let ((?x3590 (* 2.0 L_0)))
 (let ((?x3589 (* (- 2.0) A_0)))
 (let (($x3942 (<= (+ ?x981 A_3 ?x3589 ?x3590 ?x1003 ?x983 L_5 ?x1824 ?x1799) 0.0)))
 (let ((?x2495 (* (- 2.0) A_4)))
 (let ((?x1977 (* 2.0 L_4)))
 (let ((?x2997 (* 3.0 A_3)))
 (let ((?x2996 (* (- 3.0) L_3)))
 (let (($x2999 (<= (+ ?x2996 ?x2997 L_1 ?x992 ?x1760 ?x1977 ?x2495) 0.0)))
 (let (($x417061 (= ?x952 ?x990)))
 (let (($x74352 (<= (+ A_2 ?x972 (* (- 1.0) A_0) L_0 ?x1003 ?x963 L_3 A_1 ?x1197) 0.0)))
 (let ((?x1202 (* (- 1.0) A_0)))
 (let ((?x3948 (* 3.0 L_5)))
 (let ((?x3947 (* (- 3.0) A_5)))
 (let ((?x3015 (* (- 3.0) L_4)))
 (let ((?x3013 (* 3.0 A_4)))
 (let (($x40176 (not (<= (+ ?x3013 ?x3015 ?x981 A_3 ?x1769 ?x3947 ?x3948 L_0 ?x1202) 0.0))))
 (let (($x132141 (<= (+ ?x3589 ?x3590 (* (- 3.0) B) ?x2678 L_3 ?x2679 ?x1197) 0.0)))
 (let (($x39585 (<= (+ ?x3013 ?x3015 ?x1095 L_2 ?x1760 ?x1843 ?x1844) 0.0)))
 (let (($x3950 (<= (+ (* (- 5.0) L_3) (* 5.0 A_3) ?x3589 ?x3590 ?x1769 ?x3947 ?x3948) 0.0)))
 (let ((?x44832 (* (/ 3.0 2.0) A_2)))
 (let ((?x44807 (* (- (/ 3.0 2.0)) L_2)))
 (let ((?x43158 (* (/ 1.0 2.0) L_0)))
 (let ((?x43157 (* (- (/ 1.0 2.0)) A_0)))
 (let (($x69719 (<= (+ ?x43157 ?x43158 ?x44807 L_3 ?x44832 ?x1197) 0.0)))
 (let (($x1322494 (or $x2271 $x3950 $x75237 (<= (+ ?x3002 ?x1810 L_5 L_3 ?x1197 ?x983) 0.0) $x147952 $x418124 $x418830)))
 (let ((?x1830 (* (- 2.0) A_1)))
 (let ((?x1829 (* 2.0 L_1)))
 (let ((?x3561 (* (- 2.0) L_0)))
 (let ((?x3522 (* 2.0 A_0)))
 (let (($x514773 (or $x1786 $x2271 (<= (+ ?x1095 L_2 S_4 ?x3522 ?x3561 ?x1760 ?x1829 ?x1830) 0.0) $x415330)))
 (let ((?x7938 (* 3.0 S_3)))
 (let ((?x1761 (* 2.0 L_2)))
 (let ((?x1762 (* (- 2.0) A_2)))
 (let (($x75179 (<= (+ ?x1762 ?x1761 ?x7938 B ?x983 L_5) 0.0)))
 (let (($x44099 (<= (+ A_4 ?x990 ?x1095 L_2 S_3 B ?x983 L_5) 0.0)))
 (let (($x13794 (<= (+ S_3 L_3 B ?x1197) 0.0)))
 (let (($x413143 (= ?x981 ?x972)))
 (let (($x105777 (<= (+ (* 3.0 S_5) ?x2993 ?x2900 A_0 ?x954 B L_3 ?x1197) 0.0)))
 (let ((?x1835 (* (- 2.0) A_3)))
 (let ((?x1834 (* 2.0 L_3)))
 (let ((?x1756 (* (- 3.0) L_2)))
 (let ((?x1757 (* 3.0 A_2)))
 (let (($x16747 (<= (+ ?x1757 ?x1756 ?x1834 L_0 ?x1760 ?x1202 ?x1835) 0.0)))
 (let (($x13842 (<= (+ ?x2678 ?x2679 ?x3590 L_3 B ?x3589 ?x1197) 0.0)))
 (let (($x1342081 (or $x2271 $x16747 (<= (+ ?x3589 ?x3590 L_3 ?x2678 ?x1750 ?x2679 ?x1197) 0.0) $x413143)))
 (let ((?x3989 (* (- 5.0) A_3)))
 (let ((?x3991 (* 5.0 L_3)))
 (let ((?x1719 (* 5.0 B)))
 (let ((?x7795 (* 3.0 S_5)))
 (let ((?x2972 (* (- 3.0) A_3)))
 (let ((?x2980 (* 3.0 L_3)))
 (let ((?x1737 (* (- 2.0) L_2)))
 (let ((?x1738 (* 2.0 A_2)))
 (let (($x46911 (<= (+ ?x1738 ?x1737 S_5 ?x1769 ?x2980 ?x2972) 0.0)))
 (let (($x1352437 (or $x2271 $x13842 $x46911 (<= (+ ?x7795 ?x3522 ?x3561 ?x1719 ?x3991 ?x3989) 0.0) $x413143)))
 (let ((?x43490 (* (/ 2.0 3.0) L_0)))
 (let ((?x43489 (* (- (/ 2.0 3.0)) A_0)))
 (let (($x136381 (<= (+ ?x43489 ?x43490 S_1 (* (/ 1.0 3.0) L_3) (* (- (/ 1.0 3.0)) A_3)) 0.0)))
 (let (($x75157 (<= (+ A_2 ?x972 ?x1840 ?x1841 (* 3.0 S_1) B ?x983 L_5) 0.0)))
 (let (($x46868 (<= (+ A_4 ?x990 ?x1202 L_0 S_1 B ?x983 L_5) 0.0)))
 (let (($x3853 (<= (+ ?x981 A_3 ?x3589 ?x3590 (* 2.0 S_1) B ?x983 L_5) 0.0)))
 (let (($x3506 (<= (+ S_1 B L_1 ?x992) 0.0)))
 (let (($x84598 (<= (+ (* (- 2.0) L_3) (* 2.0 A_3) ?x1095 L_2 L_4 ?x1147) 0.0)))
 (let (($x68996 (<= (+ ?x43157 ?x43158 S_1 (* (/ 1.0 2.0) L_2) (* (- (/ 1.0 2.0)) A_2)) 0.0)))
 (let (($x148875 (<= (+ ?x93053 ?x93134 (* 5.0 S_1) B ?x983 L_5) 0.0)))
 (let (($x124689 (<= (+ ?x981 A_3 ?x1829 ?x1830 (* 2.0 S_2) B ?x983 L_5) 0.0)))
 (let (($x92936 (<= (+ ?x2721 ?x2720 (* 4.0 S_2) B ?x983 L_5) 0.0)))
 (let (($x41059 (<= (+ A_4 ?x990 L_1 ?x992 S_2 B ?x983 L_5) 0.0)))
 (let (($x63500 (<= (+ ?x3002 ?x1810 ?x1202 L_0 B ?x1843 ?x1844 ?x972 A_2) 0.0)))
 (let ((?x1802 (* 2.0 A_3)))
 (let ((?x1816 (* (- 2.0) L_3)))
 (let (($x29742 (<= (+ A_2 ?x972 ?x990 ?x1834 ?x1003 ?x1835 A_4) 0.0)))
 (let (($x542343 (or $x2271 $x29742 (<= (+ ?x1816 ?x1802 ?x1202 L_0 ?x972 ?x1977 ?x1003 A_2 ?x2495) 0.0) $x63500 $x418124)))
 (let (($x1366564 (or $x2271 $x3950 $x39709 $x69719 (<= (+ ?x93053 ?x93134 ?x5292 ?x983 L_5 (* (- 5.0) L_4) ?x3194) 0.0) $x418124 $x418830)))
 (let (($x1369159 (or $x13794 (<= (+ ?x3013 ?x3015 ?x1202 L_0 S_3 ?x1769 ?x3947 ?x3948) 0.0) (<= (+ ?x3589 ?x3590 (* 5.0 S_3) ?x1769 ?x3947 ?x3948) 0.0) $x417061)))
 (let (($x93191 (<= (+ L_1 ?x992 (* 2.0 S_3) B ?x983 L_5) 0.0)))
 (let (($x515468 (or $x13794 (<= (+ ?x3002 ?x1810 L_1 ?x992 S_3 ?x1760 ?x1843 ?x1844) 0.0) $x93191 $x417061)))
 (let (($x39639 (<= (+ (* 4.0 A_4) (* (- 4.0) L_4) L_1 ?x992 ?x1769 ?x3947 ?x3948) 0.0)))
 (let (($x1362445 (or $x2271 $x39639 (<= (+ L_1 ?x992 ?x1003 ?x983 L_5 ?x1816 ?x1802) 0.0) $x417061)))
 (let (($x418135 (= ?x990 ?x981)))
 (let (($x417716 (not $x418135)))
 (let (($x148903 (<= (+ ?x3589 ?x3590 ?x1750 ?x3947 ?x3948 (* (- 5.0) L_3) (* 5.0 A_3)) 0.0)))
 (let (($x1297809 (or $x2271 (<= (+ ?x3013 ?x3015 ?x1202 L_0 ?x1760 ?x3947 ?x3948 ?x981 A_3) 0.0) $x148903 $x417716 $x418124)))
 (let (($x3588 (<= (+ ?x981 A_3 ?x1202 L_0 ?x1003 ?x963 L_4 A_1 ?x1147) 0.0)))
 (let (($x515666 (or $x3588 $x29912 $x39585 $x75237 (<= (+ ?x93053 ?x93134 ?x5292 ?x983 L_5 (* (- 5.0) L_3) ?x3194) 0.0) $x418124)))
 (let (($x148706 (<= (+ ?x93053 ?x93134 ?x5292 ?x983 (* (- 4.0) L_5) ?x3194) 0.0)))
 (let (($x74545 (<= (+ A_2 ?x972 ?x3589 ?x3590 ?x1750 ?x1824 L_4 ?x1799 ?x1147) 0.0)))
 (let (($x46372 (<= (+ A_4 ?x990 ?x1202 L_0 ?x983 L_5 ?x963 A_1) 0.0)))
 (let (($x1326463 (or $x2991 (<= (+ L_3 ?x1197 (* 2.0 S_4) B ?x983 L_5) 0.0) $x418124)))
 (let (($x7981 (<= (+ ?x1824 ?x1799 (* (- 1.0) S_3) L_0 ?x1202) 0.0)))
 (let (($x7896 (not $x7981)))
 (let (($x2235 (<= (+ A_2 ?x972 (* (- 1.0) S_3)) 0.0)))
 (let (($x392266 (or $x2235 $x7896 (<= (+ S_5 ?x1147 L_4 ?x963 A_1 (* (- 1.0) S_3)) 0.0))))
 (let ((?x43446 (* (- (/ 1.0 3.0)) L_0)))
 (let ((?x43453 (* (/ 1.0 3.0) A_0)))
 (let ((?x43421 (* (- (/ 1.0 3.0)) S_4)))
 (let ((?x73819 (* (- (/ 1.0 2.0)) S_4)))
 (let ((?x73967 (* (/ 1.0 2.0) A_1)))
 (let ((?x73959 (* (- (/ 1.0 2.0)) L_1)))
 (let (($x2196 (<= (+ ?x981 A_3 (* (- 1.0) S_4)) 0.0)))
 (let (($x392895 (or $x2196 (<= (+ S_5 ?x1147 L_4 (* (- 1.0) S_4) A_2 ?x972) 0.0) (<= (+ S_5 ?x1147 L_4 ?x73959 ?x73967 ?x73819) 0.0) (<= (+ S_5 ?x1147 L_4 ?x43421 ?x43453 ?x43446) 0.0))))
 (let (($x75241 (<= (+ (* 5.0 A_2) (* (- 5.0) L_2) ?x1840 ?x1841 ?x1760 ?x1843 ?x1844) 0.0)))
 (let (($x1352273 (or $x3506 (<= (+ ?x981 A_3 ?x1003 A_5 ?x952 ?x1977 ?x2495) 0.0) $x46868 $x75241 $x148875 $x418124)))
 (let (($x13736 (not $x13842)))
 (let (($x1330247 (or $x2271 $x13736 $x46911 (<= (+ ?x963 A_1 S_5 ?x1760 ?x1834 ?x1835) 0.0) $x413143)))
 (let (($x415904 (= ?x981 ?x963)))
 (let (($x30310 (<= (+ A_2 ?x972 S_4 ?x1834 ?x1760 ?x1835) 0.0)))
 (let (($x1354880 (or $x2271 $x13736 (not (<= (+ ?x1738 ?x1737 L_1 ?x992 L_3 B ?x1197) 0.0)) $x30310 $x415904)))
 (let (($x91187 (<= (+ ?x2678 ?x2679 ?x1003 A_5 ?x952 (* 4.0 L_2) (* (- 4.0) A_2)) 0.0)))
 (let (($x16677 (<= (+ A_5 ?x952 ?x1738 ?x1737 ?x2980 ?x1760 ?x2972) 0.0)))
 (let (($x1352940 (or $x2271 $x16677 (<= (+ ?x1095 L_2 ?x1667 ?x1663 ?x1003 A_5 ?x952 ?x2721 ?x2720) 0.0) $x91187 $x415904)))
 (let (($x13844 (<= (+ ?x963 A_1 ?x1761 ?x981 ?x1003 ?x1762 A_3) 0.0)))
 (let (($x13755 (not $x13844)))
 (let (($x1366335 (or $x2271 $x13736 $x13755 (<= (+ ?x2495 ?x1977 ?x963 A_1 ?x1003 ?x1787 ?x1788 L_3 ?x1197) 0.0) $x413143)))
 (let ((?x3992 (* (- 3.0) L_5)))
 (let ((?x3990 (* 3.0 A_5)))
 (let (($x105779 (<= (+ ?x2993 ?x2900 A_0 ?x954 ?x1750 ?x3990 ?x3992 L_3 ?x1197) 0.0)))
 (let ((?x247118 (* (- (/ 1.0 4.0)) A_4)))
 (let ((?x247304 (* (/ 1.0 4.0) L_4)))
 (let ((?x43163 (* (/ 3.0 4.0) L_0)))
 (let ((?x43162 (* (- (/ 3.0 4.0)) A_0)))
 (let (($x549188 (or $x2271 $x3588 $x46372 $x74545 (<= (+ ?x43162 ?x43163 ?x972 ?x247304 ?x1003 A_1 ?x247118) 0.0) $x418124)))
 (let (($x525117 (or $x2271 $x3588 $x46372 $x74545 (<= (+ ?x43162 ?x43163 ?x952 ?x247304 ?x1003 A_1 ?x247118) 0.0) $x418124)))
 (let (($x45740 (<= (+ ?x3522 ?x3561 ?x981 ?x2721 ?x1003 ?x2720 A_3) 0.0)))
 (let (($x16749 (<= (+ ?x1738 ?x1737 L_1 ?x992 L_3 B ?x1197) 0.0)))
 (let (($x13838 (<= (+ ?x963 A_1 A_5 ?x952 ?x1834 B ?x1835) 0.0)))
 (let (($x1349898 (or $x2991 (<= (+ L_1 ?x992 (* 4.0 S_4) ?x1769 ?x3947 ?x3948) 0.0) $x418124)))
 (let (($x45846 (<= (+ ?x3522 ?x3561 ?x3990 ?x3992 ?x3991 ?x1760 ?x3989) 0.0)))
 (let ((?x3248 (* (- 5.0) A_1)))
 (let ((?x3249 (* 5.0 L_1)))
 (let ((?x10782 (* (- 4.0) L_0)))
 (let ((?x10780 (* 4.0 A_0)))
 (let (($x57612 (<= (+ ?x3002 ?x1810 ?x1202 L_0 S_2 ?x1760 ?x1843 ?x1844) 0.0)))
 (let (($x1345062 (or $x2271 $x3950 $x57612 (<= (+ ?x1840 ?x1841 (* 5.0 S_2) ?x1760 ?x1843 ?x1844) 0.0) $x417061)))
 (let ((?x43476 (* (/ 1.0 3.0) L_0)))
 (let ((?x43429 (* (- (/ 1.0 3.0)) A_0)))
 (let (($x136377 (<= (+ ?x43429 ?x43476 S_2 (* (/ 2.0 3.0) L_3) (* (- (/ 2.0 3.0)) A_3)) 0.0)))
 (let (($x3850 (<= (+ ?x981 A_3 ?x1202 L_0 S_2 B ?x983 L_5) 0.0)))
 (let (($x418275 (= ?x990 ?x972)))
 (let (($x1339720 (or $x13794 (<= (+ ?x1202 L_0 (* 4.0 S_3) ?x2900 ?x1769 ?x2993) 0.0) $x418275)))
 (let (($x2995 (<= (+ (* (- 4.0) L_3) (* 4.0 A_3) ?x1769 L_0 ?x2900 ?x1202 ?x2993) 0.0)))
 (let (($x1334162 (or $x2271 $x2995 (<= (+ ?x1202 L_0 L_4 ?x1737 ?x1003 ?x1738 ?x1147) 0.0) $x418135)))
 (let ((?x7571 (* (- 5.0) A_4)))
 (let ((?x7565 (* 5.0 L_4)))
 (let ((?x7813 (* 4.0 S_5)))
 (let (($x104341 (<= (+ ?x7813 A_0 ?x954 ?x7565 ?x1719 ?x7571) 0.0)))
 (let (($x5348 (<= (+ S_5 ?x1147 L_4 ?x963 A_1 B L_2 ?x1095) 0.0)))
 (let (($x1334951 (or $x2271 (<= (+ A_4 ?x990 ?x1095 L_2 ?x983 L_5 ?x981 A_3) 0.0) (<= (+ ?x1762 ?x1761 ?x1750 ?x983 L_5 ?x2996 ?x2997) 0.0) $x417716 $x418124)))
 (let (($x418126 (= ?x972 ?x963)))
 (let (($x62418 (<= (+ (* 2.0 S_5) ?x2495 ?x1977 A_0 ?x954 B L_2 ?x1095) 0.0)))
 (let (($x41083 (<= (+ ?x3002 ?x1810 L_1 ?x992 B ?x1843 ?x1844 ?x981 A_3) 0.0)))
 (let (($x1307839 (or $x2271 (<= (+ L_1 ?x992 ?x1977 ?x2996 (* (- 3.0) B) ?x2997 ?x2495) 0.0) $x41083 $x418124)))
 (let (($x29800 (<= (+ A_2 ?x972 (* 2.0 S_5) ?x2900 ?x1769 ?x2993) 0.0)))
 (let (($x2963 (not $x2995)))
 (let (($x2856 (<= (+ S_5 ?x981 A_3 ?x1760 ?x1977 ?x2495) 0.0)))
 (let ((?x7642 (* (- 4.0) A_4)))
 (let ((?x3198 (* 4.0 B)))
 (let ((?x7568 (* 4.0 L_4)))
 (let (($x72640 (<= (+ ?x963 A_1 ?x7795 ?x7568 ?x3198 ?x7642) 0.0)))
 (let (($x3958 (<= (+ L_3 ?x1197 A_0 ?x954 ?x1003 A_5 ?x952 L_2 ?x1095) 0.0)))
 (let (($x2951 (<= (+ ?x981 A_3 B A_5 ?x952 ?x1977 ?x2495) 0.0)))
 (let (($x1359853 (or $x2271 $x2951 $x3958 (not (<= (+ ?x1757 ?x1756 L_4 ?x1829 B ?x1830 ?x1147) 0.0)) (<= (+ ?x1738 ?x1737 ?x1003 A_5 ?x952 ?x2980 ?x2972) 0.0) $x418275)))
 (let (($x42752 (<= (+ A_0 ?x954 (* 4.0 A_5) (* (- 4.0) L_5) ?x7565 B ?x7571) 0.0)))
 (let (($x147835 (<= (+ ?x10780 ?x10782 ?x1003 A_5 ?x952 ?x3249 ?x3248) 0.0)))
 (let (($x39070 (<= (+ ?x963 A_1 ?x3990 ?x3992 ?x7568 B ?x7642) 0.0)))
 (let ((?x5339 (* 4.0 A_1)))
 (let ((?x1755 (* (- 3.0) B)))
 (let ((?x2893 (* (- 4.0) L_3)))
 (let (($x42730 (<= (+ ?x1840 ?x1841 L_4 ?x2893 ?x1755 ?x5339 ?x1147) 0.0)))
 (let (($x42742 (<= (+ ?x1667 ?x1663 ?x990 (* 4.0 L_1) ?x1003 (* (- 4.0) A_1) A_4) 0.0)))
 (let (($x29169 (<= (+ ?x1738 ?x1737 ?x1202 L_0 L_4 B ?x1147) 0.0)))
 (let (($x29767 (not $x29742)))
 (let (($x4821 (<= (+ L_3 ?x1197 ?x963 A_1 ?x1003 L_2 ?x990 ?x1095 A_4) 0.0)))
 (let (($x42009 (<= (+ ?x1840 ?x1841 (* 4.0 S_1) L_4 B ?x1147) 0.0)))
 (let (($x3001 (<= (+ ?x1816 ?x1802 ?x1095 L_2 B L_4 ?x1147) 0.0)))
 (let (($x44933 (<= (+ A_0 ?x954 (* 4.0 L_3) ?x3015 B (* (- 4.0) A_3) ?x3013) 0.0)))
 (let (($x531986 (or $x2271 $x13844 (<= (+ A_4 ?x990 A_2 ?x972 ?x1834 B ?x1835) 0.0) $x44933 $x415904)))
 (let (($x1359368 (or $x2271 (<= (+ ?x1816 ?x1802 ?x1202 L_0 S_2 ?x1760 ?x1977 ?x2495) 0.0) (<= (+ ?x1202 L_0 (* 2.0 S_2) L_4 B ?x1147) 0.0) $x418135)))
 (let (($x2973 (not (<= (+ ?x1816 ?x1802 A_2 ?x972 ?x1760 L_0 ?x1977 ?x1202 ?x2495) 0.0))))
 (let (($x1325243 (or $x2271 (<= (+ A_4 ?x990 ?x1095 L_2 ?x1003 ?x983 L_5 ?x981 A_3) 0.0) $x417716 $x418124)))
 (let ((?x7556 (* (- 5.0) L_4)))
 (let ((?x40494 (* 4.0 L_5)))
 (let ((?x40495 (* (- 4.0) A_5)))
 (let (($x1318008 (or $x2271 (<= (+ ?x1202 L_0 ?x1003 ?x40495 ?x40494 ?x7556 (* 5.0 A_4)) 0.0) $x417061)))
 (let (($x2691 (<= (+ ?x1824 ?x1799 B L_0 L_2 ?x1202 ?x1095) 0.0)))
 (let (($x2576 (not $x2691)))
 (let (($x580716 (or $x2271 $x2576 (<= (+ S_5 L_3 ?x1197 ?x1824 ?x1799 ?x1760 ?x1761 ?x1762) 0.0) $x418126)))
 (let (($x1319886 (or $x2271 $x2691 (<= (+ S_5 L_3 ?x1197 A_0 ?x954 L_2 B ?x1095) 0.0) $x418126)))
 (let (($x1324442 (or $x3506 (<= (+ A_2 ?x972 ?x1202 L_0 S_1 L_3 B ?x1197) 0.0) $x68996 $x415904)))
 (let (($x40289 (<= (+ S_5 ?x1147 L_4 A_2 ?x972 B L_3 ?x1197) 0.0)))
 (let (($x1329115 (or $x3506 $x16747 (<= (+ ?x3589 ?x3590 (* 3.0 S_1) L_3 B ?x1197) 0.0) $x413143)))
 (let (($x30227 (<= (+ ?x2678 ?x2679 S_5 (* 4.0 L_2) ?x3198 (* (- 4.0) A_2)) 0.0)))
 (let ((?x1261 (* (- 5.0) A_2)))
 (let ((?x1631 (* 5.0 L_2)))
 (let ((?x1627 (* 2.0 S_5)))
 (let (($x1329221 (or $x2271 $x2995 $x29742 (<= (+ ?x1840 ?x1841 L_4 (* (- 4.0) L_2) ?x1755 ?x5339 ?x1147) 0.0) $x418275)))
 (let (($x1324196 (or $x2271 $x2995 $x29742 (<= (+ (* (- 4.0) L_1) ?x5339 L_4 ?x1841 B ?x1840 ?x1147) 0.0) $x104341 $x418275)))
 (let (($x29878 (<= (+ A_2 ?x972 ?x3589 ?x3590 (* 2.0 S_1) L_4 B ?x1147) 0.0)))
 (let (($x5000 (<= (+ ?x981 A_3 ?x1202 L_0 ?x963 L_4 A_1 ?x1147) 0.0)))
 (let (($x3744 (<= (+ ?x1202 L_0 ?x1750 ?x1824 L_2 ?x1799 ?x1095) 0.0)))
 (let (($x45355 (<= (+ A_0 ?x954 ?x45703 (* 4.0 L_3) ?x3198 (* (- 4.0) A_3)) 0.0)))
 (let (($x13788 (<= (+ ?x963 A_1 (* 2.0 S_4) ?x2980 ?x1769 ?x2972) 0.0)))
 (let (($x139585 (<= (+ ?x1667 ?x1663 S_4 (* 4.0 L_1) ?x3198 (* (- 4.0) A_1)) 0.0)))
 (let (($x1330054 (or $x13794 (<= (+ ?x1095 L_2 (* 2.0 S_3) L_4 B ?x1147) 0.0) $x418275)))
 (let (($x2244 (<= (+ (* (- 1.0) S_5) A_4 ?x990) 0.0)))
 (let (($x1320645 (or $x2244 (<= (+ L_1 ?x992 (* (- 2.0) S_5) ?x2996 ?x1755 ?x2997) 0.0))))
 (let (($x75219 (<= (+ A_2 ?x972 (* (- 3.0) S_5) ?x1750 ?x1787 ?x1788) 0.0)))
 (let ((?x32104 (* (- (/ 4.0 3.0)) S_5)))
 (let ((?x32067 (* (/ 1.0 3.0) A_1)))
 (let ((?x32066 (* (- (/ 1.0 3.0)) L_1)))
 (let (($x3862 (<= (+ (* (- 2.0) S_5) ?x981 A_3 ?x1003 A_5 ?x952) 0.0)))
 (let (($x286092 (or $x2244 $x3862 (<= (+ ?x32066 ?x32067 ?x32104 ?x952 ?x1003 A_5) 0.0) $x75219 $x147835)))
 (let (($x548772 (or $x2271 (<= (+ ?x1202 L_0 (* 5.0 S_4) ?x3198 ?x40495 ?x40494) 0.0) $x417061)))
 (let (($x44216 (<= (+ (* (- (/ 1.0 2.0)) A_2) (* (/ 1.0 2.0) L_2) (* (- (/ 1.0 2.0)) S_5) S_3) 0.0)))
 (let ((?x43156 (* (- (/ 1.0 2.0)) S_5)))
 (let ((?x44427 (* (- (/ 1.0 2.0)) L_2)))
 (let ((?x44494 (* (/ 1.0 2.0) A_2)))
 (let (($x551297 (or $x2244 (<= (+ (* (- 1.0) S_5) ?x981 A_3 ?x1202 L_0 S_1) 0.0) (<= (+ ?x44494 ?x44427 ?x43156 ?x1202 L_0 S_1) 0.0) (<= (+ (* (- (/ 1.0 4.0)) S_5) ?x43162 ?x43163 S_1) 0.0))))
 (let (($x32081 (<= (+ (* (/ 2.0 3.0) L_1) (* (- (/ 2.0 3.0)) A_1) (* (- (/ 1.0 3.0)) S_5) S_2) 0.0)))
 (let (($x7758 (<= (+ (* (- 1.0) S_5) ?x981 A_3 L_1 ?x992 S_2) 0.0)))
 (let (($x1342820 (or $x2271 $x2576 (<= (+ L_3 ?x1197 S_4 ?x963 A_1 B L_2 ?x1095) 0.0) $x418126)))
 (let (($x143051 (<= (+ ?x1840 ?x1841 ?x1755 ?x1843 ?x1844 (* (- 5.0) L_2) (* 5.0 A_2)) 0.0)))
 (let (($x1345425 (or $x2196 (<= (+ (* (/ 1.0 2.0) L_1) (* (- (/ 1.0 2.0)) A_1) ?x73819 S_2) 0.0))))
 (let (($x1311484 (or (<= (+ (* (- 1.0) S_5) ?x1202 L_0 ?x1750 ?x1737 ?x1738) 0.0) $x2244 (<= (+ (* (- 3.0) S_5) ?x2893 (* 4.0 A_3) L_0 ?x1202) 0.0))))
 (let (($x529516 (or $x2271 (<= (+ ?x981 A_3 L_1 ?x992 S_2 B L_4 ?x1147) 0.0) (<= (+ ?x1829 ?x1830 (* 3.0 S_2) L_4 B ?x1147) 0.0) $x418135)))
 (let (($x1327570 (or $x2271 $x2951 $x29742 (<= (+ ?x963 A_1 ?x1810 ?x2980 ?x1750 ?x2972 ?x3002) 0.0) $x42752 $x418275)))
 (let ((?x43144 (* (- (/ 1.0 4.0)) L_0)))
 (let ((?x43132 (* (/ 1.0 4.0) A_0)))
 (let ((?x43193 (* (- (/ 5.0 4.0)) S_5)))
 (let (($x32117 (<= (+ (* (- (/ 4.0 3.0)) L_1) (* (/ 4.0 3.0) A_1) (* (- (/ 1.0 3.0)) S_5) L_0 ?x1202) 0.0)))
 (let (($x267848 (or $x2244 $x3862 $x32117 $x75219 (<= (+ ?x43193 ?x43132 ?x43144 ?x952 ?x1003 A_5) 0.0))))
 (let (($x71660 (<= (+ A_2 ?x972 (* (- 1.0) S_4) ?x1202 L_0 ?x1003 ?x963 A_1) 0.0)))
 (let (($x535812 (or $x2271 $x13736 (<= (+ ?x1627 ?x2495 ?x1977 ?x963 A_1 B L_3 ?x1197) 0.0) $x40289 $x413143)))
 (let (($x92892 (<= (+ ?x2721 ?x2720 ?x1755 ?x983 L_5 (* (- 4.0) L_2) (* 4.0 A_2)) 0.0)))
 (let (($x1318611 (or $x2271 $x39639 $x92892 (<= (+ ?x981 A_3 ?x1829 ?x1830 ?x1003 ?x983 L_5 ?x1737 ?x1738) 0.0) $x417061)))
 (let (($x254662 (or $x2235 (<= (+ ?x1824 ?x1799 S_4 (* (- 3.0) S_3)) 0.0) (<= (+ A_0 ?x954 S_4 (* (- 2.0) S_3)) 0.0))))
 (let (($x1333328 (or $x2196 (<= (+ ?x43489 ?x43490 ?x43421 ?x963 ?x1003 A_1) 0.0) (<= (+ (* (- 1.0) S_4) ?x43157 ?x43158 ?x44807 ?x44832) 0.0))))
 (let (($x43128 (<= (+ (* (- (/ 3.0 4.0)) S_5) (* (- (/ 1.0 4.0)) A_0) (* (/ 1.0 4.0) L_0) S_3) 0.0)))
 (let (($x1319325 (or $x2271 (<= (+ A_4 ?x990 ?x1202 L_0 ?x1003 ?x983 L_5 ?x963 A_1) 0.0) $x417061)))
 (let (($x1367407 (or $x2271 $x41083 (<= (+ ?x1202 L_0 ?x2893 ?x2900 ?x5292 (* 4.0 A_3) ?x2993) 0.0) $x418124)))
 (let (($x43205 (<= (+ (* (/ 1.0 2.0) S_5) (* (/ 1.0 2.0) A_0) (* (- (/ 1.0 2.0)) L_0) L_2 ?x1095) 0.0)))
 (let (($x3560 (<= (+ (* (- 1.0) S_5) ?x981 A_3 ?x1202 L_0 ?x1003 ?x963 A_1) 0.0)))
 (let (($x1327812 (or $x2244 $x3560 (not $x43205) (<= (+ (* (- (/ 1.0 4.0)) S_5) ?x43162 ?x43163 ?x963 ?x1003 A_1) 0.0))))
 (let ((?x32079 (* (- (/ 1.0 3.0)) S_5)))
 (let ((?x32078 (* (- (/ 2.0 3.0)) A_1)))
 (let ((?x32010 (* (/ 2.0 3.0) L_1)))
 (let (($x2642 (<= (+ (* (- 1.0) S_5) ?x981 A_3 L_1 ?x992 ?x1003 ?x972 A_2) 0.0)))
 (let (($x550311 (or $x2271 (<= (+ L_3 ?x1197 ?x963 A_1 L_2 ?x990 ?x1095 A_4) 0.0) (<= (+ L_3 ?x1197 A_0 ?x954 ?x1003 L_1 ?x990 ?x992 A_4) 0.0) $x418126)))
 (let (($x1300234 (or $x3506 (<= (+ ?x981 A_3 ?x1202 L_0 S_1 B L_4 ?x1147) 0.0) $x29742 $x136381 $x418275)))
 (let (($x563851 (or $x2271 $x2691 (<= (+ ?x1834 ?x1835 A_0 ?x954 L_2 ?x1810 ?x1003 ?x1095 ?x3002) 0.0) $x418126)))
 (let (($x114162 (<= (+ S_5 (* (/ 3.0 2.0) A_0) (* (- (/ 3.0 2.0)) L_0) (* (- (/ 5.0 2.0)) S_3)) 0.0)))
 (let (($x1837 (<= (+ ?x1202 L_0 ?x1755 ?x1756 ?x1834 ?x1757 ?x1835) 0.0)))
 (let (($x1364338 (or $x1837 $x2271 (<= (+ ?x1816 ?x1802 ?x1202 L_0 B ?x972 ?x1977 A_2 ?x2495) 0.0) $x418275)))
 (let (($x44811 (<= (+ ?x44494 ?x44427 ?x43156 ?x1202 L_0 ?x963 ?x1003 A_1) 0.0)))
 (let (($x463299 (or $x1786 $x2271 (<= (+ ?x1095 L_2 S_3 A_0 ?x954 B L_1 ?x992) 0.0) $x415330)))
 (let (($x552444 (or $x1786 $x2271 (<= (+ ?x981 A_3 A_0 ?x954 L_1 L_2 ?x992 ?x1095) 0.0) $x415330)))
 (let (($x204775 (or $x2235 (<= (+ ?x963 A_1 (* (- 2.0) S_3) ?x981 ?x1003 A_3) 0.0) $x45740)))
 (let (($x549256 (or $x2271 (<= (+ ?x981 A_3 ?x1202 L_0 ?x983 L_5 ?x972 A_2) 0.0) $x39709 $x143051 $x417061)))
 (let (($x462290 (or $x1786 $x2271 (<= (+ A_5 ?x952 ?x10780 ?x10782 ?x3249 ?x3198 ?x3248) 0.0) $x415330)))
 (let (($x3944 (<= (+ L_3 ?x1197 ?x3522 ?x3561 ?x1003 A_5 ?x952 ?x1829 ?x1830) 0.0)))
 (let ((?x2601 (+ L_3 ?x1197 ?x1824 ?x1799 B A_5 ?x952 ?x1761 ?x1762)))
 (let (($x2659 (<= ?x2601 0.0)))
 (let (($x553815 (or $x2271 $x2691 (<= (+ L_3 ?x1197 A_0 ?x954 L_2 ?x952 ?x1095 A_5) 0.0) $x418126)))
 (let (($x53152 (<= (+ ?x1834 ?x1835 (* 2.0 S_4) A_0 ?x954 L_2 B ?x1095) 0.0)))
 (let (($x86406 (<= (+ S_5 L_3 ?x1197 A_0 (* (- 1.0) S_3) ?x954) 0.0)))
 (let (($x534649 (or $x2235 $x86406 (<= (+ S_5 L_3 ?x1197 ?x1824 ?x1799 (* (- 2.0) S_3)) 0.0))))
 (let (($x44805 (<= (+ (* (- (/ 1.0 2.0)) A_2) (* (/ 1.0 2.0) L_2) ?x43156 ?x981 ?x1003 A_3) 0.0)))
 (let (($x76800 (<= (+ S_5 (* (/ 2.0 3.0) A_0) (* (- (/ 2.0 3.0)) L_0) (* (- (/ 5.0 3.0)) S_4)) 0.0)))
 (let (($x189496 (or $x2196 (<= (+ ?x963 A_1 S_5 (* (- 2.0) S_4)) 0.0) $x76800 (<= (+ ?x1738 ?x1737 S_5 (* (- 3.0) S_4)) 0.0))))
 (let ((?x43522 (* (- (/ 5.0 3.0)) S_4)))
 (let ((?x43432 (* (- (/ 2.0 3.0)) L_0)))
 (let ((?x43418 (* (/ 2.0 3.0) A_0)))
 (let (($x184558 (or $x2196 (<= (+ ?x963 A_1 (* (- 2.0) S_4) ?x952 ?x1003 A_5) 0.0) (<= (+ ?x1738 ?x1737 (* (- 3.0) S_4) ?x1003 A_5 ?x952) 0.0) (<= (+ ?x43418 ?x43432 ?x43522 ?x952 ?x1003 A_5) 0.0))))
 (let (($x32009 (<= (+ (* (/ 1.0 3.0) L_1) (* (- (/ 1.0 3.0)) A_1) (* (- (/ 2.0 3.0)) S_5) S_3) 0.0)))
 (let ((?x82143 (* (- (/ 5.0 2.0)) S_3)))
 (let ((?x69541 (* (- (/ 3.0 2.0)) L_0)))
 (let ((?x69364 (* (/ 3.0 2.0) A_0)))
 (let (($x188978 (or $x2235 (<= (+ ?x2678 ?x2679 (* (- 4.0) S_3) ?x952 ?x1003 A_5) 0.0) (<= (+ ?x69364 ?x69541 ?x82143 ?x952 ?x1003 A_5) 0.0))))
 (let (($x162053 (<= (+ (* (- 2.0) S_5) ?x1816 ?x1802 ?x1202 L_0 ?x952 ?x1003 A_2) 0.0)))
 (let (($x43160 (<= (+ ?x43156 ?x43157 ?x43158 S_2) 0.0)))
 (let (($x1325194 (or $x2244 $x43160 (<= (+ (* (- 2.0) S_5) ?x1816 ?x1802 ?x1202 L_0 S_2) 0.0))))
 (let ((?x43148 (* (- (/ 1.0 2.0)) L_0)))
 (let ((?x86345 (* (- (/ 1.0 2.0)) S_3)))
 (let ((?x43088 (* (/ 1.0 2.0) A_0)))
 (let (($x182308 (or $x2235 $x7896 (<= (+ L_3 ?x1197 S_4 ?x963 A_1 (* (- 1.0) S_3)) 0.0))))
 (let (($x456792 (or $x1786 $x2271 (<= (+ L_3 ?x1197 ?x3522 ?x3561 B A_5 ?x952 ?x1829 ?x1830) 0.0) $x415330)))
 (let (($x41071 (<= (+ ?x1147 L_4 ?x963 A_1 (* (- 1.0) S_3) ?x1003 A_5 ?x952) 0.0)))
 (let (($x173542 (or $x2235 $x41071 (<= (+ ?x1147 L_4 A_0 ?x954 ?x1003 A_5 ?x952 L_1 ?x992) 0.0))))
 (let (($x173737 (or $x2235 (<= (+ ?x1824 ?x1799 (* (- 3.0) S_3) ?x990 ?x1003 A_4) 0.0) $x42742)))
 (let (($x90811 (<= (+ L_1 ?x992 ?x1003 ?x3947 ?x3948 (* (- 4.0) L_4) (* 4.0 A_4)) 0.0)))
 (let (($x1363640 (or (not (<= (+ L_3 ?x1197 ?x1003 ?x983 L_5 ?x1810 ?x3002) 0.0)) $x39709 (<= (+ L_1 ?x992 ?x1003 ?x3947 ?x952 (* 4.0 A_4)) 0.0) $x417061)))
 (let (($x162667 (or $x2196 (<= (+ A_2 ?x972 (* (- 2.0) S_4) ?x990 ?x1003 A_4) 0.0) (<= (+ ?x963 A_1 (* (- 3.0) S_4) ?x1810 ?x1750 ?x3002) 0.0) (<= (+ A_0 ?x954 (* (- 4.0) S_4) ?x3015 ?x1755 ?x3013) 0.0))))
 (let ((?x43085 (* (/ 1.0 4.0) L_0)))
 (let ((?x43083 (* (- (/ 1.0 4.0)) A_0)))
 (let ((?x43124 (* (- (/ 3.0 4.0)) S_5)))
 (let (($x2262 (<= (+ ?x963 A_1 (* (- 1.0) S_2)) 0.0)))
 (let (($x161752 (or $x2262 (<= (+ ?x10780 ?x10782 (* (- 5.0) S_2) ?x952 ?x1003 A_5) 0.0))))
 (let (($x1369063 (or $x2271 $x13844 (<= (+ ?x1147 L_4 A_2 ?x972 A_5 ?x952 L_3 ?x1197) 0.0) $x105779 $x415904)))
 (let (($x542814 (or $x2271 (<= (+ ?x1147 L_4 ?x963 A_1 A_5 ?x952 L_2 ?x1095) 0.0) (<= (+ ?x2495 ?x1977 A_0 ?x954 ?x1003 ?x1787 ?x1788 L_2 ?x1095) 0.0) $x418126)))
 (let (($x567284 (or (<= (+ A_0 ?x954 (* 2.0 S_3) ?x1769 ?x1770 ?x1771) 0.0) $x2271 $x2691 $x418126)))
 (let (($x566396 (or $x2196 (<= (+ ?x43489 ?x43490 ?x43421 S_1) 0.0) (<= (+ (* (- 1.0) S_4) A_2 ?x972 ?x1202 L_0 S_1) 0.0))))
 (let (($x1327690 (or (<= (+ ?x1202 L_0 (* (- 2.0) S_4) ?x1755 ?x1756 ?x1757) 0.0) $x2196)))
 (let (($x124688 (<= (+ L_3 ?x1197 ?x1824 ?x1799 (* (- 2.0) S_3) ?x1003 A_5 ?x952) 0.0)))
 (let (($x578162 (or $x2271 (<= (+ A_4 ?x990 ?x1824 ?x1799 ?x1760 ?x1770 ?x1771) 0.0) $x42742 $x418126)))
 (let (($x1314635 (or (<= (+ ?x1202 L_0 (* 2.0 S_1) B L_2 ?x1095) 0.0) $x3506 $x418126)))
 (let (($x46997 (<= (+ A_4 ?x990 ?x1667 ?x1663 (* 4.0 L_1) ?x1769 (* (- 4.0) A_1)) 0.0)))
 (let (($x563463 (or $x1786 $x2271 (<= (+ L_3 ?x1197 S_4 A_0 ?x954 B L_1 ?x992) 0.0) $x415330)))
 (let (($x135525 (or $x2262 (<= (+ ?x1095 L_2 S_4 ?x3522 (* (- 2.0) S_2) ?x3561) 0.0))))
 (let (($x75170 (<= (+ ?x1095 L_2 ?x1667 (* (- 3.0) S_2) ?x1663 ?x1003 A_5 ?x952) 0.0)))
 (let (($x1321030 (or $x1786 $x2271 (<= (+ ?x1095 L_2 ?x1667 ?x1663 ?x1760 A_5 ?x952 ?x2721 ?x2720) 0.0) $x415330)))
 (let (($x3203 (<= (+ A_5 ?x952 ?x2678 ?x2679 (* 4.0 L_2) ?x1769 (* (- 4.0) A_2)) 0.0)))
 (let (($x519407 (or (<= (+ ?x1667 ?x1663 ?x1769 ?x1787 ?x1788 ?x1631 ?x1261) 0.0) $x2271 $x3203 $x418126)))
 (let (($x125277 (or $x2262 (<= (+ ?x1095 L_2 S_3 A_0 (* (- 1.0) S_2) ?x954) 0.0))))
 (let (($x124599 (or $x2262 (<= (+ ?x1095 L_2 S_5 ?x1667 (* (- 3.0) S_2) ?x1663) 0.0))))
 (let (($x63994 (<= (+ ?x2993 ?x2900 (* (- 1.0) S_4) A_0 ?x954 ?x1755 ?x3990 ?x3992) 0.0)))
 (let (($x43394 (<= (+ ?x1147 L_4 (* (- 1.0) S_4) A_2 ?x972 ?x1003 A_5 ?x952) 0.0)))
 (let (($x41070 (<= (+ ?x2495 ?x1977 ?x963 A_1 (* (- 1.0) S_4) ?x1750 ?x1787 ?x1788) 0.0)))
 (let (($x25249 (<= (+ ?x1829 ?x1830 L_4 ?x1756 ?x1755 ?x1757 ?x1147) 0.0)))
 (let (($x552972 (or $x2271 (<= (+ ?x981 A_3 L_1 ?x992 ?x1003 ?x972 L_4 A_2 ?x1147) 0.0) $x25249 (<= (+ A_4 ?x990 L_1 ?x992 ?x983 L_5 ?x972 A_2) 0.0) $x418124)))
 (let (($x114675 (or $x2262 (<= (+ S_5 L_3 ?x1197 ?x3522 (* (- 2.0) S_2) ?x3561) 0.0))))
 (let (($x29911 (<= (+ ?x1095 L_2 ?x3522 (* (- 2.0) S_2) ?x3561 ?x990 ?x1003 A_4) 0.0)))
 (let (($x441899 (or $x1786 $x2271 (<= (+ ?x1095 L_2 ?x3522 ?x3561 B ?x1829 ?x990 ?x1830 A_4) 0.0) $x415330)))
 (let (($x521371 (or $x2271 (not $x5000) $x13755 (<= (+ ?x963 A_1 ?x1810 ?x2980 B ?x2972 ?x3002) 0.0) $x413143)))
 (let (($x534953 (or $x2271 $x3001 (<= (+ A_2 ?x972 ?x3589 ?x3590 L_4 ?x1824 ?x1003 ?x1799 ?x1147) 0.0) $x42730 $x418135)))
 (let (($x3872 (<= (+ L_3 ?x1197 A_0 (* (- 1.0) S_3) ?x954 ?x1003 A_5 ?x952) 0.0)))
 (let (($x435281 (or $x1786 $x2271 (<= (+ ?x1147 L_4 A_0 ?x954 A_5 ?x952 L_1 ?x992) 0.0) $x415330)))
 (let (($x541408 (or $x2271 (<= (+ ?x1202 L_0 ?x2900 ?x2893 ?x1003 (* 4.0 A_3) ?x2993) 0.0) $x418135)))
 (let (($x68983 (or $x2262 (<= (+ S_5 ?x1147 L_4 A_0 ?x954 (* (- 1.0) S_2)) 0.0))))
 (let (($x63534 (<= (+ ?x2495 ?x1977 A_0 (* (- 1.0) S_3) ?x954 ?x1750 ?x1787 ?x1788) 0.0)))
 (let (($x46325 (<= (+ ?x1147 L_4 A_0 (* (- 1.0) S_2) ?x954 ?x1003 A_5 ?x952) 0.0)))
 (let (($x45732 (<= (+ ?x1202 L_0 ?x1834 ?x1756 ?x1003 ?x1757 ?x1835) 0.0)))
 (let (($x1323576 (or $x2271 $x2995 (<= (+ ?x1840 ?x1841 ?x3015 ?x1755 ?x5339 ?x1147) 0.0) $x45732 $x418275)))
 (let (($x50932 (or $x2262 (<= (+ ?x1667 ?x1663 (* (- 4.0) S_2) ?x990 ?x1003 A_4) 0.0))))
 (let (($x48404 (or $x2262 (<= (+ ?x3522 ?x3561 (* (- 3.0) S_2) ?x981 ?x1003 A_3) 0.0))))
 (let (($x533992 (or $x2271 (<= (+ ?x1202 L_0 (* 3.0 S_2) ?x1834 ?x1760 ?x1835) 0.0) $x413143)))
 (let (($x1370895 (or $x2271 (<= (+ L_1 ?x992 (* 2.0 S_2) L_3 B ?x1197) 0.0) $x413143)))
 (let (($x44223 (or $x2235 $x7981 (<= (+ A_0 ?x954 (* (- 3.0) S_3) ?x1816 ?x1750 ?x1802) 0.0))))
 (let (($x43018 (or $x2235 $x7981 (<= (+ A_0 ?x954 (* (- 2.0) S_3) ?x990 ?x1003 A_4) 0.0))))
 (let (($x1296745 (or $x2271 (<= (+ ?x981 A_3 L_1 ?x992 ?x972 L_4 A_2 ?x1147) 0.0) (<= (+ ?x1829 ?x1830 L_4 ?x1756 ?x1750 ?x1757 ?x1147) 0.0) $x418135)))
 (let (($x1362103 (or $x2196 (<= (+ L_1 ?x992 (* (- 1.0) S_4) ?x1737 ?x1750 ?x1738) 0.0))))
 (let (($x552785 (or $x2271 (not (<= (+ A_2 ?x972 A_0 ?x954 ?x1760 ?x1829 ?x1830) 0.0)) (<= (+ A_2 ?x1737 ?x1202 L_0 L_3 A_1 ?x1197) 0.0) $x415904)))
 (let (($x538042 (or $x2235 (<= (+ ?x1202 (* (- 1.0) S_3) L_0 ?x1750 ?x1824 ?x1799) 0.0))))
 (let (($x30278 (<= (+ ?x1095 L_2 A_0 (* (- 1.0) S_2) ?x954 ?x981 ?x1003 A_3) 0.0)))
 (let (($x518222 (or (<= (+ A_0 ?x954 B ?x1770 ?x1816 ?x1771 ?x1802) 0.0) $x2271 (<= (+ ?x981 A_3 ?x963 A_1 B ?x1761 ?x1762) 0.0) $x418126)))
 (let (($x549217 (or (<= (+ A_0 ?x954 B ?x1761 ?x990 ?x1762 A_4) 0.0) $x2271 $x2691 $x418126)))
 (let (($x11201 (or $x2262 (<= (+ L_3 ?x1197 S_4 A_0 (* (- 1.0) S_2) ?x954) 0.0))))
 (let (($x4985 (<= (+ ?x1834 ?x1835 A_0 (* (- 1.0) S_3) ?x954 ?x1750 ?x1810 ?x3002) 0.0)))
 (let (($x4881 (<= (+ L_3 ?x1197 ?x963 A_1 (* (- 1.0) S_3) ?x1003 ?x990 A_4) 0.0)))
 (let (($x4986 (<= (+ L_3 ?x1197 A_0 ?x954 (* (- 1.0) S_2) ?x1003 ?x990 A_4) 0.0)))
 (let (($x417371 (or $x1786 $x2271 (<= (+ ?x981 A_3 ?x3522 ?x3561 ?x1760 ?x2721 ?x2720) 0.0) $x415330)))
 (let (($x6684 (or (<= (+ A_0 ?x954 (* (- 2.0) S_2) ?x1003 ?x972 A_2) 0.0) $x2262)))
 (let (($x417389 (or $x1786 $x2271 (<= (+ A_2 ?x972 A_0 ?x954 B ?x1829 ?x1830) 0.0) $x415330)))
 (let (($x666 (or $x1786 $x2271 (<= (+ L_3 ?x1197 A_0 ?x954 L_1 ?x990 ?x992 A_4) 0.0) $x415330)))
 (let (($x3863 (<= (+ L_3 ?x1197 ?x3522 ?x3561 (* (- 2.0) S_2) ?x1003 A_5 ?x952) 0.0)))
 (let (($x523777 (or $x1786 $x2271 (<= (+ S_5 L_3 ?x1197 ?x3522 ?x3561 ?x1760 ?x1829 ?x1830) 0.0) $x415330)))
 (and (<= ?x990 ?x981) (<= ?x972 ?x963) (<= ?x952 ?x990) (<= ?x981 ?x972) (<= ?x963 ?x954) (or (<= (+ S_2 B L_2 ?x1095) 0.0) $x418126) (or $x1786 $x3506 $x415330) $x523777 (or $x1786 $x2271 (<= (+ A_0 ?x954 S_2 ?x1760 ?x1829 ?x1830) 0.0) $x415330) (or $x2262 $x3863) $x666 $x417389 $x6684 $x417371 (or $x2262 $x4986) (or $x2235 $x4881 $x4985) (or (<= (+ S_5 B ?x983 L_5) 0.0) $x417061) (or $x2991 $x418135) $x11201 $x549217 (or $x13794 $x413143) (or (<= (+ ?x1202 L_0 ?x1003 ?x1824 L_2 ?x1799 ?x1095) 0.0) $x2271 $x418126) (or $x2271 (<= (+ L_3 ?x1197 ?x1003 ?x983 L_5 ?x1810 ?x3002) 0.0) $x417061) $x518222 (or $x2271 (<= (+ L_1 ?x992 ?x1737 L_3 ?x1003 ?x1738 ?x1197) 0.0) $x413143) (or $x2262 $x30278) $x538042 (or $x2271 (<= (+ ?x1095 L_2 L_4 ?x1816 ?x1003 ?x1802 ?x1147) 0.0) $x418135) $x552785 $x1362103 $x1296745 $x43018 $x44223 $x1370895 $x533992 $x48404 $x50932 (or $x2271 $x45732 $x413143) $x1323576 (or $x2262 $x46325) (or $x2235 $x7981 $x63534) (or $x2262 (<= (+ ?x3522 ?x3561 S_3 (* (- 3.0) S_2)) 0.0)) (or $x2262 (<= (+ ?x1667 ?x1663 S_4 (* (- 4.0) S_2)) 0.0)) $x68983 $x541408 (or $x2271 (<= (+ L_1 ?x992 ?x1977 ?x2996 ?x1003 ?x2997 ?x2495) 0.0) $x418135) $x435281 (or $x2235 (<= (+ ?x43157 ?x86345 ?x43158 S_1) 0.0)) (or $x2235 $x3872 $x7981) $x534953 (or $x2271 $x13842 $x16747 $x44933 $x413143) $x521371 $x441899 (or $x2262 $x29911) (or $x2262 (<= (+ S_5 ?x10780 ?x10782 (* (- 5.0) S_2)) 0.0)) $x114675 (or $x2271 (not $x2659) (= ?x2601 0.0) $x25249 $x39709 $x417061) $x552972 (or $x2196 $x41070 $x43394 $x63994) (or $x2235 $x7981 $x86406) $x124599 $x125277 $x519407 (or $x2244 $x3588 $x3744 $x44811) $x1321030 (or $x2262 $x75170) $x135525 $x563463 (or $x2271 $x13844 $x30310 $x45355 $x415904) (or $x1786 $x2271 $x46997 $x415330) $x1314635 $x578162 (or $x2235 $x3944 $x124688) $x1327690 $x566396 $x567284 $x542814 $x1369063 $x161752 (or $x2244 (<= (+ ?x43124 ?x43083 ?x43085 ?x981 ?x1003 A_3) 0.0)) $x162667 $x1363640 (or $x2271 $x90811 $x417061) (or $x2271 (<= (+ ?x1095 L_2 ?x1003 ?x1843 ?x1844 ?x3015 ?x3013) 0.0) $x417061) $x173737 $x173542 (or $x2196 (<= (+ ?x43429 ?x43476 (* (- (/ 2.0 3.0)) S_4) S_2) 0.0)) (or $x2235 $x7981 (<= (+ S_5 ?x1147 L_4 ?x43088 ?x43148 ?x86345) 0.0)) $x456792 $x182308 (or $x2235 $x7981 (<= (+ L_3 ?x1197 S_4 ?x43088 ?x86345 ?x43148) 0.0)) $x1325194 (or $x1837 $x2244 $x162053) $x188978 (or $x2244 $x32009) $x184558 $x189496 (or $x2244 $x44805) $x534649 (or $x2244 $x7758 $x43160) (or $x2271 $x2691 $x53152 $x418126) $x553815 (or $x2271 $x2659 $x3944 $x418126) $x462290 (or $x2271 $x2576 (<= (+ ?x963 A_1 S_3 ?x1761 ?x1760 ?x1762) 0.0) $x418126) $x549256 $x204775 $x552444 $x463299 (or $x2244 $x3560 $x3744 $x44811) $x1364338 (or $x2235 (<= (+ ?x2678 ?x2679 S_5 (* (- 4.0) S_3)) 0.0) $x114162) $x563851 (or $x2271 $x2951 $x39070 $x69719 $x147835 $x418135) $x1300234 (or $x2271 $x2856 $x2963 $x29742 $x72640 $x418275) (or $x13794 (<= (+ L_1 ?x992 ?x7938 ?x1977 ?x1760 ?x2495) 0.0) $x418275) $x550311 (or $x2244 $x2642 (<= (+ ?x32010 ?x32078 ?x32079 ?x972 ?x1003 A_2) 0.0)) $x1327812 $x1367407 $x1319325 (or $x2995 $x3506 $x42009 $x69719 $x418135) (or $x2244 $x43128) $x1333328 $x254662 $x1318611 (or $x2271 $x13736 $x13788 $x16749 $x413143) $x535812 (or $x2196 $x3744 $x71660) $x267848 (or $x1786 $x2271 (<= (+ ?x3522 ?x3561 S_3 ?x1769 ?x2721 ?x2720) 0.0) $x415330) (or $x2271 $x2951 $x3958 $x29742 $x39070 $x418275) $x1327570 $x529516 (or $x2271 $x3950 $x39709 $x69719 $x148706 $x417061) (or $x2271 $x3942 $x39709 $x69719 $x132141 $x417061) (or $x2271 $x5000 $x29742 $x132141 $x418275) $x1311484 $x1345425 (or $x2271 $x3950 $x63500 $x143051 $x417061) (or $x2271 $x2576 (<= (+ ?x1824 ?x1799 S_4 ?x1770 ?x1769 ?x1771) 0.0) $x418126) $x1342820 (or $x2244 $x7758 $x32081) $x551297 (or $x2244 $x44216) (or $x2271 $x41059 $x124689 $x136377 $x417061) $x548772 $x286092 $x1320645 $x1330054 (or (<= (+ A_0 ?x954 S_4 ?x1760 ?x1761 ?x1762) 0.0) $x2271 $x2691 $x418126) (or $x1786 $x2271 $x139585 $x415330) (or $x3506 $x3950 $x46868 $x69719 $x148875 $x417061) (or $x2271 $x13788 $x16747 $x45355 $x413143) (or $x2271 $x3744 $x5000 $x74352 $x418275) (or $x3506 $x29767 $x29878 $x68996 $x418135) $x1324196 $x1329221 (or (<= (+ ?x1627 ?x1667 ?x1663 ?x1719 ?x1631 ?x1261) 0.0) $x2271 $x30227 $x418126) $x1329115 (or $x2271 $x13844 (not $x16747) $x40289 $x415904) $x1324442 $x1319886 $x580716 $x1318008 $x1325243 (or $x2271 $x13736 $x13838 $x16747 $x413143) (or $x2271 $x2973 $x4821 $x29767 $x29912 $x418135) $x1359368 $x531986 (or $x3001 $x3506 $x29169 $x42009 $x418135) (or $x2271 $x4821 $x29767 $x29800 $x104341 $x418135) (or $x2271 $x2995 $x29169 $x39070 $x42752 $x418135) (or $x2271 $x2999 $x29912 $x39070 $x42742 $x418135) (or $x2271 $x2999 $x42730 $x69719 $x418135) (or $x2271 $x2995 $x42730 $x69719 $x418135) (or $x2271 $x2995 $x29912 $x39070 $x147835 $x418135) (or $x2271 $x2995 $x29912 $x39115 $x42752 $x418135) $x1359853 (or $x2271 $x2999 $x29800 $x72640 $x104341 $x418135) (or $x2271 $x2856 $x2963 $x5348 $x29800 $x418135) $x1307839 (or $x2271 $x5348 $x62418 $x418126) (or $x2271 $x3850 $x39709 $x92936 $x417061) $x1334951 (or $x2271 $x2995 $x5348 $x69719 $x104341 $x418135) $x1334162 $x1339720 (or $x2271 $x13844 $x16677 $x45846 $x415904) (or $x2271 (not $x39709) $x41059 $x92936 $x418124) (or $x2271 $x3850 $x57612 $x136377 $x417061) $x1345062 (or $x1786 $x2271 (<= (+ S_5 ?x10780 ?x10782 ?x1719 ?x3249 ?x3248) 0.0) $x415330) (or $x2271 $x13755 $x13842 $x45846 $x413143) $x1349898 (or $x2271 $x13838 $x16749 $x45740 $x413143) (or $x13794 $x44099 $x93191 $x417061) $x525117 (or $x3588 $x29912 $x39585 $x75241 $x147952 $x418124) $x549188 (or $x2271 $x13755 $x13842 $x105779 $x413143) $x1366335 $x1352940 $x1354880 $x1330247 $x1352273 $x392895 $x392266 $x1326463 (or $x2271 $x3588 $x46372 $x74545 $x147952 $x418124) (or $x3588 $x29912 $x39585 $x75237 $x148706 $x418124) $x515666 $x1297809 $x1362445 $x515468 $x1369159 (or $x13794 $x39585 $x75179 $x417061) $x1366564 $x542343 (or $x2271 $x41059 $x92936 $x124689 $x417061) (or $x3506 $x3950 $x39585 $x75157 $x148875 $x417061) (or $x3506 $x46868 $x68996 $x75157 $x84598 $x417061) (or $x3506 $x3853 $x46868 $x75157 $x136381 $x417061) $x1352437 $x1342081 (or $x2271 $x13842 $x16747 $x105777 $x413143) (or $x13794 $x44099 $x75179 $x417061) $x514773 $x1322494 (or $x2271 $x3942 $x39585 (not $x69719) $x74352 $x417061) (or $x2271 $x3950 $x39585 $x75237 $x132141 $x417061) (or $x2271 $x3942 $x39585 $x75237 $x132141 $x417061) (or $x2271 $x3942 $x39709 $x40176 $x74352 $x417061) (or $x2999 $x3942 $x29912 $x39115 $x39709 $x75237 $x147952 $x418124 $x418830) (or $x2991 (<= (+ ?x1095 L_2 ?x45703 ?x1760 ?x1843 ?x1844) 0.0) $x418124) $x515017 $x1347183 $x1833 $x1781 $x1767 (<= (+ L_1 ?x992 S_1) 0.0) (<= (+ ?x1095 L_2 S_2) 0.0) (<= (+ L_3 ?x1197 S_3) 0.0) (<= (+ ?x1147 L_4 S_4) 0.0) (<= (+ S_5 ?x983 L_5) 0.0) (<= (+ S_0 L_0 ?x1202) 0.0) (<= (+ (* (- 1.0) S_1) S_0) 0.0) $x2987 $x3507 (<= (+ (* (- 1.0) S_5) S_4) 0.0) (<= (+ (* (- 1.0) S_3) S_2) 0.0) (<= (+ (* (- 1.0) S_2) S_1) 0.0) $x13806 (<= (+ (* (- 1.0) S_4) S_3) 0.0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
