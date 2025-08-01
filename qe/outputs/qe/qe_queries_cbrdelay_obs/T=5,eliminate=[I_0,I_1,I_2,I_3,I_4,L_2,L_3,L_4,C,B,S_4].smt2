; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_1 () Real)
(declare-fun S_3 () Real)
(declare-fun A_1 () Real)
(declare-fun L_1 () Real)
(declare-fun S_0 () Real)
(declare-fun L_0 () Real)
(declare-fun A_0 () Real)
(declare-fun A_2 () Real)
(declare-fun A_3 () Real)
(declare-fun A_4 () Real)
(declare-fun loss_rate_tol () Real)
(declare-fun S_2 () Real)
(assert
 (let (($x2818 (<= (+ (* (- 1.0) S_3) (* (- 1.0) A_0) (* 2.0 S_1) L_0) 0.0)))
 (let (($x34 (>= L_0 0.0)))
 (let (($x78226 (<= 0.0 (+ (* (- (/ 1.0 2.0)) A_4) (* (/ 1.0 2.0) A_3) S_1 (* (- 1.0) S_0)))))
 (let (($x78227 (not $x78226)))
 (let ((?x1054 (* (- 1.0) S_0)))
 (let ((?x2941 (* (/ 4.0 3.0) S_1)))
 (let ((?x2254 (* (- (/ 1.0 3.0)) A_4)))
 (let ((?x2345 (* (/ 1.0 3.0) L_1)))
 (let (($x76257 (not (<= 0.0 (+ ?x2345 ?x2254 ?x2941 ?x1054)))))
 (let (($x75545 (not (<= 0.0 (+ (* (- 1.0) A_4) A_2 S_1 ?x1054 loss_rate_tol)))))
 (let (($x72753 (not (<= 0.0 loss_rate_tol))))
 (let ((?x1892 (* (- 1.0) loss_rate_tol)))
 (let ((?x468 (* (- 1.0) A_3)))
 (let ((?x440 (* (- 1.0) S_3)))
 (let (($x8837 (not (<= (+ ?x440 A_4 ?x468 S_2 ?x1892) 0.0))))
 (let ((?x3536 (* 2.0 loss_rate_tol)))
 (let ((?x515 (* (- 1.0) S_1)))
 (let ((?x1766 (* 2.0 A_3)))
 (let ((?x3595 (* (- 2.0) A_4)))
 (let (($x77140 (not (<= (- 5.0) (+ S_3 ?x3595 ?x1766 ?x515 ?x3536)))))
 (let (($x76674 (not (<= 0.0 (+ (* (- (/ 3.0 4.0)) A_4) (* (/ 3.0 4.0) A_3) S_2 ?x1054)))))
 (let ((?x11603 (* (/ 3.0 2.0) loss_rate_tol)))
 (let ((?x8922 (* (/ 3.0 2.0) A_2)))
 (let ((?x8038 (* (- (/ 3.0 2.0)) A_4)))
 (let (($x76039 (not (<= 0.0 (+ ?x8038 ?x8922 S_2 ?x1054 ?x11603)))))
 (let (($x73219 (<= 0.0 (+ (* (/ 3.0 5.0) L_1) (* (- (/ 3.0 5.0)) A_4) (* (/ 8.0 5.0) S_2) ?x1054))))
 (let (($x73220 (not $x73219)))
 (let (($x76131 (not (<= 0.0 (+ (* (- (/ 1.0 2.0)) A_4) (* (/ 1.0 2.0) A_3) S_2 ?x515)))))
 (let ((?x6859 (* (/ 1.0 2.0) loss_rate_tol)))
 (let ((?x2973 (* (/ 1.0 2.0) L_1)))
 (let ((?x5218 (* (- (/ 1.0 2.0)) A_1)))
 (let ((?x4789 (* (/ 1.0 2.0) A_3)))
 (let ((?x2987 (* (- (/ 1.0 2.0)) A_4)))
 (let ((?x963 (* (/ 1.0 2.0) S_3)))
 (let (($x75967 (not (<= 0.0 (+ ?x963 ?x2987 ?x4789 ?x5218 ?x2973 ?x6859)))))
 (let (($x75893 (not (<= 0.0 (+ (* (- 1.0) A_4) A_2 S_2 ?x515 loss_rate_tol)))))
 (let (($x73821 (<= 0.0 (+ (* (/ 2.0 5.0) L_1) (* (- (/ 2.0 5.0)) A_4) (* (/ 7.0 5.0) S_2) ?x515))))
 (let (($x73822 (not $x73821)))
 (let ((?x464 (* (- 1.0) A_4)))
 (let ((?x564 (* (- 1.0) L_1)))
 (let (($x73113 (not (<= 0.0 (+ ?x564 ?x464 A_3 A_1 ?x515 loss_rate_tol)))))
 (let (($x76813 (not (<= 0.0 (+ L_1 (* 2.0 S_3) ?x464 ?x1054)))))
 (let (($x74752 (not (<= 0.0 (+ S_3 ?x3595 (* 2.0 A_2) ?x1054 ?x3536)))))
 (let (($x73010 (<= 0.0 (+ ?x564 ?x464 A_3 A_1 (* (- 1.0) A_0) loss_rate_tol L_0))))
 (let (($x73011 (not $x73010)))
 (let (($x78611 (not (<= (- 5.0) (+ ?x963 ?x8038 (* (/ 3.0 2.0) A_3) (* (- (/ 1.0 2.0)) S_0) ?x11603)))))
 (let (($x78274 (not (<= (- 10.0) (+ ?x3595 ?x1766 S_2 ?x515 ?x3536)))))
 (let (($x78597 (not (<= (- 5.0) (+ S_3 ?x3595 ?x1766 (* (- 1.0) A_0) ?x3536 L_0)))))
 (let (($x76134 (not (<= 0.0 (+ ?x2987 ?x4789 (* (- 1.0) A_0) S_2 L_0)))))
 (let (($x75607 (<= 0.0 (+ ?x464 A_2 (* (- 1.0) A_0) S_2 loss_rate_tol L_0))))
 (let (($x75608 (not $x75607)))
 (let ((?x4670 (* (/ 7.0 5.0) S_2)))
 (let ((?x993 (* (- 1.0) A_0)))
 (let ((?x4502 (* (- (/ 2.0 5.0)) A_4)))
 (let ((?x4612 (* (/ 2.0 5.0) L_1)))
 (let (($x73747 (not (<= 0.0 (+ ?x4612 ?x4502 ?x993 ?x4670 L_0)))))
 (let ((?x1976 (* (- 2.0) L_1)))
 (let ((?x504 (* (- 1.0) S_2)))
 (let ((?x2212 (* 2.0 A_1)))
 (let (($x75184 (not (<= 0.0 (+ ?x3595 ?x1766 ?x2212 ?x504 ?x1054 ?x1976 ?x3536)))))
 (let (($x76872 (not (<= (- 5.0) (+ L_1 ?x464 (* 2.0 S_2) ?x515 loss_rate_tol)))))
 (let (($x74904 (<= 0.0 (+ (* (/ 3.0 4.0) L_1) (* (/ 7.0 4.0) S_3) (* (- (/ 3.0 4.0)) A_4) ?x515))))
 (let (($x74909 (not $x74904)))
 (let (($x74126 (not (<= 0.0 (+ S_3 ?x8038 ?x8922 ?x515 ?x11603)))))
 (let (($x73110 (not (<= (- 5.0) (+ ?x3595 ?x1766 A_1 ?x1054 ?x564 ?x3536)))))
 (let (($x80215 (<= (- 5.0) (+ ?x464 A_3 (* (/ 1.0 2.0) S_1) (* (- (/ 1.0 2.0)) S_0) loss_rate_tol))))
 (let (($x80216 (not $x80215)))
 (let (($x76128 (not (<= (- 20.0) (+ ?x464 A_3)))))
 (let (($x75148 (not (<= (- 5.0) (+ ?x2254 (* (/ 1.0 3.0) A_1) (* (/ 1.0 3.0) loss_rate_tol))))))
 (let (($x73564 (not (<= (- 5.0) (+ (* (/ 1.0 7.0) L_1) (* (- (/ 1.0 7.0)) A_4) (* (/ 1.0 7.0) S_0))))))
 (let (($x70046 (not (<= (- 5.0) (+ (* (- 1.0) A_2) A_1)))))
 (let (($x76718 (not (<= 0.0 (+ ?x464 A_1 S_2 ?x1054 loss_rate_tol)))))
 (let (($x73963 (not (<= (- 5.0) (+ (* (/ 1.0 4.0) L_1) (* (/ 1.0 4.0) S_3) (* (- (/ 1.0 4.0)) A_4))))))
 (let (($x73127 (not (<= (- 10.0) (+ ?x464 A_3 loss_rate_tol)))))
 (let (($x77771 (not (<= (- 5.0) (+ ?x464 A_3 ?x993 S_1 loss_rate_tol L_0)))))
 (let ((?x2822 (* 2.0 L_0)))
 (let ((?x1297 (* 2.0 S_1)))
 (let ((?x2770 (* (- 2.0) A_0)))
 (let (($x72350 (not (<= 0.0 (+ A_2 ?x464 ?x2770 ?x1297 loss_rate_tol ?x2822)))))
 (let (($x72192 (<= 0.0 (+ (* (/ 1.0 6.0) L_1) (* (- (/ 1.0 6.0)) A_4) ?x993 (* (/ 7.0 6.0) S_1) L_0))))
 (let (($x72182 (not $x72192)))
 (let (($x72164 (<= 0.0 (+ L_1 ?x468 ?x2770 (* 3.0 S_1) ?x2822))))
 (let (($x80229 (<= 0.0 (+ L_1 (* (- (/ 1.0 4.0)) A_4) (* (/ 1.0 4.0) A_3) (* (- 1.0) A_1) S_2))))
 (let (($x80230 (not $x80229)))
 (let ((?x476 (* (- 1.0) A_1)))
 (let ((?x22572 (+ ?x464 A_3 ?x476 S_2 L_1 loss_rate_tol)))
 (let (($x76458 (not (<= (- 5.0) ?x22572))))
 (let (($x73919 (<= 0.0 (+ (* (/ 6.0 5.0) L_1) (* (- (/ 1.0 5.0)) A_4) ?x476 (* (/ 6.0 5.0) S_2)))))
 (let (($x73920 (not $x73919)))
 (let ((?x5238 (* (/ 1.0 3.0) loss_rate_tol)))
 (let ((?x5469 (* (- (/ 2.0 3.0)) A_1)))
 (let ((?x24024 (+ L_1 ?x2254 ?x5469 S_2 ?x5238)))
 (let (($x73977 (not (<= (- 5.0) (+ (* (/ 1.0 5.0) L_1) (* (- (/ 1.0 5.0)) A_4) (* (/ 1.0 5.0) S_2))))))
 (let (($x75978 (not (<= 0.0 (+ L_1 (* (/ 1.0 2.0) A_2) ?x2987 ?x476 S_2 ?x6859)))))
 (let ((?x19515 (* (/ 4.0 3.0) loss_rate_tol)))
 (let ((?x5491 (* (/ 4.0 3.0) A_1)))
 (let ((?x6839 (* (- (/ 4.0 3.0)) A_4)))
 (let (($x76034 (not (<= 0.0 (+ S_3 ?x6839 ?x5491 ?x1054 ?x19515)))))
 (let (($x72733 (not (<= (- 5.0) (+ (* (/ 1.0 6.0) L_1) (* (- (/ 1.0 6.0)) A_4) (* (/ 1.0 6.0) S_1))))))
 (let ((?x7812 (* (- (/ 3.0 2.0)) L_1)))
 (let ((?x5118 (* (/ 3.0 2.0) A_1)))
 (let ((?x5532 (* (/ 3.0 2.0) A_3)))
 (let ((?x967 (* (- (/ 1.0 2.0)) S_3)))
 (let (($x75819 (not (<= 0.0 (+ ?x967 ?x8038 ?x5532 ?x5118 ?x1054 ?x7812 ?x11603)))))
 (let (($x76527 (not (<= (- 5.0) (+ ?x464 A_3 A_1 ?x504 ?x564 loss_rate_tol)))))
 (let ((?x4505 (* (/ 2.0 3.0) loss_rate_tol)))
 (let ((?x5481 (* (/ 2.0 3.0) A_1)))
 (let ((?x2844 (* (- (/ 2.0 3.0)) A_4)))
 (let (($x76252 (not (<= 0.0 (+ ?x2844 ?x5481 S_1 ?x1054 ?x4505)))))
 (let (($x75337 (not (<= (- (/ 20.0 3.0)) (+ ?x2254 (* (/ 1.0 3.0) A_1) ?x5238)))))
 (let (($x75243 (not (<= (- 25.0) (+ L_1 ?x464 S_0 loss_rate_tol)))))
 (let (($x73544 (not (<= (- 5.0) (+ (* (- (/ 1.0 6.0)) A_4) (* (/ 1.0 6.0) A_1))))))
 (let ((?x3508 (* 3.0 loss_rate_tol)))
 (let ((?x3535 (* 3.0 A_3)))
 (let ((?x3593 (* (- 3.0) A_4)))
 (let ((?x22475 (+ ?x3593 ?x3535 S_2 ?x1054 ?x3508)))
 (let (($x77861 (not (<= (- 15.0) ?x22475))))
 (let (($x77161 (not (<= 0.0 (+ ?x2844 ?x5481 S_2 ?x515 ?x4505)))))
 (let ((?x9639 (* 4.0 loss_rate_tol)))
 (let ((?x6522 (* 4.0 A_3)))
 (let ((?x5710 (* (- 4.0) A_4)))
 (let (($x73879 (not (<= 0.0 (+ S_3 ?x5710 ?x6522 ?x1054 ?x9639)))))
 (let (($x161475 (or $x72753 $x73920 (not (<= 0.0 (+ L_1 ?x464 A_3 ?x476 S_2 loss_rate_tol))) $x80230)))
 (let (($x72842 (<= 0.0 (+ (* 3.0 L_1) (* 3.0 S_3) ?x464 (* (- 2.0) A_1)))))
 (let (($x72843 (not $x72842)))
 (let (($x83197 (or $x72753 (not (<= 0.0 (+ L_1 S_3 ?x3595 ?x1766 ?x476 ?x3536))) $x72843)))
 (let (($x73946 (not (<= 0.0 (+ S_3 ?x8038 ?x8922 ?x993 ?x11603 L_0)))))
 (let (($x72966 (<= 0.0 (+ (* 4.0 S_3) (* (- 3.0) A_1) ?x515 (* 3.0 L_1)))))
 (let (($x72969 (not $x72966)))
 (let (($x415 (<= 0.0 (+ ?x564 L_0))))
 (let (($x161624 (or $x415 $x72969 $x73011 $x73946 (not (<= 0.0 (+ L_1 A_4 ?x468 ?x476 S_0))))))
 (let (($x69954 (not (<= (- 5.0) (+ ?x464 A_3 loss_rate_tol)))))
 (let (($x76112 (not (<= 0.0 (+ ?x476 (* 2.0 S_2) ?x515 L_1)))))
 (let (($x51 (= L_1 L_0)))
 (let ((?x6860 (* (- (/ 1.0 2.0)) loss_rate_tol)))
 (let ((?x3055 (* (/ 1.0 2.0) A_4)))
 (let ((?x6382 (* (- (/ 1.0 2.0)) A_2)))
 (let (($x6680 (not (<= (+ ?x564 ?x6382 ?x440 ?x3055 A_1 ?x6860) 0.0))))
 (let (($x160713 (or $x72753 $x72843 (not (<= 0.0 (+ L_1 A_2 S_3 ?x464 ?x476 loss_rate_tol))))))
 (let (($x75512 (not (<= 0.0 (+ ?x476 ?x993 (* 2.0 S_2) L_1 L_0)))))
 (let (($x78071 (<= 0.0 (+ (* 5.0 S_3) (* (- 4.0) A_1) ?x1054 (* 4.0 L_1)))))
 (let (($x78072 (not $x78071)))
 (let (($x5770 (not (<= (+ ?x564 ?x440 A_4 ?x468 A_1 ?x1892) 0.0))))
 (let (($x75125 (not (<= 0.0 (+ S_3 ?x464 A_1 ?x993 loss_rate_tol L_0)))))
 (let (($x72956 (<= 0.0 (+ (* 4.0 S_3) (* (- 3.0) A_1) ?x993 (* 3.0 L_1) L_0))))
 (let (($x72963 (not $x72956)))
 (let ((?x6988 (* (/ 3.0 2.0) L_1)))
 (let ((?x5802 (* (- (/ 3.0 2.0)) A_1)))
 (let ((?x8565 (* (/ 5.0 2.0) S_3)))
 (let (($x95522 (or $x415 $x72753 (not (<= 0.0 (+ ?x8565 ?x8038 ?x5532 ?x5802 ?x993 ?x6988 L_0))) (not (<= 0.0 (+ S_3 ?x3593 ?x3535 ?x993 L_0))))))
 (let (($x76594 (<= (- 5.0) (+ L_1 ?x464 ?x993 (* 2.0 S_2) loss_rate_tol L_0))))
 (let (($x76143 (not (<= (- 10.0) (+ ?x3595 ?x1766 ?x993 S_2 ?x3536 L_0)))))
 (let (($x77346 (not (<= 0.0 (+ S_3 ?x468 A_1 ?x504)))))
 (let (($x76175 (<= (- 5.0) (+ ?x967 ?x2987 ?x4789 (* (/ 1.0 2.0) A_1) (* (- (/ 1.0 2.0)) L_1) ?x6859))))
 (let (($x76176 (not $x76175)))
 (let (($x76300 (<= (- 5.0) (+ L_1 ?x464 (* (/ 5.0 2.0) S_1) (* (- (/ 3.0 2.0)) S_0) loss_rate_tol))))
 (let (($x75543 (not (<= 0.0 (+ ?x5802 (* (/ 5.0 2.0) S_2) ?x1054 ?x6988)))))
 (let (($x74709 (not (<= (- 10.0) ?x22572))))
 (let (($x160490 (or $x51 $x72753 $x74709 $x75543 (not (<= (- 5.0) (+ ?x2987 (* (/ 1.0 2.0) A_2) ?x476 S_2 L_1 ?x6859))))))
 (let (($x74735 (<= (- 5.0) (+ (* (- (/ 1.0 3.0)) A_1) (* (/ 1.0 3.0) S_1) ?x2345))))
 (let (($x74736 (not $x74735)))
 (let (($x162088 (or $x415 $x72753 (not (<= 0.0 (+ ?x8565 ?x8038 ?x5532 ?x5802 ?x515 ?x6988))) (not (<= 0.0 (+ S_3 ?x3593 ?x3535 ?x515))))))
 (let (($x75419 (not (<= 0.0 (+ S_3 ?x464 A_1 ?x515 loss_rate_tol)))))
 (let (($x72892 (<= 0.0 (+ (* 3.0 S_3) (* (- 2.0) A_1) ?x504 (* 2.0 L_1)))))
 (let (($x72898 (not $x72892)))
 (let (($x74045 (not (<= 0.0 (+ S_3 ?x464 A_2 ?x504 loss_rate_tol)))))
 (let (($x73230 (not (<= (- 5.0) (+ S_3 ?x476 L_1)))))
 (let (($x70583 (not (<= (- 10.0) (+ ?x464 A_2 loss_rate_tol)))))
 (let (($x73176 (not (<= 0.0 (+ ?x5469 (* (/ 5.0 3.0) S_1) ?x1054 (* (/ 2.0 3.0) L_1))))))
 (let (($x162792 (or $x415 $x72753 $x74126 $x75819 (not (<= 0.0 (+ (* 2.0 S_3) ?x464 A_2 ?x476 ?x515 L_1))))))
 (let (($x76462 (<= 0.0 (+ ?x2987 (* (/ 1.0 2.0) A_2) ?x5218 (* (/ 3.0 2.0) S_2) ?x515 ?x2973))))
 (let (($x75111 (not (<= 0.0 (+ ?x2844 ?x5481 ?x993 S_2 ?x4505 L_0)))))
 (let (($x72935 (<= 0.0 (+ (* (/ 3.0 4.0) L_1) (* (/ 7.0 4.0) S_3) (* (- (/ 3.0 4.0)) A_4) ?x993 L_0))))
 (let (($x72936 (not $x72935)))
 (let (($x78232 (not (<= 0.0 (+ (* (- (/ 1.0 4.0)) A_4) (* (/ 1.0 4.0) A_3) ?x993 S_1 L_0)))))
 (let (($x79024 (not (<= 0.0 (+ (* 2.0 S_3) ?x464 A_2 ?x476 ?x993 L_1 L_0)))))
 (let (($x75521 (not (<= (- 5.0) (+ ?x5218 (* (/ 1.0 2.0) S_2) ?x2973)))))
 (let (($x76184 (not (<= 0.0 (+ ?x2254 (* (/ 1.0 3.0) A_1) ?x993 S_1 ?x5238 L_0)))))
 (let (($x73162 (not (<= 0.0 (+ (* (- (/ 1.0 3.0)) A_1) ?x993 ?x2941 ?x2345 L_0)))))
 (let (($x158488 (or $x72753 $x73220 $x76674 (not (<= (- (/ 15.0 2.0)) (+ ?x6988 ?x8038 (* (/ 5.0 2.0) S_2) ?x1054 ?x11603))) $x77861)))
 (let (($x74953 (not (<= 0.0 (+ ?x3595 ?x1766 ?x993 S_2 ?x3536 L_0)))))
 (let ((?x46604 (+ (* (/ 7.0 3.0) S_3) ?x6839 (* (/ 4.0 3.0) A_2) (* (- (/ 4.0 3.0)) A_1) ?x1054 (* (/ 4.0 3.0) L_1))))
 (let ((?x2215 (* 2.0 L_1)))
 (let ((?x2213 (* (- 2.0) A_1)))
 (let ((?x4707 (* 3.0 S_3)))
 (let (($x157545 (or $x415 $x72753 (not (<= 0.0 (+ S_3 ?x5710 ?x6522 ?x1054))) (not (<= 0.0 (+ ?x4707 ?x3595 ?x1766 ?x2213 ?x1054 ?x2215))))))
 (let (($x73078 (not (<= (- 5.0) (+ S_3 ?x464 A_3 ?x476 L_1 loss_rate_tol)))))
 (let (($x79042 (<= (- 5.0) (+ (* (/ 1.0 3.0) S_3) ?x2254 (* (/ 1.0 3.0) A_2) (* (- (/ 1.0 3.0)) A_1) ?x2345))))
 (let (($x73687 (not (<= (- 10.0) (+ ?x464 A_2)))))
 (let ((?x3958 (* (/ 1.0 5.0) L_1)))
 (let ((?x7973 (* (- (/ 1.0 5.0)) A_1)))
 (let ((?x26661 (* (/ 1.0 5.0) A_2)))
 (let ((?x4493 (* (- (/ 1.0 5.0)) A_4)))
 (let (($x86580 (or $x415 $x72753 $x73687 (not (<= (- 5.0) (+ ?x4493 ?x26661 ?x7973 (* (/ 1.0 5.0) S_1) ?x3958))))))
 (let (($x5022 (<= (+ ?x564 (* (- 2.0) S_3) A_3 S_1) 0.0)))
 (let ((?x2865 (+ L_1 ?x464 (* (- 3.0) A_0) (* 4.0 S_1) loss_rate_tol (* 3.0 L_0))))
 (let (($x161347 (or $x72753 $x73127 $x73977 $x76128 (not (<= (- (/ 15.0 2.0)) (+ ?x2973 ?x2987 (* (/ 1.0 2.0) S_2) ?x6859))))))
 (let ((?x472 (* (- 1.0) A_2)))
 (let ((?x842 (+ ?x472 A_1)))
 (let (($x73477 (<= ?x842 (- 5.0))))
 (let (($x980 (<= (+ ?x564 (* (- (/ 3.0 2.0)) S_3) A_3 (* (/ 1.0 2.0) S_0)) 0.0)))
 (let ((?x9796 (* (/ 1.0 4.0) L_1)))
 (let ((?x10557 (* (- (/ 1.0 4.0)) A_1)))
 (let ((?x8381 (* (- (/ 1.0 4.0)) A_4)))
 (let (($x75566 (not (<= (- 5.0) (+ ?x8381 (* (/ 1.0 4.0) A_2) ?x10557 (* (/ 1.0 4.0) S_2) ?x9796)))))
 (let ((?x3006 (* (/ 2.0 3.0) L_1)))
 (let (($x79020 (<= 0.0 (+ (* (/ 5.0 3.0) S_3) ?x2844 (* (/ 2.0 3.0) A_2) ?x5469 ?x504 ?x3006))))
 (let (($x74487 (not (<= (- 5.0) (+ ?x4493 (* (/ 1.0 5.0) A_3) ?x7973 (* (/ 1.0 5.0) S_0) ?x3958)))))
 (let ((?x21706 (+ ?x4502 (* (/ 2.0 5.0) A_2) (* (- (/ 2.0 5.0)) A_1) (* (/ 7.0 5.0) S_1) ?x1054 ?x4612)))
 (let (($x88858 (or $x415 $x72753 (not (<= 0.0 (+ ?x464 A_2 S_1 ?x1054))) $x75819 (not (<= 0.0 ?x21706)))))
 (let (($x72915 (not (<= 0.0 (+ S_3 ?x3593 ?x3535 ?x993 ?x3508 L_0)))))
 (let (($x72930 (not (<= 0.0 (+ ?x2973 (* (/ 3.0 2.0) S_3) ?x2987 ?x504)))))
 (let (($x78829 (<= (- 5.0) (+ ?x2254 (* (/ 1.0 3.0) A_3) (* (- (/ 1.0 3.0)) A_1) (* (/ 1.0 3.0) S_2) ?x2345))))
 (let ((?x9782 (* (/ 3.0 4.0) L_1)))
 (let ((?x8808 (* (- (/ 3.0 4.0)) A_4)))
 (let ((?x21194 (+ ?x8808 (* (/ 3.0 4.0) A_2) (* (- (/ 3.0 4.0)) A_1) (* (/ 7.0 4.0) S_2) ?x1054 ?x9782)))
 (let (($x73362 (<= 0.0 (+ ?x2844 (* (/ 2.0 3.0) A_3) ?x5469 (* (/ 5.0 3.0) S_2) ?x515 ?x3006))))
 (let (($x163696 (or $x51 $x72753 (not $x73362) (not (<= 0.0 (+ ?x3595 ?x1766 S_2 ?x515))))))
 (let (($x75558 (not (<= 0.0 (+ ?x4493 ?x26661 ?x7973 ?x993 (* (/ 6.0 5.0) S_1) ?x3958 L_0)))))
 (let (($x159092 (or $x72733 $x72753 $x73127 $x76128 (not (<= (- 20.0) (+ L_1 ?x464 S_1 loss_rate_tol))))))
 (let (($x160166 (or (not (<= (+ ?x3006 (* (/ 1.0 3.0) A_4) ?x468 (* (/ 2.0 3.0) S_1)) 0.0)) $x72753 $x73110 $x75545 $x76257)))
 (let (($x74957 (not (<= 0.0 ?x22475))))
 (let (($x89793 (or $x51 (not (<= 0.0 (+ ?x464 A_3 ?x476 (* 2.0 S_2) ?x1054 L_1))) $x72753 $x74957)))
 (let (($x73937 (not (<= 0.0 (+ ?x3595 ?x1766 S_1 ?x1054 ?x3536)))))
 (let (($x84835 (or $x51 $x72753 (not (<= 0.0 (+ ?x2987 ?x4789 ?x5218 (* (/ 3.0 2.0) S_1) ?x1054 ?x2973))) $x73937)))
 (let (($x72761 (not (<= 0.0 (+ ?x464 A_3 ?x993 S_1 loss_rate_tol L_0)))))
 (let (($x75568 (<= 0.0 (+ ?x2987 (* (/ 1.0 2.0) A_2) ?x5218 ?x993 (* (/ 3.0 2.0) S_2) ?x2973 L_0))))
 (let (($x77973 (<= 0.0 (+ ?x2844 (* (/ 2.0 3.0) A_3) ?x5469 ?x993 (* (/ 5.0 3.0) S_2) ?x3006 L_0))))
 (let (($x88145 (or $x51 $x72753 (not (<= 0.0 (+ ?x3595 ?x1766 ?x993 S_2 L_0))) (not $x77973))))
 (let (($x75767 (not (<= (- 5.0) (+ ?x8381 (* (/ 1.0 4.0) A_3) ?x10557 (* (/ 1.0 4.0) S_1) ?x9796)))))
 (let ((?x1608 (* (/ 1.0 6.0) L_1)))
 (let ((?x2509 (* (- (/ 1.0 6.0)) A_4)))
 (let (($x74546 (<= (- 5.0) (+ ?x2509 (* (/ 1.0 6.0) A_2) (* (- (/ 1.0 6.0)) A_1) (* (/ 1.0 6.0) S_0) ?x1608))))
 (let (($x74920 (<= 0.0 (+ ?x8381 (* (/ 1.0 4.0) A_3) ?x10557 ?x993 (* (/ 5.0 4.0) S_1) ?x9796 L_0))))
 (let (($x90370 (or $x51 $x72753 (not (<= 0.0 (+ ?x464 A_3 ?x993 S_1 L_0))) (not $x74920))))
 (let (($x91552 (or (not (<= (+ L_1 ?x963 ?x476 (* (/ 1.0 2.0) S_0)) 0.0)) (<= (+ ?x476 S_0 L_1) (- 5.0)))))
 (let (($x73145 (or (<= 0.0 (+ L_1 ?x963 ?x476 (* (/ 1.0 2.0) S_0))) (<= (+ ?x967 (* (/ 1.0 2.0) S_0)) (- 5.0)))))
 (let ((?x964 (* (/ 1.0 2.0) S_0)))
 (let ((?x975 (+ L_1 ?x963 ?x476 ?x964)))
 (let (($x986 (<= ?x975 0.0)))
 (let (($x73038 (or $x51 $x72753 (not (<= 0.0 (+ S_3 ?x3595 ?x1766 ?x504))) (not (<= 0.0 (+ (* 2.0 S_3) ?x464 A_3 ?x476 ?x504 L_1))))))
 (let (($x5323 (<= (+ ?x564 A_1 ?x504) 0.0)))
 (let (($x108 (>= S_1 S_0)))
 (let (($x111 (>= S_2 S_1)))
 (let (($x114 (>= S_3 S_2)))
 (let (($x119 (>= A_1 A_0)))
 (let (($x120 (>= A_2 A_1)))
 (let (($x121 (>= A_3 A_2)))
 (let (($x122 (>= A_4 A_3)))
 (and $x122 $x121 $x120 $x119 $x114 $x111 $x108 (or $x51 (not $x415)) (or $x51 (<= (+ ?x476 S_1 L_1) (- 5.0))) (or $x51 (<= (+ ?x2213 S_2 S_0 ?x2215) (- 10.0))) (or (<= (+ (* (/ 1.0 3.0) S_3) ?x504 (* (/ 2.0 3.0) S_0)) 0.0) $x5323) (or $x51 (not (<= 0.0 (+ S_3 ?x476 ?x504 S_0 L_1)))) (or $x51 $x72753 $x72898 (not (<= 0.0 (+ S_3 ?x3595 ?x1766 ?x504 ?x3536)))) $x73038 (or $x72753 (not (<= 0.0 (+ S_3 ?x3595 ?x1766 ?x504 ?x3536))) $x72930) (or $x986 (<= 5.0 (+ S_3 ?x476 L_1))) $x73145 $x91552 (or (<= (+ ?x504 S_0) (- 5.0)) $x5323) (or $x51 (not (<= (- 5.0) (+ S_3 ?x2213 S_0 ?x2215)))) (or $x51 $x72753 $x73176 $x73937) (or $x51 $x72753 $x72761 $x73176) (or $x51 (<= (+ ?x476 S_0 L_1) (- 10.0))) (or $x51 $x72753 $x72761 $x73162) $x90370 (or $x51 $x72753 $x74953 $x75512) (or $x415 $x72753 $x73687 (not $x74546)) (or $x51 $x69954 $x72753 $x73230) (or $x51 $x69954 $x72753 $x75767) (or $x51 $x72753 $x74957 $x75543) (or $x70583 $x72753 $x73977 $x76128) (or $x980 $x72753 $x73564 $x75148 $x77346) (or $x72182 $x72753 $x73011 $x76134 $x76184) $x88145 (or $x72753 $x72930 (not (<= 0.0 (+ S_3 ?x2844 ?x5481 ?x504 ?x4505)))) (or $x72753 $x73220 $x75819 $x76674 $x76718) (or $x415 $x72753 $x75543 $x75819 $x76718) (or $x415 $x72753 $x73113 $x75543 $x77161) (or $x415 $x72753 $x72898 (not (<= 0.0 (+ S_3 ?x2844 ?x5481 ?x504 ?x4505)))) (or $x72753 $x72936 $x75125) (or $x415 $x72753 $x73011 $x75543 $x76718) (or $x415 $x72753 $x73011 $x73230 $x76034) (or $x51 $x72753 $x74709 (not (<= (- 5.0) ?x24024)) $x75543) (or $x415 $x72753 (not $x75568) $x75608 $x75819) (or $x72753 $x73220 $x75819 $x76039 $x76674) (or $x51 $x69954 $x72753 $x75521) (or $x72164 $x72182 $x72753 $x72761) (or $x72753 $x72936 $x73011 $x73946) (or $x72753 $x75819 $x76034 $x76813) (or $x415 $x72753 $x73946 $x75819 $x79024) (or $x70583 $x72753 $x73963) (or $x69954 $x72753 $x73963) (or $x72753 $x73477 $x73564 $x75148 $x75819 $x76674) (or $x415 $x72753 (not (<= (- 20.0) (+ ?x476 S_0 L_1))) $x75148 $x75819) (or $x70583 $x72733 $x72753 $x76128) (or $x415 $x72753 $x75512 $x75608 $x75819) $x84835 (or $x72753 $x75819 $x76252 $x76257 $x76674) $x89793 (or $x51 $x72753 (not (<= 0.0 (+ S_3 ?x3593 ?x3535 ?x515 ?x3508))) $x72969) (or $x51 $x72753 $x75543 (not (<= 0.0 (+ ?x3595 ?x1766 S_2 ?x515 ?x3536)))) (or $x415 $x72753 $x73113 $x74752 $x75543) (or $x415 $x72753 $x73110 $x74752 $x75543) (or $x415 $x72753 $x73127 (not (<= (- 20.0) (+ ?x476 S_0 L_1))) $x75148) (or $x415 $x72753 $x74736 $x75148 $x75819) (or $x51 $x69954 $x72753 $x74736) (or $x415 $x72753 $x73011 $x74736 $x75148) (or $x415 $x72753 $x72915 $x72963) (or $x415 $x72753 $x73110 $x75543 $x75545) $x160166 (or $x72753 $x73110 (not (<= 0.0 (+ L_1 ?x468 ?x1297 ?x1054))) $x78227) (or $x415 $x72753 $x73110 $x75543 $x76034) (or $x415 $x72753 $x73110 $x75543 $x76718) (or $x415 $x72753 $x73110 $x75543 $x76039) (or $x415 $x70583 $x72753 $x74736) (or $x72164 $x72182 $x72753 $x76184) (or $x5022 $x72753 $x73477 $x73564 $x75148) $x159092 (or $x72753 $x73127 $x73477 $x73564 $x75148 $x76128) (or $x72733 $x72753 $x73127 $x75148 $x76128) (or $x72753 $x74909 $x75419) (or $x415 $x72350 $x72753 $x75558 $x75819) (or (not $x72164) $x72753 $x73011 $x78232) $x163696 (or $x415 $x72753 $x75819 $x76039 (not (<= 0.0 ?x21194))) (or $x51 $x6680 $x8837 $x72753 $x73230) (or $x415 $x72753 $x73176 $x75819 $x76252) (or $x415 $x72753 $x73176 $x75545 $x75819) (or $x51 $x5770 $x72753 $x73176) (or $x8837 (not $x72164) $x72753 $x78232) (or (not $x72164) $x72753 $x78232 $x78597) (or $x51 $x69954 $x72753 (not $x78829)) (or $x51 $x6680 $x72753 $x73078 $x75543) (or $x415 $x72753 $x75184 $x75543 $x75545) (or $x415 $x72753 $x74752 $x75184 $x75543) (or $x72753 $x72930 $x74045) (or $x72753 $x72936 $x72915) (or $x8837 $x72753 $x72936 $x73946) (or $x415 $x72753 $x75543 $x75819 $x76039) (or $x415 $x70583 $x72753 $x75521) $x88858 (or $x51 $x69954 $x72753 $x74487) (or $x69954 $x72753 $x73977 $x76128) (or $x72753 $x73220 $x74957 $x76674) (or $x415 $x72753 $x74045 (not $x79020)) (or $x72753 $x73963 $x75148 $x75819) (or $x70583 $x72753 $x73544 $x73564 $x76128) (or $x51 $x69954 $x72753 (not (<= (- 20.0) (+ ?x476 S_0 L_1)))) (or $x415 $x72753 $x73687 $x75566) (or $x980 $x72753 $x73477 $x73564 $x75148) $x161347 (or (not (<= (- 5.0) ?x2865)) $x72164 $x72182 $x72753) (or $x415 $x5022 $x72753 $x73162 $x76184) $x86580 (or $x415 $x69954 $x72753 (not (<= (- 5.0) (+ ?x963 ?x2987 ?x4789 ?x5218 ?x2973)))) (or $x415 $x72753 $x73687 (not $x79042)) (or $x415 $x70583 $x72753 (not (<= (- 20.0) (+ ?x476 S_0 L_1)))) (or $x8837 $x72753 $x74126 $x74909) (or $x72753 $x72936 $x73946 $x78597) (or $x72182 $x72350 $x72753 $x73011 $x78232) (or $x8837 $x72164 $x72182 $x72350 $x72753) (or $x51 $x6680 $x72753 $x73078 $x75521) (or $x72753 $x74752 $x75819 $x76813) (or $x415 $x72753 $x73011 $x75543 $x75545) (or $x72733 $x72753 $x74735) (or $x51 $x5770 $x72753 $x75543) (or $x72753 $x73127 $x73963 $x75243 $x75337) (or $x415 $x72753 $x73230 $x75184 $x76034) (or $x415 $x72753 $x75184 $x76034 $x78072) (or $x415 $x72753 $x72963 $x73011 $x76034) (or $x72753 $x73011 $x76034 $x76813) (or $x415 $x72753 $x73113 $x73230 $x76034) (or $x415 $x72753 $x73113 $x75543 $x75893) $x157545 (or $x415 $x6680 $x72753 $x75819 $x76112) (or $x415 $x72753 $x74752 $x75819 (not (<= 0.0 ?x46604))) (or $x72753 $x73747 $x74953 $x76134) (or $x72753 $x73011 $x73747 $x75111 $x76134) (or $x72753 $x73011 $x73747 $x75608 $x76134) (or $x72753 $x73011 $x73220 $x76674 $x76718) (or $x415 $x72753 $x74736 $x75148 $x75184) (or $x415 $x72350 $x72753 $x73011 $x73162) (or $x72753 $x75545 $x75819 $x76257 $x78227) $x158488 (or $x415 $x72753 $x73011 $x75111 $x75521) (or $x72753 $x73747 $x75608 $x76134 $x76143) (or $x72753 $x73564 $x75148 $x76128 $x76176 $x77346) (or $x415 $x72753 $x74752 $x75819 $x78072) (or $x415 $x72753 $x73011 $x74752 $x75543) (or $x72753 $x73822 $x75819 $x76131 $x77161) (or $x415 $x72753 $x73113 $x76112 $x77161) (or $x415 $x72753 $x73011 $x73162 $x76184) (or $x51 $x72753 $x73879 $x78072) (or $x415 $x6680 $x72753 $x73110 $x76112) (or $x415 $x72753 $x73110 $x75148 $x75521) (or $x415 $x72753 $x73113 $x75148 $x75521) (or $x72753 $x73113 $x73963 $x75148) (or $x415 $x6680 $x72753 $x73110 $x75543) (or $x415 $x6680 $x72753 $x75184 $x75543) (or $x415 $x72753 $x73011 $x73176 $x76252) (or $x415 $x72753 $x73110 $x74736 $x76252) (or $x415 $x72753 $x73011 $x73946 $x79024) (or $x415 $x72753 $x72963 $x73946 $x75184) (or $x72753 $x77771 (not $x72164) $x78232) (or $x72182 $x72350 $x72753 $x75967 $x78232) (or $x72753 $x72936 $x73946 $x75967) (or $x72753 $x73747 $x75608 $x76134 $x78597) (or $x415 $x72753 $x73011 $x75111 $x76112) (or $x415 $x72753 $x73011 $x75111 $x75512) (or $x72753 $x73977 $x75148 $x76128 $x76176) (or $x415 $x72753 (not (<= (- 20.0) (+ ?x476 S_0 L_1))) $x75148 $x76527) (or $x415 $x72753 $x75819 $x75893 (not $x76462)) (or $x51 $x72753 $x76112 (not (<= 0.0 (+ ?x3595 ?x1766 S_2 ?x515 ?x3536)))) $x162792 (or $x415 $x72753 $x75819 $x75893 $x76112) (or $x415 $x72753 $x73176 $x75184 $x76252) (or $x415 $x70583 $x72753 $x73230) (or $x415 $x72753 $x72969 $x73113 $x74126) (or $x415 $x72753 $x72898 $x74045) (or $x415 $x72753 $x72898 $x75419) (or $x415 $x72753 $x72969 $x75419) $x162088 (or $x415 $x72753 $x74736 $x75148 $x76176) (or $x415 $x72753 $x73113 $x76034 $x78072) (or $x415 $x72753 $x73230 $x75148 $x76527) (or $x72733 $x72753 $x75148 $x76128 $x76176) $x160490 (or $x72753 $x75819 $x76252 $x76257 $x78227) (or $x415 $x72753 $x73011 $x75608 $x76112) (or $x72753 $x73011 $x73977 $x75148 $x76128) (or $x72753 $x76257 (not $x76300) $x78227 $x80216) (or $x415 $x72753 $x73113 $x76039 $x76112) (or $x415 $x72753 $x75819 $x76034 $x78072) (or $x415 $x72753 $x73011 $x76039 $x76112) (or $x72753 $x73011 $x76252 $x76257 $x78227) (or $x72753 $x73011 $x75545 $x76257 $x78227) (or $x72733 $x72753 $x73011 $x75148 $x76128) (or $x69954 $x72733 $x72753 $x76128) (or $x415 $x72753 $x73113 $x76112 $x76718) (or $x70046 $x72753 $x73564 $x75148 $x76128 $x76176) (or $x70046 $x72753 $x73011 $x73564 $x75148 $x76128) (or $x72753 $x73564 $x75148 $x76128 $x76527 $x77346) (or $x72753 $x73127 $x73977 $x75148 $x76128) (or $x72753 $x73747 $x76134 $x76143 (not $x76594)) $x95522 (or $x415 $x72753 $x72963 $x75125) (or $x415 $x5770 $x72753 $x78072) (or $x415 $x6680 $x72753 $x73011 $x75512) $x160713 (or $x415 $x6680 $x72753 $x73113 $x76112) (or $x51 $x72753 $x76112 $x76458) (or $x69954 $x72753 $x73544 $x73564 $x76128) $x161624 (or $x72753 $x73011 $x73963 $x75148) (or $x72753 $x73963 $x75148 $x76527) (or $x72753 $x73113 $x73220 $x76039 $x76674) (or $x72753 $x73113 $x73220 $x76674 $x76718) $x83197 (or $x72753 $x74126 $x74909 $x75967) (or $x72753 $x73937 $x76257 $x78227) (or $x72753 $x73977 $x75148 $x75819 $x76128) (or $x72753 $x73110 $x73977 $x75148 $x76128) (or $x8837 $x72753 $x74752 $x76813) (or $x72753 $x73110 $x76034 $x76813) $x161475 (or $x72753 $x76813 $x73879) (or $x72753 $x74909 (not (<= 0.0 (+ S_3 ?x3593 ?x3535 ?x515 ?x3508)))) (or $x72753 $x73822 $x76131 (not (<= 0.0 (+ ?x3595 ?x1766 S_2 ?x515 ?x3536)))) (or $x72753 $x73113 $x73822 $x76131 $x77161) (or $x72753 $x73220 $x76039 $x76674 $x78611) (or $x72753 $x73220 $x76039 $x76674 $x77861) (or $x72753 $x74752 $x75967 $x76813) (or $x72753 $x73110 $x76252 $x76257 $x78227) (or $x72753 $x73920 $x75978 $x76458 $x80230) (or $x72753 $x73110 $x73963 $x75148) (or $x72753 $x75184 $x76034 $x76813) (or $x72753 $x74752 $x76813 $x78611) (or $x72753 $x73127 $x73544 $x73564 $x75243 $x75337 $x76128) (or $x72753 $x75184 $x76252 $x76257 $x78227) (or $x72733 $x72753 $x75148 $x76128 $x76527) (or $x72733 $x72753 $x73110 $x75148 $x76128) (or $x72733 $x72753 $x75148 $x75819 $x76128) (or $x72733 $x72753 $x75148 $x75184 $x76128) (or $x72753 $x73113 $x76034 $x76813) (or $x72753 $x73920 $x75967 $x75978 $x80230) (or $x72753 $x73113 $x73977 $x75148 $x76128) (or $x72164 $x72182 $x72350 $x72753 $x78597) (or $x72753 $x75545 $x76257 $x78227 $x78597) (or $x72753 (not (<= (- (/ 5.0 3.0)) ?x24024)) $x73920 $x76458 $x80230) (or $x72753 $x73220 $x75967 $x76039 $x76674) (or $x72753 $x73220 $x76039 $x76674 $x78597) (or $x72164 $x72182 $x72350 $x72753 $x77771) (or $x72753 $x73963 $x75148 $x75184) (or $x72753 $x73127 $x73963 $x75148) (or $x72753 $x73110 $x73220 $x76674 $x76718) (or $x70046 $x72753 $x73113 $x73564 $x75148 $x76128) (or $x72753 $x74752 $x75184 $x76813) (or $x72753 $x73110 $x74752 $x76813) (or $x72753 $x75545 $x76257 $x78227 $x80216) (or $x72753 $x73110 $x73220 $x76039 $x76674) (or $x72753 $x74126 $x74909 $x77140) (or $x72753 $x75545 $x75967 $x76257 $x78227) (or $x72753 $x73113 $x74126 $x74909) (or $x72753 $x73011 $x73220 $x76039 $x76674) (or $x72753 $x73822 $x76131 $x76872 $x78274) (or $x72753 $x73822 $x75893 $x76131 $x77140) (or $x72753 $x75184 $x75545 $x76257 $x78227) (or $x72753 $x73747 $x75608 $x75967 $x76134) (or $x72753 $x74752 $x76813 $x78597) (or $x72753 $x73822 $x75893 $x76131 $x78274) (or $x72753 $x75545 $x76257 $x78227 $x78611) (or $x72753 $x73113 $x74752 $x76813) (or $x72753 $x73011 $x74752 $x76813) (or $x72753 $x74752 $x76813 $x77140) (or $x72753 $x73113 $x73822 $x75893 $x76131) (or $x72753 $x73822 $x75893 $x75967 $x76131) (or $x72753 $x73220 $x76039 $x76674 $x77140) (or $x8837 $x72753 $x75545 $x76257 $x78227) $x34 (<= (+ ?x993 S_0 L_0) 0.0) (not (>= (+ L_1 ?x472 S_3) 0.0)) $x2818 (<= (+ (* (- 2.0) S_3) (* 3.0 S_1) ?x1054) 0.0) (<= (+ L_1 ?x476 S_1) 0.0) (<= (+ ?x440 S_1) (- 5.0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
