; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_3 () Real)
(declare-fun L_0 () Real)
(declare-fun A_3 () Real)
(declare-fun S_2 () Real)
(declare-fun A_2 () Real)
(declare-fun S_1 () Real)
(declare-fun A_1 () Real)
(declare-fun S_0 () Real)
(declare-fun A_0 () Real)
(declare-fun A_4 () Real)
(declare-fun loss_rate_tol () Real)
(assert
 (let (($x34 (>= L_0 0.0)))
 (let (($x75015 (not (<= (- 5.0) (+ (* (- (/ 1.0 4.0)) A_4) (* (/ 1.0 4.0) A_3))))))
 (let (($x74031 (not (<= (- 5.0) (+ (* (- (/ 1.0 5.0)) A_4) (* (/ 1.0 5.0) A_2))))))
 (let (($x73763 (not (<= (- 35.0) (+ (* (- 1.0) A_4) S_0 L_0)))))
 (let (($x73544 (not (<= (- 5.0) (+ (* (- 1.0) A_4) A_3 loss_rate_tol)))))
 (let (($x73427 (not (<= (- 5.0) (+ (* (- (/ 1.0 6.0)) A_4) (* (/ 1.0 6.0) A_1))))))
 (let (($x69043 (not (<= 0.0 loss_rate_tol))))
 (let ((?x16356 (* 3.0 loss_rate_tol)))
 (let ((?x2866 (* (- 2.0) S_0)))
 (let ((?x1202 (* 2.0 S_3)))
 (let ((?x2453 (* 2.0 A_1)))
 (let ((?x5797 (* (- 3.0) A_4)))
 (let (($x81323 (not (<= (- 5.0) (+ ?x5797 A_2 ?x2453 ?x1202 ?x2866 ?x16356)))))
 (let (($x76281 (<= 0.0 (+ (* (- (/ 2.0 5.0)) A_4) (* (/ 2.0 5.0) A_2) S_1 (* (- 1.0) S_0)))))
 (let (($x76282 (not $x76281)))
 (let ((?x4430 (* 2.0 loss_rate_tol)))
 (let ((?x976 (* (- 1.0) S_0)))
 (let ((?x4455 (* (- 2.0) A_4)))
 (let ((?x23730 (+ ?x4455 A_3 A_1 S_3 ?x976 ?x4430)))
 (let (($x75722 (not (<= (- 5.0) ?x23730))))
 (let ((?x13287 (* (/ 2.0 3.0) loss_rate_tol)))
 (let ((?x3455 (* (/ 2.0 3.0) A_1)))
 (let ((?x5257 (* (- (/ 2.0 3.0)) A_4)))
 (let (($x75673 (not (<= 0.0 (+ ?x5257 ?x3455 S_1 ?x976 ?x13287)))))
 (let (($x73340 (not (<= 0.0 (+ (* (- (/ 1.0 2.0)) A_4) (* (/ 1.0 2.0) A_3) S_1 ?x976)))))
 (let (($x72178 (<= 0.0 (+ (* (- 1.0) A_4) (* 4.0 S_1) (* (- 3.0) S_0) L_0))))
 (let (($x70604 (not $x72178)))
 (let (($x80549 (<= (- 15.0) (+ ?x5797 (* 4.0 S_3) (* (- 1.0) S_1) (* 3.0 L_0) ?x16356))))
 (let ((?x452 (* (- 1.0) S_1)))
 (let ((?x5961 (* (/ 7.0 4.0) S_3)))
 (let ((?x5716 (* (- (/ 3.0 4.0)) A_4)))
 (let (($x72382 (not (<= 0.0 (+ ?x5716 ?x5961 ?x452 (* (/ 3.0 4.0) L_0))))))
 (let ((?x15819 (* 4.0 loss_rate_tol)))
 (let ((?x2993 (* 4.0 L_0)))
 (let ((?x6406 (* (- 4.0) A_4)))
 (let (($x75536 (not (<= 0.0 (+ (* (- 1.0) A_4) ?x1202 ?x976 L_0)))))
 (let (($x84519 (or $x69043 $x75536 (not (<= (- 20.0) (+ ?x6406 (* 5.0 S_3) ?x976 ?x2993 ?x15819))))))
 (let (($x73963 (not (<= 0.0 (+ (* (- 1.0) A_4) A_1 S_2 ?x976 loss_rate_tol)))))
 (let ((?x408 (* (- 1.0) A_2)))
 (let ((?x5737 (* (- (/ 1.0 4.0)) A_4)))
 (let (($x73235 (not (<= 0.0 (+ ?x5737 ?x408 (* (/ 5.0 4.0) S_3) (* (/ 5.0 4.0) L_0))))))
 (let ((?x934 (* (- 1.0) A_0)))
 (let ((?x400 (* (- 1.0) A_4)))
 (let (($x72080 (<= 0.0 (+ ?x400 A_3 ?x408 A_1 ?x934 S_2 L_0 loss_rate_tol))))
 (let (($x71103 (not $x72080)))
 (let ((?x25609 (* (/ 4.0 3.0) loss_rate_tol)))
 (let ((?x4140 (* (/ 4.0 3.0) A_1)))
 (let ((?x25617 (* (- (/ 4.0 3.0)) A_4)))
 (let (($x78793 (not (<= 0.0 (+ ?x25617 ?x4140 S_3 ?x976 ?x25609)))))
 (let (($x70983 (not (<= 0.0 (+ ?x400 A_1 S_3 ?x452 loss_rate_tol)))))
 (let (($x67749 (not (<= 0.0 (+ ?x400 A_3 ?x408 A_1 S_2 ?x452 loss_rate_tol)))))
 (let (($x74644 (not (<= 0.0 (+ ?x5716 (* (/ 3.0 4.0) A_3) S_2 ?x976)))))
 (let (($x73322 (<= 0.0 (+ (* (- (/ 3.0 5.0)) A_4) (* (/ 8.0 5.0) S_2) ?x976 (* (/ 3.0 5.0) L_0)))))
 (let (($x73323 (not $x73322)))
 (let (($x74013 (not (<= (- 10.0) (+ ?x4455 (* 2.0 A_3) S_1 ?x976 ?x4430)))))
 (let (($x70438 (not (<= 0.0 (+ (* (- 2.0) A_3) (* 2.0 A_2) S_1 ?x976)))))
 (let (($x74738 (<= (- 5.0) (+ ?x400 (* (/ 5.0 2.0) S_1) (* (- (/ 3.0 2.0)) S_0) L_0 loss_rate_tol))))
 (let (($x74739 (not $x74738)))
 (let (($x79002 (not (<= (- 5.0) (+ ?x400 (* 2.0 S_2) ?x452 L_0 loss_rate_tol)))))
 (let (($x77506 (<= (- 5.0) (+ ?x400 A_3 (* (/ 1.0 2.0) S_2) (* (- (/ 1.0 2.0)) S_1) loss_rate_tol))))
 (let (($x77507 (not $x77506)))
 (let (($x75582 (not (<= 0.0 (+ (* (- (/ 1.0 2.0)) A_4) (* (/ 1.0 2.0) A_3) S_2 ?x452)))))
 (let (($x72653 (<= 0.0 (+ (* (- (/ 2.0 5.0)) A_4) (* (/ 7.0 5.0) S_2) ?x452 (* (/ 2.0 5.0) L_0)))))
 (let (($x73036 (not $x72653)))
 (let (($x76206 (not (<= (- 5.0) (+ ?x400 A_2 S_1 ?x976 loss_rate_tol)))))
 (let ((?x2267 (* 2.0 A_3)))
 (let ((?x4517 (+ ?x400 ?x2267 ?x408 loss_rate_tol)))
 (let (($x75954 (<= ?x4517 (- 5.0))))
 (let ((?x1706 (* (- (/ 1.0 2.0)) S_0)))
 (let ((?x1757 (* (- (/ 1.0 2.0)) S_2)))
 (let (($x73520 (not (<= 0.0 (+ ?x400 A_1 S_3 ?x1757 ?x1706 loss_rate_tol)))))
 (let (($x73453 (not (<= (- 5.0) (+ (* (- (/ 1.0 5.0)) A_4) (* (/ 1.0 5.0) S_2) (* (/ 1.0 5.0) L_0))))))
 (let (($x75039 (not (<= 0.0 (+ ?x5737 (* (/ 1.0 4.0) A_3) ?x934 L_0 S_1)))))
 (let (($x74190 (<= 0.0 (+ ?x400 A_2 (* (- 1.0) A_1) S_3 L_0 loss_rate_tol))))
 (let (($x74191 (not $x74190)))
 (let (($x73744 (<= 0.0 (+ (* (- (/ 1.0 6.0)) A_4) ?x934 (* (/ 7.0 6.0) S_1) (* (/ 7.0 6.0) L_0)))))
 (let (($x73745 (not $x73744)))
 (let (($x73359 (not (<= 0.0 (+ (* (- (/ 1.0 5.0)) A_4) (* (/ 1.0 5.0) A_2) ?x934 L_0 S_1)))))
 (let (($x74364 (not (<= (- 5.0) (+ ?x4455 ?x2267 ?x408 A_1 S_2 ?x976 ?x4430)))))
 (let ((?x3351 (* (/ 1.0 2.0) loss_rate_tol)))
 (let ((?x2842 (* (/ 1.0 2.0) A_2)))
 (let ((?x2658 (* (- (/ 1.0 2.0)) A_4)))
 (let (($x76416 (not (<= (- (/ 5.0 2.0)) (+ ?x2658 ?x2842 ?x934 L_0 S_1 ?x3351)))))
 (let (($x73378 (not (<= (- 5.0) (+ ?x400 A_3 ?x934 S_1 L_0 loss_rate_tol)))))
 (let ((?x3148 (* (- 1.0) loss_rate_tol)))
 (let ((?x3297 (* (- 3.0) L_0)))
 (let ((?x1767 (* (- 3.0) S_1)))
 (let ((?x3278 (* 3.0 A_0)))
 (let ((?x412 (* (- 1.0) A_1)))
 (let (($x162166 (or (not (<= (+ A_4 ?x412 ?x3278 ?x1767 ?x3297 ?x3148) 0.0)) $x69043 $x73359 $x73378 $x73745 $x75039 $x76416)))
 (let ((?x3307 (* (/ 3.0 2.0) loss_rate_tol)))
 (let ((?x4963 (* (/ 1.0 2.0) S_3)))
 (let ((?x2619 (* (- (/ 3.0 2.0)) A_4)))
 (let (($x76250 (not (<= (- 5.0) (+ ?x2619 A_3 ?x2842 ?x4963 ?x1706 ?x3307)))))
 (let (($x73846 (not (<= 0.0 (+ ?x2619 (* (/ 3.0 2.0) A_2) S_2 ?x976 ?x3307)))))
 (let (($x73835 (not (<= (- 5.0) (+ (* (- (/ 1.0 6.0)) A_4) (* (/ 1.0 6.0) S_1) (* (/ 1.0 6.0) L_0))))))
 (let (($x72037 (<= 5.0 (+ A_3 ?x408))))
 (let ((?x13281 (* (/ 1.0 3.0) loss_rate_tol)))
 (let ((?x3819 (* (/ 1.0 3.0) A_1)))
 (let ((?x4700 (* (- (/ 1.0 3.0)) A_4)))
 (let ((?x13276 (+ ?x4700 ?x3819 ?x13281)))
 (let (($x73871 (not (<= (- 5.0) ?x13276))))
 (let (($x75287 (not (<= (- 10.0) (+ ?x400 A_3 loss_rate_tol)))))
 (let (($x73961 (not (<= 0.0 (+ ?x400 A_2 ?x934 S_2 L_0 loss_rate_tol)))))
 (let (($x73782 (not (<= 0.0 (+ ?x2658 (* (/ 1.0 2.0) A_3) ?x934 L_0 S_2)))))
 (let (($x71780 (<= 0.0 (+ (* (- (/ 2.0 5.0)) A_4) ?x934 (* (/ 7.0 5.0) S_2) (* (/ 7.0 5.0) L_0)))))
 (let (($x71512 (not $x71780)))
 (let ((?x5746 (* (/ 1.0 2.0) L_0)))
 (let ((?x1724 (* (/ 1.0 2.0) S_2)))
 (let ((?x5496 (* (- (/ 1.0 2.0)) A_0)))
 (let ((?x6122 (+ ?x400 A_3 ?x5496 ?x1724 ?x5746 loss_rate_tol)))
 (let (($x68614 (not (<= (- 5.0) ?x6122))))
 (let (($x70402 (not (<= (- 5.0) (+ ?x400 A_1 S_3 (* (- 1.0) S_2) loss_rate_tol)))))
 (let (($x157997 (or (<= (+ (* (- 2.0) A_2) ?x2453 S_2 ?x452) 0.0) $x69043 $x73544 $x74031 $x75015 (not (<= (- 10.0) (+ ?x408 S_0 L_0))))))
 (let (($x71087 (not (<= 0.0 (+ (* (- 2.0) A_3) (* 2.0 A_2) ?x412 L_0 S_3)))))
 (let (($x76223 (not (<= (- 5.0) (+ ?x4455 A_3 A_2 ?x934 S_3 L_0 ?x4430)))))
 (let (($x75234 (not (<= 0.0 (+ ?x2619 (* (/ 3.0 2.0) A_2) ?x934 S_3 L_0 ?x3307)))))
 (let (($x72196 (not (<= 0.0 (+ ?x5716 ?x934 ?x5961 (* (/ 7.0 4.0) L_0))))))
 (let (($x76529 (not (<= (- (/ 15.0 2.0)) (+ ?x2658 ?x2842 ?x3351)))))
 (let (($x162814 (or $x69043 $x73835 $x74031 $x75015 $x75287 $x76529 (not (<= (- 20.0) (+ ?x400 S_1 L_0 loss_rate_tol))))))
 (let (($x74022 (not (<= (- 15.0) (+ ?x5797 (* 3.0 A_3) S_2 ?x976 ?x16356)))))
 (let (($x73678 (not (<= 0.0 (+ ?x4455 ?x2267 S_1 ?x976 ?x4430)))))
 (let (($x70688 (not (<= 0.0 (+ ?x400 A_1 ?x934 S_3 L_0 loss_rate_tol)))))
 (let (($x162998 (or $x69043 $x73427 $x73763 $x74031 (not (<= (- 25.0) (+ ?x400 S_0 L_0 loss_rate_tol))) $x75015 $x75287 (not (<= (- (/ 20.0 3.0)) ?x13276)) $x76529)))
 (let (($x76310 (not (<= (- 5.0) (+ ?x4455 A_3 A_2 S_3 ?x452 ?x4430)))))
 (let (($x75765 (<= (- 10.0) ?x4517)))
 (let (($x75004 (not (<= 0.0 (+ ?x5737 (* (/ 1.0 4.0) A_3) ?x412 L_0 S_2)))))
 (let (($x73748 (<= 0.0 (+ (* (- (/ 1.0 5.0)) A_4) ?x412 (* (/ 6.0 5.0) S_2) (* (/ 6.0 5.0) L_0)))))
 (let (($x73749 (not $x73748)))
 (let (($x83516 (or $x69043 $x73749 $x75004 (not (<= 0.0 (+ ?x400 A_3 ?x412 L_0 S_2 loss_rate_tol))))))
 (let (($x74056 (not (<= (- 5.0) (+ ?x400 A_3 ?x412 L_0 S_2 loss_rate_tol)))))
 (let (($x158327 (or $x69043 $x73749 $x74056 (not (<= (- (/ 5.0 3.0)) (+ ?x4700 (* (- (/ 2.0 3.0)) A_1) L_0 S_2 ?x13281))) $x75004)))
 (let (($x76364 (not (<= (- (/ 15.0 2.0)) (+ ?x2619 (* (/ 5.0 2.0) S_2) ?x976 (* (/ 3.0 2.0) L_0) ?x3307)))))
 (let (($x74611 (<= 0.0 (+ ?x400 ?x408 A_1 ?x1202 (* (- 1.0) S_2) L_0 loss_rate_tol))))
 (let (($x77166 (not (<= (- 5.0) (+ ?x5737 (* (/ 1.0 4.0) S_3) (* (/ 1.0 4.0) L_0))))))
 (let (($x162880 (or $x69043 $x70688 $x72037 $x73763 (not (<= 0.0 (+ (* (- 1.0) A_3) A_1 ?x934 S_2 L_0))) $x75015)))
 (let (($x160477 (or $x69043 $x73340 $x73678 (not (<= 0.0 (+ ?x408 (* (/ 3.0 2.0) S_1) ?x1706 L_0))) $x76282)))
 (let (($x83070 (or $x69043 $x72382 (not (<= 0.0 (+ ?x5797 (* 3.0 A_3) S_3 ?x452 ?x16356))))))
 (let ((?x4938 (* (- (/ 3.0 2.0)) L_0)))
 (let ((?x1756 (* (- (/ 3.0 2.0)) S_2)))
 (let ((?x6669 (* (/ 3.0 2.0) A_0)))
 (let (($x7618 (not (<= (+ A_4 ?x412 ?x6669 ?x1756 ?x4938 ?x3148) 0.0))))
 (let (($x74432 (<= 0.0 (+ ?x400 (* (- 2.0) A_1) (* 3.0 L_0) (* 3.0 S_3)))))
 (let (($x74433 (not $x74432)))
 (let (($x83017 (or $x69043 (not (<= 0.0 (+ ?x4455 ?x2267 ?x412 L_0 S_3 ?x4430))) $x74433)))
 (let (($x157519 (or $x69043 $x73749 $x74056 (not (<= 0.0 (+ ?x2658 ?x2842 ?x412 S_2 L_0 ?x3351))) $x75004)))
 (let (($x74808 (<= (- 5.0) (+ ?x400 (* (- 3.0) A_0) (* 4.0 S_1) ?x2993 loss_rate_tol))))
 (let (($x82869 (or $x69043 $x73323 $x74644 (not (<= 0.0 (+ ?x5797 (* 3.0 A_3) S_2 ?x976 ?x16356))))))
 (let (($x74731 (not (<= 0.0 (+ ?x400 A_2 S_1 ?x976 loss_rate_tol)))))
 (let (($x69888 (not (<= 0.0 (+ ?x400 A_2 S_3 (* (- 1.0) S_2) loss_rate_tol)))))
 (let (($x70134 (not (<= 0.0 (+ ?x2658 (* (/ 3.0 2.0) S_3) (* (- 1.0) S_2) ?x5746)))))
 (let (($x79010 (<= (- 5.0) (+ ?x400 ?x934 (* 2.0 S_2) (* 2.0 L_0) loss_rate_tol))))
 (let (($x82064 (or $x69043 $x72382 (not (<= 0.0 (+ ?x2619 (* (/ 3.0 2.0) A_2) S_3 ?x452 ?x3307))) $x76310)))
 (let (($x82059 (or $x69043 $x75536 (not (<= 0.0 (+ ?x6406 (* 4.0 A_3) S_3 ?x976 ?x15819))))))
 (let (($x76122 (not (<= 0.0 (+ ?x4455 (* 2.0 A_2) S_3 ?x976 ?x4430)))))
 (let (($x73683 (not (<= 0.0 (+ ?x400 A_3 ?x934 S_1 L_0 loss_rate_tol)))))
 (let (($x82054 (or $x69043 (not (<= 0.0 (+ ?x400 A_2 S_2 ?x452 loss_rate_tol))) $x73036 $x75582 $x77507)))
 (let (($x159203 (or $x69043 $x74433 (not (<= (- (/ 10.0 3.0)) (+ ?x5257 (* (- (/ 1.0 3.0)) A_1) L_0 S_3 ?x13287))))))
 (let (($x80932 (or $x69043 $x72196 (not (<= (- 15.0) (+ ?x5797 ?x934 (* 4.0 S_3) ?x2993 ?x16356))))))
 (let (($x75992 (not (<= 0.0 (+ ?x5257 ?x3455 S_2 ?x452 ?x13287)))))
 (let ((?x2632 (* 2.0 L_0)))
 (let (($x75120 (<= 0.0 (+ ?x400 A_1 (* (- 2.0) A_0) S_2 S_1 ?x2632 loss_rate_tol))))
 (let (($x75121 (not $x75120)))
 (let (($x73801 (not (<= 0.0 (+ ?x2658 ?x2842 ?x934 S_1 L_0 ?x3351)))))
 (let (($x81187 (or $x69043 $x72196 (not (<= 0.0 (+ ?x5797 (* 3.0 A_3) ?x934 S_3 L_0 ?x16356))))))
 (let (($x80965 (not (<= (- 10.0) (+ ?x4455 (* 3.0 S_3) (* (- 1.0) S_2) ?x2632 ?x4430)))))
 (let (($x71280 (<= 0.0 (+ (* (- 1.0) A_3) ?x5496 (* (/ 3.0 2.0) S_2) (* (/ 3.0 2.0) L_0)))))
 (let (($x923 (<= (+ A_2 (* (- 1.0) L_0) (* (- 1.0) S_3)) 0.0)))
 (let (($x79626 (or $x69043 (not (<= (- (/ 5.0 2.0)) (+ ?x2658 (* (- (/ 1.0 2.0)) A_2) L_0 S_3 ?x3351))) $x73235)))
 (let (($x79623 (or $x69043 $x70134 (not (<= 0.0 (+ ?x5257 ?x3455 S_3 (* (- 1.0) S_2) ?x13287))))))
 (let (($x1473 (<= (+ (* (- 2.0) S_3) (* 3.0 S_1) ?x976) 0.0)))
 (let (($x78969 (or $x69043 $x73235 (not (<= 0.0 (+ ?x400 A_3 ?x408 L_0 S_3 loss_rate_tol))))))
 (let (($x74896 (not (<= (- 5.0) (+ ?x2658 ?x2842 ?x3351)))))
 (let (($x929 (<= (+ A_1 (* (- 1.0) L_0) (* (- 1.0) S_2)) 0.0)))
 (let (($x1699 (<= (+ ?x934 (* (- 1.0) S_3) (* 2.0 S_1) L_0) 0.0)))
 (let (($x72033 (or $x69043 $x70134 (not (<= 0.0 (+ ?x4455 ?x2267 S_3 (* (- 1.0) S_2) ?x4430))))))
 (let (($x71433 (<= (+ (* (- 1.0) S_3) S_0) (- 10.0))))
 (let (($x163590 (or $x923 (<= (+ A_1 (* (- 1.0) L_0) (* (- 1.0) S_3)) (- 5.0)) $x71433)))
 (let (($x89535 (or $x923 (not (<= (+ A_2 ?x412) 5.0)) (<= (+ (* (- (/ 1.0 2.0)) S_3) (* (/ 1.0 2.0) S_0)) (- 5.0)))))
 (let (($x88493 (or $x923 (<= (+ ?x2453 ?x934 (* (- 1.0) L_0) (* (- 1.0) S_3)) 0.0) $x71433)))
 (let (($x3808 (or $x929 (<= (+ (* (/ 1.0 3.0) S_3) (* (- 1.0) S_2) (* (/ 2.0 3.0) S_0)) 0.0))))
 (let (($x96 (>= S_1 S_0)))
 (let (($x99 (>= S_2 S_1)))
 (let (($x102 (>= S_3 S_2)))
 (let (($x107 (>= A_1 A_0)))
 (let (($x108 (>= A_2 A_1)))
 (let (($x109 (>= A_3 A_2)))
 (let (($x110 (>= A_4 A_3)))
 (and $x110 $x109 $x108 $x107 $x102 $x99 $x96 $x3808 (or $x923 $x1699 (<= (+ A_2 ?x412 (* (- 1.0) S_3) S_1) (- 5.0))) (or (<= (+ (* (- 1.0) S_3) S_1) (- 5.0)) $x923) (or $x929 (<= (+ (* (- 1.0) S_2) S_0) (- 5.0))) $x88493 (or $x923 $x1473 (<= (+ A_2 ?x412 (* (- 1.0) S_3) S_1) (- 5.0))) $x89535 (or $x923 $x1699 $x69043 $x73683) $x163590 (or $x929 (<= (+ ?x408 L_0 S_3 (* (- 1.0) S_2) S_0) 0.0)) (or $x69043 (not (<= (- 10.0) (+ ?x400 A_3))) $x73453 $x73544) $x72033 (or $x923 $x1699 $x69043 $x71103 $x75121) (or $x923 $x1699 $x69043 $x70688) (or $x923 $x1699 $x69043 $x73378 $x76416) (or $x69043 $x70438 $x70604 $x73340 $x73520) (or $x923 $x1473 $x69043 $x73678) (or $x929 $x69043 $x72037 $x73763 $x74896 $x75015) (or $x69043 $x73749 $x74191 $x75004) (or $x69043 $x70688 $x71512 $x73782) (or $x923 $x1473 $x69043 $x71103 $x73963) $x78969 (or $x69043 $x70688 $x77166) (or $x923 $x1473 $x69043 $x73963 $x74364) (or $x69043 $x71512 (not (<= 0.0 ?x6122)) $x73782) (or $x923 $x1473 $x69043 $x70688) (or $x923 $x1473 $x69043 $x74013 $x76206) (or $x923 $x1473 $x69043 $x73520) (or $x923 $x1473 $x69043 $x75722) $x79623 $x79626 (or $x69043 $x70688 $x73235) (or $x69043 $x70688 $x75536) (or $x69043 $x73359 $x73378 $x73745 $x73801 $x75039) (or $x923 $x69043 $x73427 $x73763 $x74896 $x75015) (or $x69043 $x73453 $x74896 $x75015) (or $x69043 $x70983 $x72382) (or $x69043 $x72382 $x74191) (or $x69043 $x73544 $x77166) (or $x69043 $x73323 $x74191 $x74644) (or $x69043 $x70983 $x77166) (or $x923 $x69043 $x73544 $x73835 $x75015) (or $x69043 $x73036 $x75582 $x75992 $x77507) (or $x69043 $x74191 $x74433) (or (not $x71280) $x69043 $x71103 $x74644) (or $x69043 $x73036 $x75582 $x75765 $x76310) (or $x69043 $x70134 $x80965) $x81187 (or $x69043 $x74896 $x77166) (or $x69043 $x70438 $x70604 $x73340 $x74013 $x74731) (or $x69043 $x70438 $x70604 $x73340 $x76122 $x76250) (or $x69043 $x73359 $x73745 $x73801 $x75039 $x76223) (or $x69043 $x73520 $x77166) (or $x69043 $x73323 $x73520 $x74644) (or $x69043 $x75536 $x73520) (or $x69043 $x70604 $x71103 $x73340 $x73963 $x76282) (or $x69043 $x72196 $x70688) (or $x69043 $x71103 $x73359 $x73745 $x75039 $x75121) (or $x67749 $x69043 $x73036 $x75582 $x75992) $x80932 $x159203 $x82054 (or $x69043 $x73359 $x73683 $x73745 $x75039) (or $x69043 $x75536 $x76122 $x76250) $x82059 $x82064 (or $x69043 $x75536 $x75765 $x76310) (or $x69043 $x69888 $x73359 $x73745 $x75039) (or $x69043 $x69888 $x72382) (or $x69043 $x69888 $x70604 $x73340 $x76282) (or $x69043 $x75234 $x75536 $x76223) (or $x69043 $x69888 $x75536) (or $x69043 $x72037 $x73835 $x74896 $x75015) (or $x68614 $x69043 $x71512 $x73782 (not $x79010)) (or $x69043 $x69888 $x70134) (or $x69043 $x69888 $x72196) (or $x69043 $x70402 $x77166) (or $x69043 $x75722 (not $x75954) $x77166 $x78793) (or $x69043 $x73453 $x75015 $x75287 (not (<= (- (/ 15.0 2.0)) (+ ?x2658 ?x1724 ?x5746 ?x3351)))) (or $x69043 $x70438 $x70604 $x73340 $x74731 $x76223) (or $x69043 $x70688 $x73453 $x75015) (or $x69043 $x70438 $x70604 $x70688 $x75039) (or $x69043 $x70688 $x73359 $x73745 $x75039) (or $x69043 $x70688 $x73323 $x74644) (or $x69043 $x70604 $x70688 $x73340 $x76282) (or $x69043 $x74022 $x74644 $x73323 $x73846) (or $x69043 $x71103 $x73323 $x73963 $x74644) $x82869 (or $x7618 $x68614 $x69043 $x71512 $x73782) (or $x69043 $x73359 $x73378 $x73745 (not $x74808) $x75039 $x76416) $x157519 (or $x69043 $x74191 $x75536) $x83017 (or $x7618 $x69043 $x71103 $x71512 $x73782) $x83070 (or $x69043 $x73323 $x73963 $x74364 $x74644) (or $x69043 $x70604 $x73340 $x75673 $x75954 $x76206 $x76282) $x160477 (or $x69043 $x70402 $x72037 $x73835 $x75015) $x162880 (or $x69043 $x73871 $x75287 $x77166) (or $x69043 $x77166 (not (<= (- 10.0) (+ ?x400 S_3 L_0 loss_rate_tol)))) (or $x69043 $x73235 (not $x74611)) (or $x69043 $x70604 $x73340 $x73520 $x76282) (or $x69043 $x73323 $x74022 $x74644 $x76364) $x158327 $x83516 (or $x69043 $x73323 $x74644 $x75765 $x76310) (or $x69043 $x73323 $x73846 $x74644 $x76223) (or $x69043 $x72196 $x74191) (or $x69043 $x70438 $x70604 $x73340 $x75673 $x75722) $x162998 (or $x69043 $x70688 $x72037 $x73835 $x75015) (or $x69043 $x70604 $x73340 $x73678 $x76282) (or $x69043 $x73453 $x73963 $x75015 $x75722) (or $x69043 $x73323 $x73963 $x74022 $x74644) (or $x69043 $x73323 $x73963 $x74644 $x75722) (or $x69043 $x76223 $x71512 $x73782 $x73961) (or $x69043 $x71512 $x73782 $x74191) (or $x69043 $x73544 $x73835 $x74031 $x75015) $x162814 (or $x69043 $x73453 $x73871 $x75015 $x75287) (or $x69043 $x70983 $x73235) (or $x69043 $x70983 $x73036 $x75582) (or $x69043 $x70983 $x73323 $x74644) (or $x69043 $x70983 $x73453 $x75015) (or $x69043 $x72196 $x75234 $x76223) (or $x69043 $x73036 $x74191 $x75582) (or $x69043 $x70604 $x71087 $x73340 $x74191) (or $x69043 $x73427 $x73763 $x73871 $x74031 $x75015 $x75287) $x157997 (or $x69043 $x70402 $x73427 $x73763 $x74031 $x75015) (or $x68614 $x69043 $x71512 $x73782 $x73961) (or $x69043 $x73835 $x73871 $x74031 $x75015 $x75287) (or $x69043 $x72037 $x73835 $x73871 $x75015 $x75722) (or $x69043 $x72037 $x73520 $x73835 $x75015) (or $x69043 $x73323 $x73846 $x74644 $x76250) $x162166 (or $x69043 $x70604 $x73340 $x73963 $x74364 $x76282) (or $x69043 $x73235 $x73963 $x74364) (or $x69043 $x73963 $x74364 $x75536) (or $x69043 $x73359 $x73745 $x74191 $x75039) (or $x69043 $x73235 (not (<= 0.0 ?x23730))) (or $x69043 $x73453 $x73544 $x75015) (or $x69043 $x71103 $x73963 $x75536) (or $x69043 $x70983 $x75536) (or $x69043 $x73427 $x73544 $x73763 $x75015 (<= (- 10.0) (+ ?x408 S_0 L_0))) (or $x69043 $x73235 $x73520) (or $x69043 $x75536 $x75722 $x78793 $x81323) (or $x69043 $x75536 (not (<= 0.0 ?x23730))) (or $x69043 $x73036 (not (<= 0.0 (+ ?x4455 ?x2267 S_2 ?x452 ?x4430))) $x75582) (or $x69043 $x70604 $x73340 $x74739 $x75954 $x76206 $x76282) (or $x69043 $x73036 $x75582 $x77507 $x79002) (or $x69043 $x70438 $x70604 $x73340 $x74013 $x74739) (or $x69043 $x70438 $x70604 $x73340 $x74013 $x75673) (or $x69043 $x70604 $x73340 $x76282 (not (<= 0.0 ?x23730))) (or $x67749 $x69043 $x73323 $x73963 $x74644) (or $x67749 $x69043 $x73963 $x75536) (or $x67749 $x69043 $x73235 $x73963) (or $x69043 $x70983 $x73427 $x73763 $x74031 $x75015) (or $x69043 $x73235 $x75722 $x78793 $x81323) (or $x69043 $x71103 $x73235 $x73963) $x84519 (or $x69043 $x72382 (not $x80549)) (or $x69043 $x70604 $x73340 $x75673 $x75722 $x76282 $x81323) (or $x69043 $x73427 $x73544 $x73763 $x74031 $x75015) $x34 (<= (+ ?x934 L_0 S_0) 0.0) (<= (+ ?x412 L_0 S_1) 0.0) (<= (+ ?x408 L_0 S_2) 0.0) (<= (+ (* (- 1.0) A_3) L_0 S_3) 0.0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
