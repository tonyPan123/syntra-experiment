; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_3 () Real)
(declare-fun S_4 () Real)
(declare-fun S_2 () Real)
(declare-fun S_1 () Real)
(declare-fun S_0 () Real)
(declare-fun A_4 () Real)
(declare-fun B () Real)
(declare-fun A_5 () Real)
(declare-fun A_3 () Real)
(declare-fun L_3 () Real)
(declare-fun S_5 () Real)
(declare-fun L_2 () Real)
(declare-fun A_2 () Real)
(declare-fun A_1 () Real)
(declare-fun L_1 () Real)
(declare-fun L_0 () Real)
(declare-fun A_0 () Real)
(assert
 (let (($x3264 (<= (+ (* (- 1.0) S_4) (* (- 1.0) L_3) (* (- 1.0) B) A_3) 0.0)))
 (let (($x2237 (<= (+ (* (- 1.0) S_2) (* (- 1.0) L_1) (* (- 1.0) B) A_1) 0.0)))
 (let (($x1809 (<= (+ (* (- 1.0) S_3) (* (- 1.0) B) (* (- 1.0) L_2) A_2) 0.0)))
 (let (($x1823 (<= (+ A_0 (* (- 1.0) S_1) (* (- 1.0) B) (* (- 1.0) L_1)) 0.0)))
 (let (($x1874 (>= B 0.0)))
 (let ((?x36014 (* (- (/ 1.0 3.0)) L_0)))
 (let ((?x32170 (* (/ 1.0 3.0) A_0)))
 (let ((?x35976 (* (- (/ 1.0 3.0)) S_4)))
 (let ((?x1211 (* (- 1.0) A_4)))
 (let (($x19262 (<= (+ S_5 ?x1211 A_2 (* (- 1.0) L_2) (* (- 1.0) S_4) L_1) 0.0)))
 (let (($x16454 (<= (+ S_5 ?x1211 (* (/ 1.0 2.0) L_1) (* (/ 1.0 2.0) A_1) (* (- (/ 1.0 2.0)) S_4)) 0.0)))
 (let (($x2498 (<= (+ (* (- 1.0) L_3) A_3 (* (- 1.0) S_4)) 0.0)))
 (let ((?x2163 (* (- 1.0) S_4)))
 (let ((?x27919 (* (/ 1.0 3.0) S_5)))
 (let ((?x38110 (* (- (/ 2.0 3.0)) L_2)))
 (let ((?x37540 (* (/ 2.0 3.0) A_2)))
 (let (($x46403 (<= (+ (* (/ 3.0 5.0) S_5) (* (/ 2.0 5.0) A_0) (* (- (/ 2.0 5.0)) L_0) ?x2163) 0.0)))
 (let (($x37927 (<= (+ (* (- (/ 1.0 2.0)) L_1) (* (/ 1.0 2.0) A_1) (* (/ 1.0 2.0) S_5) ?x2163) 0.0)))
 (let (($x39918 (<= (+ (* (- (/ 1.0 4.0)) S_5) (* (- (/ 3.0 4.0)) A_0) (* (/ 3.0 4.0) L_0) S_1) 0.0)))
 (let ((?x1343 (* (- 1.0) A_0)))
 (let ((?x15160 (* (- (/ 1.0 2.0)) S_5)))
 (let ((?x14649 (* (- (/ 1.0 2.0)) L_2)))
 (let ((?x14715 (* (/ 1.0 2.0) A_2)))
 (let (($x9691 (<= (+ (* (- 1.0) S_5) (* (- 1.0) L_3) A_3 ?x1343 L_0 S_1) 0.0)))
 (let (($x2564 (= B 0.0)))
 (let (($x2529 (<= (+ (* (- 1.0) S_5) A_4 (* (- 1.0) L_3)) 0.0)))
 (let (($x111079 (or $x2529 $x2564 $x9691 (<= (+ ?x14715 ?x14649 ?x15160 ?x1343 L_0 S_1) 0.0) $x39918)))
 (let ((?x2153 (* (- 5.0) A_1)))
 (let ((?x1761 (* 5.0 B)))
 (let ((?x2185 (* 5.0 L_1)))
 (let ((?x2167 (* (- 4.0) L_0)))
 (let ((?x2192 (* 4.0 A_0)))
 (let (($x1828 (<= (+ ?x1343 S_0 B L_1) 0.0)))
 (let ((?x1000 (* (- 1.0) L_0)))
 (let ((?x1009 (* (- 1.0) L_1)))
 (let (($x828 (= ?x1009 ?x1000)))
 (let (($x42618 (<= (+ S_5 L_3 (* (- 1.0) A_3) A_0 (* (- 1.0) S_3) ?x1000) 0.0)))
 (let ((?x3266 (* (- 2.0) S_3)))
 (let ((?x1855 (* 2.0 A_1)))
 (let ((?x1866 (* (- 2.0) L_1)))
 (let ((?x1117 (* (- 1.0) A_3)))
 (let (($x2491 (<= (+ A_2 (* (- 1.0) L_2) (* (- 1.0) S_3)) 0.0)))
 (let (($x30156 (<= (+ (* (/ 1.0 3.0) L_1) (* (- (/ 1.0 3.0)) A_1) (* (- (/ 2.0 3.0)) S_5) S_3) 0.0)))
 (let ((?x26880 (* (/ 1.0 2.0) A_4)))
 (let ((?x24414 (* (- (/ 1.0 2.0)) B)))
 (let ((?x26318 (* (- (/ 1.0 2.0)) A_5)))
 (let ((?x12891 (* (/ 1.0 2.0) S_5)))
 (let ((?x58283 (* (/ 1.0 3.0) A_4)))
 (let ((?x1244 (* (- 1.0) A_2)))
 (let ((?x56201 (* (- (/ 1.0 3.0)) B)))
 (let ((?x38096 (* (- (/ 1.0 3.0)) A_5)))
 (let ((?x28626 (* (/ 2.0 3.0) A_1)))
 (let ((?x24329 (* (- (/ 2.0 3.0)) L_1)))
 (let (($x54021 (<= (+ ?x24329 ?x28626 ?x27919 ?x38096 L_2 ?x56201 ?x1244 ?x58283) 0.0)))
 (let ((?x9966 (* (- (/ 1.0 2.0)) L_0)))
 (let ((?x10099 (* (/ 1.0 2.0) A_0)))
 (let (($x90530 (or $x2498 (<= (+ ?x12891 ?x10099 ?x9966 ?x26318 L_2 ?x24414 ?x1244 ?x26880) 0.0) $x54021 (<= (+ ?x14715 ?x14649 ?x12891 ?x26318 ?x2163 ?x24414 ?x26880) 0.0))))
 (let (($x89215 (or $x2491 (<= (+ L_3 ?x1117 S_4 ?x1009 A_1 (* (- 1.0) S_3)) 0.0) (<= (+ L_3 ?x1117 S_4 ?x10099 (* (- (/ 1.0 2.0)) S_3) ?x9966) 0.0))))
 (let ((?x1049 (* (- 1.0) B)))
 (let ((?x10101 (* (- (/ 1.0 2.0)) S_3)))
 (let ((?x1302 (* (- 1.0) A_5)))
 (let (($x71387 (<= (+ S_5 L_3 ?x1117 ?x1302 ?x1009 A_1 (* (- 1.0) S_3) ?x1049 A_4) 0.0)))
 (let (($x87831 (or $x2491 $x71387 (<= (+ S_5 L_3 ?x1117 ?x1302 ?x10099 ?x10101 ?x9966 ?x1049 A_4) 0.0))))
 (let ((?x2166 (* (- 4.0) A_1)))
 (let ((?x2164 (* 4.0 L_1)))
 (let ((?x1811 (* 3.0 B)))
 (let ((?x1705 (* (- 3.0) L_0)))
 (let ((?x1709 (* 3.0 A_0)))
 (let (($x107306 (or $x828 $x1828 $x2564 (<= (+ S_5 A_4 ?x1302 ?x1709 ?x1705 ?x1811 ?x2164 ?x2166) 0.0))))
 (let ((?x54453 (* (/ 2.0 3.0) A_4)))
 (let ((?x58230 (* (- (/ 2.0 3.0)) B)))
 (let ((?x37534 (* (- (/ 2.0 3.0)) A_5)))
 (let ((?x30018 (* (/ 2.0 3.0) S_5)))
 (let ((?x28618 (* (/ 1.0 3.0) A_1)))
 (let ((?x29033 (* (- (/ 1.0 3.0)) L_1)))
 (let ((?x26607 (* (/ 3.0 4.0) A_4)))
 (let ((?x26844 (* (- (/ 3.0 4.0)) B)))
 (let ((?x26370 (* (- (/ 3.0 4.0)) A_5)))
 (let ((?x26446 (* (- (/ 1.0 4.0)) L_0)))
 (let ((?x25897 (* (/ 1.0 4.0) A_0)))
 (let ((?x26575 (* (/ 3.0 4.0) S_5)))
 (let (($x26648 (<= (+ ?x26575 ?x25897 ?x26446 ?x26370 ?x2163 ?x26844 ?x26607) 0.0)))
 (let (($x19160 (<= (+ (* 2.0 A_2) (* (- 2.0) L_2) ?x2163 L_1 (* (- 1.0) A_1)) 0.0)))
 (let (($x90417 (or $x2498 $x19160 $x26648 (<= (+ ?x29033 ?x28618 ?x30018 ?x37534 ?x2163 ?x58230 ?x54453) 0.0))))
 (let ((?x1871 (* (- 2.0) A_1)))
 (let ((?x1837 (* 2.0 L_1)))
 (let ((?x1802 (* 2.0 B)))
 (let ((?x1980 (* (- 2.0) L_0)))
 (let ((?x1979 (* 2.0 A_0)))
 (let (($x111471 (or $x828 $x1828 $x2564 (<= (+ S_5 L_3 ?x1117 ?x1979 ?x1980 ?x1802 ?x1837 ?x1871) 0.0))))
 (let (($x39807 (<= (+ ?x15160 (* (- (/ 1.0 2.0)) A_0) (* (/ 1.0 2.0) L_0) S_2) 0.0)))
 (let ((?x1858 (* 2.0 A_3)))
 (let ((?x1854 (* (- 2.0) L_3)))
 (let ((?x3061 (* (- 2.0) S_5)))
 (let (($x30134 (<= (+ (* (/ 2.0 3.0) L_1) (* (- (/ 2.0 3.0)) A_1) (* (- (/ 1.0 3.0)) S_5) S_2) 0.0)))
 (let ((?x1142 (* (- 1.0) A_1)))
 (let ((?x1027 (* (- 1.0) L_3)))
 (let ((?x1793 (* (- 1.0) S_5)))
 (let (($x3031 (<= (+ ?x1793 ?x1027 A_3 L_1 ?x1142 S_2) 0.0)))
 (let (($x19159 (<= (+ (* 3.0 A_2) (* (- 3.0) L_2) (* (- 2.0) S_4) L_0 ?x1343) 0.0)))
 (let (($x16815 (<= (+ (* (- (/ 3.0 2.0)) L_1) (* (/ 3.0 2.0) A_1) (* (- (/ 1.0 2.0)) S_4) L_0 ?x1343) 0.0)))
 (let (($x83483 (or $x2491 (<= (+ ?x12891 ?x10099 ?x9966 ?x26318 (* (- 1.0) S_3) ?x24414 ?x26880) 0.0) (<= (+ ?x24329 ?x28626 ?x27919 ?x38096 (* (- 1.0) S_3) ?x56201 ?x58283) 0.0))))
 (let ((?x1807 (* (- 1.0) S_3)))
 (let ((?x39743 (* (- (/ 3.0 5.0)) L_0)))
 (let ((?x39742 (* (/ 3.0 5.0) A_0)))
 (let ((?x46478 (* (/ 2.0 5.0) S_5)))
 (let (($x36114 (<= (+ (* (- 3.0) L_1) (* 3.0 A_1) S_5 (* (- 4.0) S_3)) 0.0)))
 (let (($x258129 (or $x2529 $x2564 (<= (+ (* (- (/ 1.0 2.0)) A_2) (* (/ 1.0 2.0) L_2) ?x15160 S_3) 0.0))))
 (let ((?x26912 (* (/ 1.0 4.0) A_4)))
 (let ((?x26911 (* (- (/ 1.0 4.0)) B)))
 (let ((?x2005 (* (- 1.0) S_2)))
 (let ((?x26910 (* (- (/ 1.0 4.0)) A_5)))
 (let ((?x26909 (* (- (/ 3.0 4.0)) L_0)))
 (let ((?x26908 (* (/ 3.0 4.0) A_0)))
 (let ((?x26907 (* (/ 1.0 4.0) S_5)))
 (let (($x2463 (<= (+ ?x1009 A_1 ?x2005) 0.0)))
 (let (($x249826 (or $x828 $x1828 $x2564 (<= (+ ?x1244 L_2 S_4 ?x1979 ?x1980 ?x1837 ?x1802 ?x1871) 0.0))))
 (let (($x16636 (<= (+ (* (/ 1.0 2.0) L_1) (* (- (/ 1.0 2.0)) A_1) (* (- (/ 1.0 2.0)) S_4) S_2) 0.0)))
 (let (($x36001 (<= (+ (* (- (/ 2.0 3.0)) S_4) (* (- (/ 1.0 3.0)) A_0) (* (/ 1.0 3.0) L_0) S_2) 0.0)))
 (let (($x254055 (or $x828 $x1828 $x2564 (<= (+ ?x1244 L_2 S_5 ?x1302 ?x1979 ?x1980 ?x1837 B ?x1871 A_4) 0.0))))
 (let (($x106936 (or $x828 $x1828 $x2564 (not (<= (+ L_3 ?x1009) 0.0)) (<= (+ (* 2.0 L_3) ?x1117 S_4 A_0 ?x1000 B ?x1142) 0.0))))
 (let ((?x2233 (* (- 3.0) A_1)))
 (let ((?x2232 (* 3.0 L_1)))
 (let (($x106767 (or $x828 $x1828 $x2564 (<= (+ S_5 ?x1244 L_2 ?x1709 ?x1705 ?x1811 ?x2232 ?x2233) 0.0))))
 (let (($x3295 (<= (+ ?x1009 A_1 ?x1027 (* 2.0 L_2) ?x1049 (* (- 2.0) A_2) A_3) 0.0)))
 (let (($x2266 (<= (+ ?x1343 L_0 ?x1866 L_2 (* (- 2.0) B) ?x1855 ?x1244) 0.0)))
 (let ((?x2175 (* 3.0 A_1)))
 (let ((?x1797 (* (- 3.0) B)))
 (let ((?x2178 (* (- 3.0) L_1)))
 (let ((?x1846 (* 2.0 L_0)))
 (let ((?x1845 (* (- 2.0) A_0)))
 (let (($x30676 (<= (+ ?x35976 (* (- (/ 2.0 3.0)) A_0) (* (/ 2.0 3.0) L_0) ?x1009 ?x1049 A_1) 0.0)))
 (let (($x2952 (not $x3295)))
 (let (($x258534 (or $x828 $x1828 $x2564 (<= (+ S_5 L_3 ?x1117 ?x1302 A_0 ?x1000 L_1 ?x1142 A_4) 0.0))))
 (let (($x36624 (<= (+ (* (- (/ 3.0 4.0)) S_5) (* (- (/ 1.0 4.0)) A_0) (* (/ 1.0 4.0) L_0) S_3) 0.0)))
 (let (($x14454 (<= (+ A_2 (* (- 1.0) L_2) ?x1793 ?x1845 ?x1846 ?x1866 (* (- 2.0) B) ?x1855) 0.0)))
 (let ((?x2224 (+ ?x1793 (* (- 3.0) A_0) (* 3.0 L_0) (* (- 4.0) L_1) (* (- 4.0) B) (* 4.0 A_1))))
 (let (($x256819 (or (<= ?x2224 0.0) $x2529 $x2564 (<= (+ ?x1793 ?x1027 A_3 ?x1343 L_0 ?x1049 ?x1009 A_1) 0.0) $x14454)))
 (let (($x257535 (or $x2498 (<= (+ A_2 (* (- 1.0) L_2) ?x2163 ?x1343 L_0 S_1) 0.0) (<= (+ ?x35976 (* (- (/ 2.0 3.0)) A_0) (* (/ 2.0 3.0) L_0) S_1) 0.0))))
 (let (($x117488 (or $x828 $x1828 $x2564 (<= (+ S_5 ?x1211 A_0 ?x1000 B ?x1837 ?x1142) 0.0))))
 (let ((?x29983 (* (- (/ 2.0 3.0)) S_5)))
 (let ((?x28270 (* (- (/ 1.0 3.0)) A_1)))
 (let ((?x29712 (* (/ 1.0 3.0) L_1)))
 (let ((?x9369 (* 3.0 A_4)))
 (let ((?x3102 (* (- 4.0) A_3)))
 (let ((?x3104 (* 4.0 L_3)))
 (let ((?x6377 (* (- 3.0) A_5)))
 (let ((?x3103 (* 3.0 S_5)))
 (let (($x51791 (<= (+ ?x3103 A_0 ?x1000 ?x6377 ?x3104 B ?x3102 ?x9369) 0.0)))
 (let ((?x1851 (* 2.0 A_4)))
 (let ((?x3097 (* (- 3.0) A_3)))
 (let ((?x3098 (* 3.0 L_3)))
 (let ((?x1831 (* (- 2.0) A_5)))
 (let ((?x1667 (* 2.0 S_5)))
 (let (($x5736 (<= (+ L_3 (* (- 1.0) L_2)) 0.0)))
 (let (($x3457 (<= (+ (* 2.0 A_2) (* (- 2.0) L_2) L_1 ?x1142 L_3 B ?x1117) 0.0)))
 (let (($x253364 (or $x2564 $x3457 $x5736 (<= (+ ?x1009 A_1 ?x1667 ?x1831 ?x3098 B ?x3097 ?x1851) 0.0) $x51791)))
 (let (($x18407 (<= (+ A_0 ?x1000 (* 3.0 S_4) ?x3104 (* 4.0 B) ?x3102) 0.0)))
 (let (($x18455 (<= (+ ?x1979 ?x1980 ?x1027 ?x2232 ?x1049 ?x2233 A_3) 0.0)))
 (let (($x18402 (not $x18455)))
 (let ((?x1875 (* (- 2.0) A_3)))
 (let ((?x1842 (* 2.0 L_3)))
 (let ((?x1018 (* (- 1.0) L_2)))
 (let (($x3902 (<= (+ A_2 ?x1018 S_4 ?x1842 ?x1802 ?x1875) 0.0)))
 (let (($x255215 (or $x828 $x1828 $x2564 (<= (+ ?x1244 L_2 S_3 A_0 ?x1000 L_1 B ?x1142) 0.0))))
 (let (($x258573 (or $x2564 $x3902 $x5736 (<= (+ ?x1009 A_1 (* 2.0 S_4) ?x3098 ?x1811 ?x3097) 0.0) $x18455)))
 (let (($x69285 (or $x2491 (<= (+ A_0 ?x1000 S_4 ?x3266) 0.0) (<= (+ ?x24329 ?x28626 (* (/ 1.0 3.0) S_4) ?x1807) 0.0))))
 (let (($x18438 (<= (+ ?x3103 ?x1979 ?x1980 (* 5.0 L_3) ?x1761 (* (- 5.0) A_3)) 0.0)))
 (let (($x256109 (or $x2564 $x2952 $x5736 $x18438 (<= (+ ?x1009 A_1 S_5 ?x1842 ?x1802 ?x1875) 0.0))))
 (let (($x8041 (<= (+ L_3 ?x1009) 0.0)))
 (let (($x248249 (or $x2564 (<= (+ A_2 ?x1018 S_5 ?x1302 ?x1842 B ?x1875 A_4) 0.0) $x8041 $x51791 $x54021)))
 (let (($x4527 (<= (+ (* 2.0 A_2) (* (- 2.0) L_2) S_5 ?x1811 ?x3098 ?x3097) 0.0)))
 (let ((?x14742 (* (/ 1.0 2.0) L_2)))
 (let ((?x15069 (* (- (/ 1.0 2.0)) A_2)))
 (let (($x63166 (or $x2463 (<= (+ ?x15069 ?x14742 ?x12891 ?x26318 A_0 ?x2005 ?x1000 ?x24414 ?x26880) 0.0))))
 (let (($x9322 (<= (+ L_2 ?x1009) 0.0)))
 (let (($x1873 (<= (+ A_0 ?x1000 ?x1049 ?x1837 ?x1018 ?x1871 A_2) 0.0)))
 (let (($x1276 (not $x1873)))
 (let (($x251456 (or $x1276 $x2564 $x9322 (<= (+ ?x1667 ?x1842 ?x1875 ?x1831 A_0 ?x1000 L_2 ?x1049 ?x1244 ?x1851) 0.0))))
 (let (($x3645 (<= (+ S_5 ?x1211 A_2 ?x1018 ?x1842 B ?x1117) 0.0)))
 (let (($x247303 (or $x2564 $x3645 $x5736 $x18402 (<= (+ ?x3103 (* (- 3.0) A_4) A_0 ?x1000 ?x3104 B ?x1117) 0.0))))
 (let ((?x26042 (* (/ 1.0 4.0) L_0)))
 (let ((?x25772 (* (- (/ 1.0 4.0)) A_0)))
 (let ((?x26881 (* (- (/ 3.0 4.0)) S_5)))
 (let ((?x1804 (* (- 2.0) A_2)))
 (let ((?x1803 (* 2.0 L_2)))
 (let (($x246995 (or $x1276 $x2564 $x9322 (<= (+ S_5 A_0 ?x1000 ?x1302 ?x1803 B ?x1804 A_4) 0.0))))
 (let (($x102731 (or $x828 $x1828 (<= (+ ?x1709 ?x1705 S_4 ?x2164 (* 4.0 B) ?x2166) 0.0) $x2564)))
 (let (($x246635 (or $x1276 $x2564 $x9322 (<= (+ S_5 L_3 ?x1117 A_0 ?x1000 B L_2 ?x1244) 0.0))))
 (let (($x1795 (<= (+ ?x1667 ?x1709 ?x1705 ?x1761 (* 5.0 L_2) (* (- 5.0) A_2)) 0.0)))
 (let ((?x1780 (* 2.0 A_2)))
 (let ((?x1779 (* (- 2.0) L_2)))
 (let ((?x1792 (* (- 2.0) B)))
 (let (($x254297 (or (<= (+ ?x1793 ?x1343 L_0 ?x1792 ?x1779 ?x1780) 0.0) $x2529 $x2564 (<= (+ ?x3061 ?x1854 ?x1858 ?x1343 L_0 ?x1049 ?x1018 A_2) 0.0))))
 (let (($x11185 (<= (+ ?x1667 (* (- 2.0) A_4) A_0 ?x1000 B (* 3.0 L_2) ?x1244) 0.0)))
 (let (($x256100 (or $x2266 $x2498 (<= (+ A_2 ?x1018 ?x2163 ?x1343 L_0 ?x1009 ?x1049 A_1) 0.0))))
 (let (($x1877 (<= (+ ?x1343 L_0 ?x1797 (* (- 3.0) L_2) ?x1842 (* 3.0 A_2) ?x1875) 0.0)))
 (let ((?x1813 (* (- 3.0) A_2)))
 (let ((?x1812 (* 3.0 L_2)))
 (let (($x117597 (or $x1873 $x2564 (<= (+ ?x1866 ?x1855 S_5 ?x1302 ?x1812 ?x1802 ?x1813 A_4) 0.0) $x9322)))
 (let (($x44699 (or $x2463 (<= (+ ?x1244 L_2 S_4 ?x1979 (* (- 2.0) S_2) ?x1980) 0.0))))
 (let (($x44833 (or $x2491 (<= (+ S_5 ?x1211 ?x10099 ?x10101 ?x9966 L_1) 0.0) (<= (+ S_5 ?x1211 A_1 ?x1807) 0.0))))
 (let (($x38822 (or $x2491 (<= (+ (* (- (/ 1.0 2.0)) A_0) ?x10101 (* (/ 1.0 2.0) L_0) S_1) 0.0))))
 (let (($x38593 (or $x2463 (<= (+ ?x1244 L_2 S_5 ?x1709 (* (- 3.0) S_2) ?x1705) 0.0))))
 (let (($x38208 (or $x2463 (<= (+ S_5 L_3 ?x1117 ?x1979 (* (- 2.0) S_2) ?x1980) 0.0))))
 (let (($x36204 (or $x2463 (<= (+ S_5 L_3 ?x1117 ?x1302 A_0 ?x1000 ?x2005 ?x1049 A_4) 0.0))))
 (let (($x115372 (or $x2564 $x5736 (<= (+ A_2 ?x1018 ?x1343 L_0 S_1 L_3 B ?x1117) 0.0) (<= (+ ?x1845 ?x1846 (* 3.0 S_1) L_3 B ?x1117) 0.0))))
 (let (($x18453 (<= (+ ?x1845 ?x1846 L_3 ?x2178 ?x1792 ?x2175 ?x1117) 0.0)))
 (let (($x9361 (not $x9322)))
 (let (($x117556 (or $x2564 $x8041 $x9361 (<= (+ A_2 ?x1018 ?x1343 L_0 L_3 ?x1009 A_1 ?x1117) 0.0) $x18453)))
 (let (($x11125 (<= (+ ?x1842 ?x1875 (* 2.0 S_4) A_0 ?x1000 B L_2 ?x1244) 0.0)))
 (let (($x122135 (or $x1873 $x2564 $x9322 (<= (+ S_5 L_3 ?x1117 ?x1302 ?x1009 A_1 L_2 ?x1244 A_4) 0.0))))
 (let (($x259338 (or $x2564 $x3645 $x5736 (<= (+ ?x1667 (* (- 2.0) A_4) ?x1009 A_1 B ?x3098 ?x1117) 0.0) $x18455)))
 (let (($x112140 (or $x2564 (<= (+ L_1 ?x1142 (* 2.0 S_2) L_3 B ?x1117) 0.0) $x5736)))
 (let (($x13753 (<= (+ ?x15069 ?x14742 ?x15160 ?x1027 ?x1049 A_3) 0.0)))
 (let (($x2962 (<= (+ S_5 L_0 B ?x1211) 0.0)))
 (let (($x2759 (<= (+ ?x1837 ?x1871 ?x1793 (* (- 3.0) L_2) ?x1797 (* 3.0 A_2)) 0.0)))
 (let (($x116441 (or $x2529 $x2564 $x2759 (<= (+ ?x1793 ?x1027 A_3 L_1 ?x1142 ?x1018 ?x1049 A_2) 0.0))))
 (let ((?x1799 (* 3.0 A_2)))
 (let ((?x1798 (* (- 3.0) L_2)))
 (let ((?x1796 (* (- 2.0) S_4)))
 (let (($x110226 (or (<= (+ A_0 ?x1000 (* 2.0 S_3) ?x1811 ?x1812 ?x1813) 0.0) $x2564 (<= (+ ?x1009 A_1 S_3 ?x1803 ?x1802 ?x1804) 0.0) $x9322)))
 (let (($x246826 (or (<= (+ ?x1343 L_0 (* 2.0 S_1) B L_2 ?x1244) 0.0) $x2564 $x9322)))
 (let (($x27582 (or $x2491 (<= (+ ?x1009 A_1 ?x3266 ?x1027 ?x1049 A_3) 0.0) (<= (+ A_0 ?x1000 (* (- 3.0) S_3) ?x1854 ?x1792 ?x1858) 0.0))))
 (let ((?x3433 (* (- 4.0) A_2)))
 (let ((?x3435 (* 4.0 L_2)))
 (let ((?x2165 (* 4.0 B)))
 (let (($x115804 (or $x828 $x1828 $x2564 (<= (+ ?x1244 L_2 A_0 ?x1000 ?x1027 L_1 ?x1142 A_3) 0.0))))
 (let (($x19251 (or $x2463 (<= (+ ?x1979 ?x1980 (* (- 3.0) S_2) ?x1027 ?x1049 A_3) 0.0))))
 (let (($x108472 (or $x2564 $x5736 (<= (+ ?x1343 L_0 (* 3.0 S_2) ?x1842 ?x1802 ?x1875) 0.0))))
 (let (($x250986 (or $x1873 $x2564 $x9322 (<= (+ S_5 L_3 ?x1117 ?x1866 ?x1855 ?x1802 ?x1803 ?x1804) 0.0))))
 (let (($x121375 (or $x1873 $x2564 $x9322 (<= (+ L_3 ?x1117 S_4 ?x1009 A_1 L_2 B ?x1244) 0.0))))
 (let (($x119046 (or $x1873 $x2564 (<= (+ S_5 ?x1211 ?x1009 A_1 B ?x1803 ?x1244) 0.0) $x9322)))
 (let (($x13480 (or $x2463 (<= (+ ?x1244 L_2 A_0 ?x2005 ?x1000 ?x1027 ?x1049 A_3) 0.0))))
 (let (($x830 (= ?x1018 ?x1009)))
 (let (($x252355 (or $x830 (<= (+ A_0 ?x1000 B ?x1812 ?x1854 ?x1813 ?x1858) 0.0) $x2564 (<= (+ ?x1009 A_1 ?x1803 ?x1027 B ?x1804 A_3) 0.0))))
 (let (($x93928 (or $x828 $x1828 (<= (+ ?x1979 ?x1980 ?x1027 ?x2232 ?x1802 ?x2233 A_3) 0.0) $x2564)))
 (let (($x95726 (or $x828 $x1828 (<= (+ A_0 ?x1000 ?x1837 ?x1018 B ?x1871 A_2) 0.0) $x2564)))
 (let (($x7738 (or (<= (+ A_0 ?x1000 (* (- 2.0) S_2) ?x1049 ?x1018 A_2) 0.0) $x2463)))
 (let (($x248635 (or $x2498 (not (<= (+ ?x1027 A_3 ?x1009 A_1 ?x1802 ?x1803 ?x1804) 0.0)))))
 (let (($x5759 (<= (+ ?x1027 A_3 ?x1009 A_1 ?x1802 ?x1803 ?x1804) 0.0)))
 (and (<= ?x1009 ?x1000) (<= ?x1027 ?x1018) (<= ?x1018 ?x1009) (or $x828 $x1828 (<= (+ S_1 L_1 B ?x1142) 0.0)) (or (= ?x1027 ?x1018) (<= (+ S_3 L_3 B ?x1117) 0.0)) (or (<= (+ L_1 ?x1142 ?x2163 ?x1779 ?x1792 ?x1780) 0.0) $x5759) $x248635 $x7738 $x95726 (or $x830 (<= (+ S_2 B L_2 ?x1244) 0.0)) $x93928 (or $x830 (<= (+ ?x1343 L_0 ?x1049 ?x1866 L_2 ?x1855 ?x1244) 0.0) $x2564) $x252355 (or (<= (+ ?x1343 L_0 ?x1807 ?x1866 ?x1792 ?x1855) 0.0) $x2491) (or $x2564 (<= (+ L_1 ?x1142 L_3 ?x1779 ?x1049 ?x1780 ?x1117) 0.0) $x5736) $x13480 $x119046 $x121375 $x250986 $x108472 (or $x2564 $x5736 (<= (+ ?x1343 L_0 ?x1842 ?x1798 ?x1049 ?x1799 ?x1875) 0.0)) $x19251 $x115804 (or $x1873 $x2564 $x9322 (<= (+ S_5 ?x2178 ?x2175 ?x2165 ?x3435 ?x3433) 0.0)) $x27582 $x246826 $x110226 (or (not $x1877) (<= (+ ?x1343 L_0 ?x1796 ?x1797 ?x1798 ?x1799) 0.0)) $x116441 (or $x2529 $x2962 (<= (+ ?x1244 L_2 L_0 ?x1854 ?x1792 ?x1858 ?x1211) 0.0)) (or $x2529 $x2962 (<= (+ ?x1244 ?x1803 ?x1854 ?x1792 ?x1858 ?x1211) 0.0)) (or $x2962 (not (<= (+ ?x1244 L_2 ?x1027 ?x1792 ?x1858 ?x1211) 0.0)) $x13753) (or $x2529 $x2564 $x13753) $x112140 $x259338 $x122135 (or $x2463 (<= (+ L_3 ?x1117 S_4 A_0 ?x2005 ?x1000) 0.0)) (or $x1276 $x2564 $x9322 $x11125) (or $x828 $x1828 (<= (+ A_0 ?x1000 S_2 ?x1837 ?x1802 ?x1871) 0.0) $x2564) (or $x2564 $x2952 $x8041 $x9361 $x18453) $x117556 $x115372 $x36204 $x38208 $x38593 (or $x2463 (<= (+ S_5 ?x2192 ?x2167 (* (- 5.0) S_2)) 0.0)) $x38822 (or $x2463 (<= (+ S_5 ?x1211 A_0 ?x2005 ?x1000 L_1) 0.0)) $x44833 (or $x1873 $x2564 (<= (+ ?x1866 ?x1855 S_4 ?x1812 ?x1811 ?x1813) 0.0) $x9322) $x44699 $x117597 (or $x1877 $x2498) $x256100 (or $x1276 $x2564 $x9322 $x11185) (or $x2463 (<= (+ ?x1979 ?x1980 S_3 (* (- 3.0) S_2)) 0.0)) $x254297 (or $x1276 (<= (+ A_0 ?x1000 S_4 ?x1802 ?x1803 ?x1804) 0.0) $x2564 $x9322) (or $x1276 $x1795 $x2564 $x9322) $x246635 $x102731 $x246995 (or $x2529 $x2564 (<= (+ ?x26881 ?x25772 ?x26042 ?x1027 ?x1049 A_3) 0.0)) (or $x2463 (<= (+ ?x1244 L_2 S_3 A_0 ?x2005 ?x1000) 0.0)) $x247303 (or $x2463 (<= (+ ?x26908 ?x26909 (* (/ 1.0 4.0) S_4) ?x2005) 0.0)) $x251456 $x63166 (or $x2564 $x3295 $x4527 $x8041 $x18438) $x248249 $x256109 $x69285 $x258573 $x255215 (or $x2564 $x3902 $x5736 $x18402 $x18407) $x253364 (or $x2529 $x2564 (<= (+ ?x29712 ?x28270 ?x29983 ?x1027 ?x1049 A_3) 0.0)) (or $x2529 $x2564 $x3031 $x39807) $x117488 $x257535 (or $x828 $x1828 (<= (+ ?x1979 ?x1980 S_3 ?x2232 ?x1811 ?x2233) 0.0) $x2564) $x256819 (or $x2529 $x2564 $x36624) $x258534 (or $x2498 $x2952 $x30676) (or (<= (+ ?x1845 ?x1846 ?x2163 ?x2178 ?x1797 ?x2175) 0.0) (not $x2266) $x3295) $x106767 $x106936 $x254055 (or $x2498 $x36001) (or $x2498 $x16636) $x249826 (or $x2463 (<= (+ ?x26907 ?x26908 ?x26909 ?x26910 ?x2005 ?x26911 ?x26912) 0.0)) $x258129 (or $x2491 $x36114 (<= (+ ?x46478 ?x39742 ?x39743 ?x1807) 0.0)) $x83483 (or $x2498 $x16815 $x19159 $x26648) (or $x2529 $x2564 $x3031 $x30134) (or $x2529 $x2564 (<= (+ ?x3061 ?x1854 ?x1858 ?x1343 L_0 S_2) 0.0) $x39807) $x111471 $x90417 $x107306 $x87831 $x89215 $x90530 (or $x2529 $x2564 $x30156) (or $x2491 (<= (+ S_5 L_3 ?x1117 ?x1866 ?x1855 ?x3266) 0.0) $x42618) (or $x828 $x1828 (<= (+ S_5 ?x2192 ?x2167 ?x2185 ?x1761 ?x2153) 0.0) $x2564) $x111079 (or $x2498 $x37927 $x46403 (<= (+ ?x37540 ?x38110 ?x27919 ?x2163) 0.0)) (or $x2498 $x16454 $x19262 (<= (+ S_5 ?x1211 ?x35976 ?x32170 ?x36014 L_1) 0.0)) $x1874 $x1823 $x1809 (<= (+ ?x1343 L_0 S_0) 0.0) $x2237 (<= (+ L_1 ?x1142 S_1) 0.0) (<= (+ L_3 ?x1117 S_3) 0.0) (<= (+ ?x1211 L_3 S_4) 0.0) (<= (+ S_5 ?x1302 L_3) 0.0) (<= (+ ?x1244 L_2 S_2) 0.0) (<= (+ ?x1793 S_4) 0.0) $x3264 (<= (+ ?x1302 ?x1049 A_4) 0.0) (<= (+ (* (- 1.0) S_1) S_0) 0.0) (<= (+ ?x2005 S_1) 0.0) (<= (+ ?x1807 S_2) 0.0) (<= (+ ?x2163 S_3) 0.0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
