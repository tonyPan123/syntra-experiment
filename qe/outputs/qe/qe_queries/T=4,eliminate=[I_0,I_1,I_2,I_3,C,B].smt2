; benchmark generated from python API
(set-info :status unknown)
(declare-fun A_3 () Real)
(declare-fun L_3 () Real)
(declare-fun S_3 () Real)
(declare-fun S_1 () Real)
(declare-fun S_2 () Real)
(declare-fun A_2 () Real)
(declare-fun L_2 () Real)
(declare-fun S_0 () Real)
(declare-fun A_1 () Real)
(declare-fun L_1 () Real)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(assert
 (let (($x2640 (<= (+ (* (- 1.0) L_1) (* (- 1.0) S_1) A_0) 0.0)))
 (let ((?x859 (* (- 2.0) A_2)))
 (let ((?x836 (* 2.0 L_2)))
 (let ((?x497 (* (- 1.0) L_1)))
 (let ((?x486 (* (- 1.0) L_3)))
 (let (($x898 (<= (+ ?x486 A_3 ?x497 ?x836 A_1 ?x859) 0.0)))
 (let ((?x506 (* (- 1.0) L_2)))
 (let (($x418 (= ?x506 ?x497)))
 (let ((?x555 (* (- 1.0) A_2)))
 (let ((?x879 (* (- 1.0) S_1)))
 (let ((?x1271 (* (- (/ 1.0 3.0)) L_0)))
 (let ((?x1318 (* (/ 2.0 3.0) S_3)))
 (let ((?x8255 (* (/ 4.0 3.0) A_0)))
 (let ((?x1436 (* (/ 1.0 2.0) S_3)))
 (let ((?x2703 (* (/ 1.0 2.0) A_1)))
 (let ((?x2427 (* (- (/ 3.0 2.0)) L_1)))
 (let (($x13148 (or $x418 (<= (+ ?x2427 ?x2703 ?x1436 ?x879 L_2 A_0 ?x555) 0.0) $x2640 (<= (+ ?x8255 ?x1318 ?x1271 ?x879 L_2 ?x497 ?x555) 0.0))))
 (let (($x8067 (<= (+ (* (- 1.0) A_0) L_0 S_2 (* 2.0 A_1) ?x859) 0.0)))
 (let ((?x1113 (* 2.0 A_1)))
 (let ((?x1112 (* (- 2.0) L_1)))
 (let ((?x534 (* (- 1.0) A_0)))
 (let (($x4034 (<= (+ ?x534 L_0 S_2 ?x836 ?x1112 ?x1113 ?x859) 0.0)))
 (let ((?x881 (* (- 3.0) A_2)))
 (let ((?x1627 (* 3.0 A_1)))
 (let ((?x1778 (* (- 3.0) L_1)))
 (let ((?x880 (* 3.0 L_2)))
 (let (($x3522 (<= (+ ?x534 S_3 L_0 ?x880 ?x1778 ?x1627 ?x881) 0.0)))
 (let ((?x595 (* (- 1.0) A_1)))
 (let ((?x869 (* (- 1.0) S_2)))
 (let ((?x488 (* (- 1.0) L_0)))
 (let (($x1046 (<= (+ ?x497 A_1 ?x869) 0.0)))
 (let (($x436 (= ?x497 ?x488)))
 (let (($x13273 (or $x436 $x1046 (<= (+ ?x488 (* (- 2.0) S_2) S_0 L_1 ?x506 A_2) 0.0) (<= (+ A_0 ?x488 ?x869 ?x506 L_1 ?x595 A_2) 0.0))))
 (let ((?x875 (* 2.0 A_2)))
 (let ((?x874 (* (- 2.0) L_2)))
 (let ((?x873 (* (- 2.0) A_3)))
 (let ((?x872 (* 2.0 L_3)))
 (let (($x3078 (<= (+ L_1 ?x595 S_3 ?x872 ?x873 ?x874 ?x875) 0.0)))
 (let (($x440 (= ?x486 ?x506)))
 (let (($x5591 (<= (+ ?x595 (* 2.0 S_2) ?x879 L_3 (* (- 1.0) A_3) A_0) 0.0)))
 (let ((?x517 (* (- 1.0) A_3)))
 (let ((?x1593 (* (/ 3.0 2.0) S_2)))
 (let ((?x1444 (* (/ 1.0 2.0) L_0)))
 (let ((?x1463 (* (/ 1.0 2.0) A_0)))
 (let (($x3106 (<= (+ (* 2.0 L_1) ?x595 S_0 L_3 ?x517 ?x874 ?x534 ?x875) 0.0)))
 (let (($x1967 (<= (+ A_2 ?x506 (* (- 1.0) S_3)) 0.0)))
 (let ((?x1459 (* (- (/ 1.0 2.0)) L_0)))
 (let ((?x1443 (* (- (/ 1.0 2.0)) A_0)))
 (let (($x1115 (<= (+ ?x1112 ?x1113 (* (- 1.0) S_3) L_0 ?x534) 0.0)))
 (let (($x26115 (or $x436 $x1115 (<= (+ ?x1443 (* (- (/ 3.0 2.0)) S_3) ?x1459 S_0 L_1 ?x486 A_3) 0.0) $x1967 (<= (+ A_0 (* (- 1.0) S_3) ?x488 ?x486 A_3 L_1 ?x595) 0.0))))
 (let (($x26865 (or $x436 (not $x1115) (<= (+ A_1 (* (- 2.0) S_3) S_0 ?x486 ?x534 A_3) 0.0) $x1967)))
 (let (($x2267 (<= (+ ?x875 ?x874 L_1 ?x595 L_3 ?x517) 0.0)))
 (let (($x26353 (or $x436 (<= (+ A_0 ?x488 ?x486 A_3 L_1 L_2 ?x595 ?x555) 0.0) $x1046 (<= (+ ?x555 L_2 ?x869 ?x488 S_0 ?x486 A_3 L_1) 0.0))))
 (let ((?x865 (* (- 3.0) L_2)))
 (let ((?x864 (* (- 3.0) A_3)))
 (let ((?x797 (* 3.0 L_3)))
 (let ((?x1916 (* 6.0 S_1)))
 (let ((?x1932 (* 6.0 L_0)))
 (let ((?x1931 (* (- 6.0) A_0)))
 (let (($x1938 (<= (+ ?x1931 ?x1932 ?x1916 ?x797 ?x864 ?x865 ?x1627) 0.0)))
 (let (($x1934 (<= (+ ?x1931 ?x1932 ?x1916 ?x864 ?x1627) 0.0)))
 (let (($x1907 (not $x1934)))
 (let (($x3930 (<= (+ ?x534 L_0 S_2 L_3 ?x517 ?x497 A_1) 0.0)))
 (let ((?x1118 (* 2.0 S_3)))
 (let ((?x886 (* (- 2.0) A_0)))
 (let (($x3208 (<= (+ ?x886 ?x1118 (* 2.0 L_0) ?x797 ?x864 ?x1778 ?x1627) 0.0)))
 (let (($x2104 (<= (+ A_2 ?x506 ?x534 L_0 L_3 ?x517 ?x497 A_1) 0.0)))
 (let (($x1773 (<= (+ (* (- (/ 3.0 2.0)) A_0) (* (/ 3.0 2.0) L_0) ?x1593 ?x864 (* 3.0 A_2)) 0.0)))
 (let (($x868 (<= (+ ?x534 S_3 L_0 ?x797 ?x864 ?x865 (* 3.0 A_2)) 0.0)))
 (let (($x26084 (or $x1046 $x1934 (not (<= (+ A_2 ?x506 ?x534 L_0 ?x517 A_1) 0.0)) $x2104)))
 (let ((?x1411 (* 3.0 S_2)))
 (let (($x1780 (<= (+ (* (- 3.0) A_0) (* 3.0 L_0) ?x1411 ?x797 ?x864 ?x1778 ?x1627) 0.0)))
 (let (($x1804 (<= (+ A_2 ?x506 ?x534 L_0 ?x517 A_1) 0.0)))
 (let (($x4035 (<= (+ ?x534 L_0 S_1 L_2 ?x497 A_1 ?x555) 0.0)))
 (let (($x3116 (<= (+ L_1 ?x595 S_2 L_3 ?x517 ?x506 A_2) 0.0)))
 (let (($x888 (<= (+ ?x886 L_0 S_0 ?x872 ?x873 L_1 ?x865 (* 3.0 A_2)) 0.0)))
 (let ((?x2861 (* (- 2.0) S_2)))
 (let ((?x1121 (* (- 2.0) L_0)))
 (let ((?x878 (* 2.0 A_0)))
 (let (($x12423 (or $x436 $x1046 (<= (+ A_0 ?x1121 (* (- 3.0) S_2) S_0 ?x486 A_3 L_1) 0.0) (<= (+ ?x878 ?x1121 ?x2861 ?x486 A_3 L_1 ?x595) 0.0))))
 (let (($x885 (<= (+ ?x534 L_0 S_1 L_3 ?x517 ?x506 A_2) 0.0)))
 (let (($x883 (<= (+ ?x878 ?x488 ?x879 (* (- 2.0) L_3) (* 2.0 A_3) ?x497 ?x880 ?x881) 0.0)))
 (let (($x26052 (or $x418 $x883 $x2640 (<= (+ ?x1112 A_1 ?x879 ?x486 A_3 ?x836 A_0 ?x859) 0.0))))
 (let (($x877 (<= (+ ?x534 L_0 S_2 ?x872 ?x873 ?x874 ?x875) 0.0)))
 (let ((?x807 (* 2.0 A_3)))
 (let ((?x838 (* (- 2.0) L_3)))
 (let ((?x802 (* (- 1.0) S_3)))
 (let (($x26274 (or $x418 (<= (+ A_0 ?x802 ?x488 ?x838 ?x807 ?x836 ?x859) 0.0) $x1967 (<= (+ ?x497 A_1 ?x802 ?x486 A_3 L_2 ?x555) 0.0))))
 (let (($x4032 (<= (+ A_0 ?x802 ?x488 ?x874 (* 2.0 L_1) (* (- 2.0) A_1) ?x875) 0.0)))
 (let (($x26462 (or $x436 (<= (+ L_1 ?x802 S_0 ?x486 ?x534 A_2) 0.0) $x1967 $x4032)))
 (let (($x27014 (or $x868 $x1967 (not (<= (+ ?x534 S_3 L_0 ?x864 (* 3.0 A_2)) 0.0)))))
 (let (($x3253 (<= (+ ?x534 S_3 L_0 ?x864 (* 3.0 A_2)) 0.0)))
 (let (($x26193 (or $x418 (<= (+ A_0 ?x488 ?x869 ?x486 A_3 L_2 ?x555) 0.0) $x1046)))
 (let (($x1290 (<= (+ (* (/ 2.0 3.0) A_0) (* (/ 1.0 3.0) S_3) (* (- (/ 2.0 3.0)) L_0) ?x869) 0.0)))
 (and (<= ?x497 ?x488) (<= ?x486 ?x506) (<= ?x506 ?x497) (or (<= (+ ?x1443 (* (- (/ 1.0 2.0)) S_3) ?x1444 S_1) 0.0) $x1967) (or $x418 (<= (+ ?x497 S_2 ?x879 L_2 A_0 ?x555) 0.0)) (or $x440 $x1967 $x3078) (or $x1046 $x1290) (or $x440 (<= (+ A_0 S_3 ?x879 L_3 ?x517 ?x497) 0.0)) $x26193 (or $x418 (<= (+ ?x486 A_3 L_2 A_1 ?x859) 0.0) $x1046) (or (not (<= (+ ?x486 A_3 L_2 A_1 ?x859) 0.0)) $x898 $x1046) (or $x418 (<= (+ ?x486 A_3 L_2 A_1 ?x859) 0.0) $x1967) (or (not (<= (+ ?x486 A_3 L_2 A_1 ?x859) 0.0)) $x898 $x1967) (or $x418 $x1967 $x4035) (or $x440 $x1967 $x3253) $x27014 (or $x440 $x877 $x1967) $x26462 $x26274 (or $x440 $x868 $x1046) (or $x436 $x440 $x888 $x1967 $x2267) (or $x440 $x885 $x1967) (or $x877 (not $x1773) $x2640) (or $x436 $x440 $x888 $x2267 $x2640) $x26052 (or $x440 $x885 $x1046) $x12423 (or $x436 $x440 $x888 $x1046 $x2267) (or $x440 $x1967 $x3116) (or $x440 $x2640 $x3116) (or $x418 $x1046 $x4035) (or $x440 $x1046 $x1804 $x1934) (or $x1046 $x1907 $x1938 $x2104) (or $x440 $x1046 $x1780) $x26084 (or $x440 $x1046 $x2104 $x3208) (or $x440 $x868 $x2640) (or $x440 $x1773 $x2640) (or $x440 $x2640 $x3930) (or $x440 $x2104 $x2640 $x3208) (or $x440 $x1967 $x3930) (or $x440 $x1934 $x1967) (or $x1907 $x1938 $x1967) (or $x1046 (<= (+ ?x555 L_2 S_3 A_0 ?x869 ?x488) 0.0)) $x26353 (or $x436 $x440 $x1967 $x2267 $x3106) $x26865 $x26115 (or $x436 $x440 $x2640 $x3106) (or $x440 $x2640 (<= (+ ?x1463 ?x1444 ?x1593 ?x879 ?x517) 0.0)) (or $x440 (<= (+ ?x1463 ?x1444 ?x1593 ?x879 L_3 ?x517 ?x497) 0.0) $x2640) (or $x440 $x2640 $x5591) (or $x440 $x2640 $x3078) (or $x418 $x1046 $x3522) $x13273 (or $x418 $x1967 $x4034) (or $x418 $x2640 $x3522) (or (not $x440) (= ?x486 ?x497) $x2640 $x8067) (or $x2640 $x4034 (not $x8067)) $x13148 (or $x418 $x898 $x2640) (<= (+ S_0 L_0 ?x534) 0.0) (<= (+ L_1 ?x595 S_1) 0.0) (<= (+ ?x879 S_0) 0.0) (<= (+ ?x802 S_2) 0.0) (<= (+ ?x1411 ?x880 ?x881) 0.0) (<= (+ (* (- 3.0) S_2) (* 3.0 S_1)) 0.0) (<= (+ S_3 L_3 ?x517) 0.0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
