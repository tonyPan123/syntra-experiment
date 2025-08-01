; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_1 () Real)
(declare-fun S_2 () Real)
(declare-fun S_0 () Real)
(declare-fun L_0 () Real)
(declare-fun A_0 () Real)
(declare-fun L_1 () Real)
(declare-fun S_3 () Real)
(declare-fun A_3 () Real)
(declare-fun A_1 () Real)
(declare-fun A_2 () Real)
(declare-fun loss_rate_tol () Real)
(declare-fun A_4 () Real)
(assert
 (let (($x100640 (not (<= (- 10.0) (+ (* (- 1.0) A_4) A_2 loss_rate_tol)))))
 (let (($x100012 (not (<= (- 5.0) (+ (* (/ 1.0 4.0) A_3) (* (- (/ 1.0 4.0)) A_4))))))
 (let (($x99578 (not (<= (- 35.0) (+ A_0 (* (- 1.0) L_0) L_1 (* (- 1.0) A_4))))))
 (let (($x99297 (not (<= (- 30.0) (+ A_1 (* (- 1.0) A_4))))))
 (let ((?x847 (* (- 1.0) L_1)))
 (let ((?x899 (* (- 1.0) A_4)))
 (let ((?x1112 (* (- 1.0) A_0)))
 (let (($x96110 (not (<= 0.0 (+ A_3 ?x1112 L_0 ?x899 ?x847 A_1 loss_rate_tol)))))
 (let (($x96048 (not (<= 0.0 loss_rate_tol))))
 (let (($x93394 (not (<= (- 5.0) (+ (* (/ 1.0 5.0) A_2) (* (- (/ 1.0 5.0)) A_4))))))
 (let ((?x1493 (* (- 1.0) S_1)))
 (let ((?x2976 (* (/ 3.0 2.0) S_3)))
 (let ((?x2831 (* (- (/ 1.0 2.0)) A_1)))
 (let ((?x2838 (* (/ 1.0 2.0) L_1)))
 (let (($x98078 (not (<= 0.0 (+ ?x2838 ?x2831 ?x2976 ?x1493 ?x899 A_0 loss_rate_tol)))))
 (let (($x12039 (<= (+ A_4 (* (- 3.0) L_1) (* 2.0 A_1) (* (- 3.0) S_3)) 0.0)))
 (let (($x12004 (not $x12039)))
 (let ((?x7698 (* (/ 2.0 3.0) L_0)))
 (let ((?x4055 (* (- (/ 2.0 3.0)) A_0)))
 (let (($x98370 (not (<= 0.0 (+ ?x4055 ?x7698 (* (/ 2.0 3.0) S_3) ?x899 A_2 loss_rate_tol)))))
 (let ((?x8701 (* (/ 1.0 2.0) A_2)))
 (let ((?x2825 (* (- (/ 1.0 2.0)) L_1)))
 (let ((?x17796 (* (- (/ 1.0 2.0)) S_1)))
 (let ((?x1497 (* (/ 1.0 2.0) L_0)))
 (let ((?x2846 (* (/ 1.0 2.0) S_3)))
 (let ((?x10265 (* (/ 1.0 2.0) A_3)))
 (let (($x98050 (not (<= 0.0 (+ ?x10265 ?x2846 ?x1497 ?x17796 ?x899 ?x2825 ?x8701 loss_rate_tol)))))
 (let (($x97542 (<= 0.0 (+ (* (- (/ 4.0 3.0)) A_0) (* (/ 4.0 3.0) L_0) (* (/ 7.0 3.0) S_3) L_1 ?x899))))
 (let (($x97543 (not $x97542)))
 (let (($x103336 (not (<= (- 10.0) (+ A_2 ?x847 ?x1493 ?x899 A_0 loss_rate_tol)))))
 (let (($x100959 (<= (- 20.0) (+ (* 2.0 A_0) (* (- 1.0) L_0) ?x1493 ?x899 loss_rate_tol))))
 (let (($x100960 (not $x100959)))
 (let (($x99380 (not (<= (- 15.0) (+ ?x847 A_1 ?x1493 ?x899 A_0 loss_rate_tol)))))
 (let (($x98669 (not (<= (- 20.0) (+ A_0 (* (- 1.0) L_0) L_1 (* (- 1.0) A_1))))))
 (let (($x98337 (not (<= (- 5.0) (+ A_3 ?x847 ?x1493 ?x899 A_0 loss_rate_tol)))))
 (let (($x97322 (not (<= (- 15.0) (+ L_1 S_0 ?x1112)))))
 (let (($x1815 (<= (+ L_1 (* (- 1.0) L_0)) 0.0)))
 (let (($x97190 (<= (+ L_1 (* (- 1.0) A_1) (* (- 1.0) L_0) A_0) (- 5.0))))
 (let ((?x838 (* (- 1.0) L_0)))
 (let (($x758 (= ?x847 ?x838)))
 (let ((?x14358 (* (/ 5.0 2.0) S_2)))
 (let ((?x13323 (* (/ 5.0 2.0) L_0)))
 (let (($x100332 (not (<= 0.0 (+ (* (- (/ 7.0 2.0)) A_0) ?x13323 ?x14358 S_0 L_1 A_2 ?x899)))))
 (let ((?x850 (* (- 1.0) A_1)))
 (let ((?x4444 (* 3.0 S_2)))
 (let ((?x1500 (* 2.0 L_0)))
 (let ((?x3581 (* (- 2.0) A_0)))
 (let (($x100194 (not (<= 0.0 (+ ?x3581 ?x1500 ?x4444 L_1 ?x850 A_2 ?x899)))))
 (let ((?x12130 (* 2.0 loss_rate_tol)))
 (let ((?x2400 (* (- 2.0) L_1)))
 (let ((?x2662 (* (- 2.0) A_4)))
 (let ((?x3228 (* (- 2.0) S_1)))
 (let ((?x2705 (* 2.0 A_3)))
 (let (($x98093 (not (<= 0.0 (+ ?x2705 A_0 L_0 S_2 ?x3228 ?x2662 ?x2400 ?x12130)))))
 (let (($x5811 (not (<= (+ A_0 ?x838 (* (- 1.0) S_2) (* (- 1.0) A_2) A_4) 0.0))))
 (let (($x98443 (not (<= 0.0 (+ A_2 ?x3581 ?x1500 S_1 ?x899 ?x847 A_1 loss_rate_tol)))))
 (let (($x97267 (<= 0.0 (+ (* (- 4.0) A_0) (* 3.0 L_0) (* 3.0 S_1) S_0 L_1))))
 (let (($x97268 (not $x97267)))
 (let (($x10341 (<= (+ (* (- (/ 1.0 2.0)) A_2) (* (- (/ 1.0 2.0)) A_0) ?x1497 S_1 ?x2838) 0.0)))
 (let (($x99671 (not (<= (- 15.0) (+ ?x899 A_1 loss_rate_tol)))))
 (let (($x99565 (not (<= (+ A_0 ?x838 L_1 (* (- 1.0) A_3)) (- 15.0)))))
 (let (($x99519 (not (<= (+ A_1 ?x899) (- 15.0)))))
 (let (($x98954 (not (<= (+ A_0 ?x838 L_1 (* (- 1.0) A_2)) (- 10.0)))))
 (let (($x99690 (not (<= (- 5.0) (+ A_2 ?x1112 L_0 ?x899 ?x847 A_1 loss_rate_tol)))))
 (let (($x253271 (or $x1815 $x97322 (not (<= (+ A_2 ?x1112 L_0 ?x847) 10.0)) (not (<= (+ A_2 ?x1112 L_0 ?x899 ?x847 A_1) (- 5.0))) (not (<= (+ (* (- 1.0) A_3) A_2) (- 5.0))) $x99690)))
 (let (($x614 (not (<= 0.0 (+ L_1 ?x850 S_3 ?x899 A_2 loss_rate_tol)))))
 (let (($x98305 (not (<= 0.0 (+ ?x1112 L_0 S_3 ?x899 A_1 loss_rate_tol)))))
 (let (($x101675 (not (<= (- 30.0) (+ A_0 ?x838 L_1 ?x850 A_2 ?x899)))))
 (let (($x99328 (not (<= (- 25.0) (+ ?x1112 S_0 L_1 A_2 ?x899)))))
 (let ((?x2426 (* (- 2.0) A_1)))
 (let ((?x2421 (* 2.0 L_1)))
 (let (($x100168 (not (<= 0.0 (+ ?x2421 ?x2426 ?x4444 ?x1493 ?x899 A_0 loss_rate_tol)))))
 (let (($x99016 (not (<= 0.0 (+ A_3 ?x850 S_2 ?x1493 ?x899 A_0 loss_rate_tol)))))
 (let (($x94056 (<= 0.0 (+ (* (/ 4.0 3.0) L_1) ?x850 S_2 (* (/ 1.0 3.0) S_0) (* (- (/ 1.0 3.0)) A_0)))))
 (let (($x94001 (not $x94056)))
 (let (($x5214 (<= (+ (* (/ 3.0 2.0) A_0) (* (- (/ 1.0 2.0)) L_0) (* (/ 1.0 2.0) S_2) ?x1493 ?x850) 0.0)))
 (let (($x105319 (not (<= 0.0 (+ ?x10265 ?x1112 L_0 S_2 (* (- (/ 1.0 2.0)) A_4))))))
 (let (($x100559 (not (<= 0.0 (+ ?x1112 L_0 S_2 ?x899 A_2 loss_rate_tol)))))
 (let (($x100190 (not (<= 0.0 (+ (* (- (/ 5.0 2.0)) A_0) ?x13323 (* (/ 7.0 2.0) S_2) L_1 ?x899)))))
 (let (($x698 (<= (+ ?x847 A_1 (* (- 1.0) S_3)) (- 5.0))))
 (let (($x97229 (not $x698)))
 (let (($x94524 (<= 0.0 (+ (* (- 3.0) A_2) (* 3.0 S_3) (* 4.0 L_1) S_0 ?x1112))))
 (let (($x96354 (not $x94524)))
 (let (($x247523 (or $x1815 $x96048 $x96354 $x97229 (not (<= 0.0 (+ S_3 ?x1112 L_0 ?x899 A_1 loss_rate_tol))))))
 (let (($x104179 (not (<= 0.0 (+ (* (/ 1.0 4.0) A_3) ?x1112 L_0 S_1 (* (- (/ 1.0 4.0)) A_4))))))
 (let (($x98459 (not (<= 0.0 (+ ?x3581 ?x1500 (* 2.0 S_1) ?x899 A_2 loss_rate_tol)))))
 (let (($x98275 (<= 0.0 (+ A_2 (* (- 5.0) A_0) (* 5.0 L_0) (* 5.0 S_1) ?x899))))
 (let (($x98276 (not $x98275)))
 (let (($x97498 (<= 0.0 (+ (* (- 6.0) A_0) (* 6.0 L_0) (* 7.0 S_1) L_1 ?x899))))
 (let (($x97499 (not $x97498)))
 (let (($x634 (not (<= 0.0 (+ (* (/ 5.0 2.0) L_1) (* (- (/ 3.0 2.0)) A_1) ?x2976 S_0 ?x1112)))))
 (let ((?x28243 (* (/ 5.0 3.0) S_3)))
 (let (($x100326 (<= 0.0 (+ (* (- (/ 8.0 3.0)) A_0) (* (/ 5.0 3.0) L_0) ?x28243 S_0 L_1 A_2 ?x899))))
 (let (($x100327 (not $x100326)))
 (let (($x97445 (not (<= 0.0 (+ S_3 (* (- 1.0) S_2) ?x899 A_2 loss_rate_tol)))))
 (let (($x93500 (not (<= 0.0 (+ (* (- (/ 4.0 5.0)) A_2) S_3 L_1 (* (- (/ 1.0 5.0)) A_4))))))
 (let (($x254281 (or (not (<= 0.0 (+ L_1 S_3 (* (- 1.0) A_3)))) $x93500 $x96048 $x96110)))
 (let ((?x13914 (* 5.0 S_1)))
 (let ((?x15408 (* 5.0 L_0)))
 (let ((?x7419 (* (- 6.0) A_0)))
 (let (($x100324 (not (<= 0.0 (+ ?x7419 ?x15408 ?x13914 S_0 L_1 A_2 ?x899)))))
 (let (($x97404 (not (<= 0.0 (+ (* (- 1.0) A_3) A_0 S_3 ?x838 ?x2421 ?x2426 A_2)))))
 (let (($x98415 (not (<= 0.0 (+ ?x1112 L_0 (* 2.0 S_2) L_1 ?x850)))))
 (let (($x92242 (<= 0.0 (+ (* (- (/ 5.0 2.0)) A_0) (* (/ 3.0 2.0) L_0) (* (/ 3.0 2.0) S_2) S_0 L_1))))
 (let (($x95876 (not $x92242)))
 (let (($x98852 (not (<= 0.0 (+ ?x3581 L_0 S_3 S_0 L_1)))))
 (let (($x97418 (<= (+ (* (- (/ 1.0 2.0)) A_2) (* (/ 1.0 2.0) A_0) (* (- (/ 1.0 2.0)) L_0) ?x2838) (- 5.0))))
 (let (($x104336 (not (<= 0.0 (+ L_0 (* 2.0 S_2) ?x1493 ?x899 loss_rate_tol)))))
 (let (($x93150 (<= 0.0 (+ (* (- 1.0) A_2) S_3 L_1 ?x899 A_3 loss_rate_tol))))
 (let (($x96902 (not $x93150)))
 (let ((?x2534 (* (- 5.0) A_1)))
 (let ((?x2041 (* 6.0 L_1)))
 (let (($x100337 (not (<= 0.0 (+ ?x2041 ?x2534 (* 5.0 S_2) S_0 ?x1112 A_2 ?x899)))))
 (let (($x5382 (<= (+ ?x2400 (* 2.0 A_1) (* (- 2.0) S_2) (* (- 1.0) A_2) A_4) 0.0)))
 (let (($x92684 (not (<= (+ ?x847 A_1 (* (- 1.0) S_2)) (- 5.0)))))
 (let (($x100319 (not (<= (- 25.0) (+ L_1 S_0 ?x1112 A_2 ?x899)))))
 (let ((?x2422 (* 2.0 S_3)))
 (let ((?x859 (* (- 1.0) A_2)))
 (let (($x98124 (not (<= 0.0 (+ ?x859 ?x2422 L_1 ?x1493 ?x899 A_0 loss_rate_tol)))))
 (let (($x92090 (not (<= 0.0 (+ L_1 ?x850 S_2 ?x899 A_3 loss_rate_tol)))))
 (let ((?x1515 (* (/ 1.0 2.0) S_2)))
 (let ((?x1491 (* (- (/ 1.0 2.0)) L_0)))
 (let ((?x1485 (* (/ 1.0 2.0) A_0)))
 (let ((?x1531 (+ ?x1485 ?x1491 ?x1515 L_1 ?x850)))
 (let (($x1532 (<= ?x1531 0.0)))
 (let ((?x2553 (* 4.0 S_2)))
 (let ((?x2551 (* 5.0 L_1)))
 (let (($x664 (not (<= 0.0 (+ ?x2551 (* (- 4.0) A_1) ?x2553 S_0 ?x1112 A_3 ?x899)))))
 (let ((?x8498 (* (/ 4.0 3.0) S_3)))
 (let ((?x13581 (* (/ 4.0 3.0) L_0)))
 (let (($x98885 (not (<= 0.0 (+ (* (- (/ 7.0 3.0)) A_0) ?x13581 ?x8498 S_0 L_1 A_3 ?x899)))))
 (let ((?x7703 (* (/ 1.0 3.0) S_3)))
 (let ((?x7786 (* (/ 1.0 3.0) L_0)))
 (let ((?x4019 (* (- (/ 1.0 3.0)) A_0)))
 (let (($x98206 (not (<= 0.0 (+ ?x4019 ?x7786 ?x7703 ?x899 A_3 loss_rate_tol)))))
 (let (($x120282 (or $x1815 $x96048 $x98206 $x98885 (not (<= 0.0 (+ ?x4055 ?x7698 ?x28243 L_1 ?x850 A_3 ?x899))))))
 (let (($x98427 (not (<= 0.0 (+ ?x4019 ?x7786 ?x8498 L_1 ?x850)))))
 (let ((?x1510 (* (/ 3.0 2.0) S_2)))
 (let ((?x1509 (* (/ 3.0 2.0) L_0)))
 (let ((?x1507 (* (- (/ 3.0 2.0)) A_0)))
 (let (($x98363 (not (<= 0.0 (+ ?x1507 ?x1509 ?x1510 ?x899 A_1 loss_rate_tol)))))
 (let (($x97296 (not (<= (- 5.0) (+ ?x899 A_3 loss_rate_tol)))))
 (let ((?x1520 (* (- 1.0) S_2)))
 (let ((?x867 (* (- 1.0) A_3)))
 (let (($x11654 (<= (+ ?x867 A_0 S_3 ?x838 ?x1520 L_1 ?x850 A_2) 0.0)))
 (let (($x121775 (or $x1815 $x96048 $x96110 $x98370 (not (<= 0.0 (+ ?x1112 L_0 ?x2422 L_1 ?x850 A_2 ?x899))) $x100327)))
 (let (($x97235 (not (<= 0.0 (+ ?x1112 L_0 S_1 ?x899 A_3 loss_rate_tol)))))
 (let (($x123678 (or $x664 $x1815 $x92090 (not (<= 0.0 (+ (* 4.0 L_1) (* (- 3.0) A_1) ?x2553 ?x859))) $x96048)))
 (let (($x116041 (or (not (<= (+ A_4 A_0 (* (- 2.0) S_3) ?x838 ?x847) 0.0)) $x96048 $x97445)))
 (let (($x98423 (not (<= 0.0 (+ (* (- (/ 1.0 2.0)) A_0) ?x1497 ?x1515 ?x899 A_3 loss_rate_tol)))))
 (let (($x98435 (<= 0.0 (+ (* (- 3.0) A_0) (* 3.0 L_0) (* 4.0 S_1) L_1 ?x850))))
 (let (($x98438 (not $x98435)))
 (let (($x98764 (not (<= 0.0 (+ ?x2421 ?x2426 (* 2.0 S_2) ?x899 A_2 loss_rate_tol)))))
 (let (($x119352 (or $x758 (<= (+ L_1 ?x850 S_2 A_2 ?x867) 0.0) $x94001 $x96048 $x98764 $x99016)))
 (let (($x90922 (not (<= 0.0 (+ (* (- (/ 5.0 7.0)) A_0) L_0 S_2 (* (- (/ 2.0 7.0)) A_4))))))
 (let (($x100995 (not (<= 0.0 (+ (* (/ 1.0 4.0) A_3) L_1 ?x850 S_2 (* (- (/ 1.0 4.0)) A_4))))))
 (let (($x97850 (not (<= 0.0 (+ ?x2041 ?x2534 (* 6.0 S_2) ?x899)))))
 (let ((?x2867 (* (- (/ 3.0 2.0)) L_1)))
 (let (($x98306 (<= 0.0 (+ (* (/ 3.0 2.0) A_2) ?x1507 ?x1509 ?x899 ?x2867 A_1 loss_rate_tol))))
 (let (($x98307 (not $x98306)))
 (let ((?x1808 (+ ?x847 A_1 ?x1520)))
 (let (($x1809 (<= ?x1808 0.0)))
 (let (($x97568 (not (<= (- 20.0) (+ L_1 S_0 ?x1112 A_3 ?x899)))))
 (let (($x248489 (or $x1815 $x96048 $x97568 (not (<= (- 25.0) (+ A_0 ?x838 L_1 ?x850 A_3 ?x899))) (not (<= (+ ?x867 A_4) 5.0)))))
 (let (($x97438 (<= 0.0 (+ (* (- 3.0) A_0) ?x1500 (* 2.0 S_2) S_0 L_1 A_3 ?x899))))
 (let (($x151812 (or (<= (+ (* (- (/ 1.0 2.0)) A_0) ?x1497 ?x1515 ?x899 A_3) 0.0) $x1815 $x96048 (not $x97438) (not (<= 0.0 (+ ?x1507 ?x1509 ?x14358 L_1 ?x850 A_3 ?x899))))))
 (let (($x100146 (not (<= (+ A_0 ?x838 L_1 ?x850 A_2 ?x867) (- 10.0)))))
 (let ((?x7708 (* 3.0 S_1)))
 (let ((?x7413 (* 3.0 L_0)))
 (let ((?x7425 (* (- 3.0) A_0)))
 (let (($x98152 (not (<= 0.0 (+ ?x7425 ?x7413 ?x7708 ?x899 A_1 loss_rate_tol)))))
 (let ((?x23949 (+ (* (/ 7.0 2.0) L_1) (* (- (/ 5.0 2.0)) A_1) (* (/ 5.0 2.0) S_3) S_0 ?x1112 A_2 ?x899)))
 (let (($x98100 (not (<= 0.0 (+ (* (/ 2.0 3.0) A_0) ?x7786 ?x8498 ?x1493 ?x899 loss_rate_tol)))))
 (let ((?x19361 (* (- (/ 1.0 3.0)) A_3)))
 (let ((?x4021 (* (/ 1.0 3.0) L_1)))
 (let ((?x7820 (* (- (/ 1.0 3.0)) L_0)))
 (let ((?x3969 (* (/ 1.0 3.0) A_0)))
 (let (($x99820 (<= (+ ?x3969 ?x7820 ?x4021 ?x19361) (- 5.0))))
 (let ((?x1127 (+ A_2 ?x867)))
 (let (($x9552 (<= ?x1127 (- 5.0))))
 (let (($x136635 (or (<= (+ ?x4055 ?x7698 S_1 ?x4021 ?x19361) 0.0) $x96048 $x96110 $x98276 $x98307 $x104179)))
 (let (($x99897 (<= 0.0 (+ (* (- 5.0) A_0) ?x15408 (* 6.0 S_1) L_1 ?x850 A_2 ?x899))))
 (let (($x98034 (not (<= (+ ?x899 A_2) (- 10.0)))))
 (let (($x251478 (or $x1815 $x97445 $x98034 (not $x97190) (not (<= (+ ?x1112 L_0 S_3) 15.0)) (not (<= (+ ?x3581 L_0 S_0 A_1) 5.0)) (not (<= (- 15.0) (+ ?x1112 S_0 L_1))))))
 (let (($x130132 (or (<= (+ ?x4019 ?x7786 S_2 (* (/ 2.0 3.0) L_1) (* (- (/ 2.0 3.0)) A_3)) 0.0) $x96048 $x96110 $x105319)))
 (let (($x2359 (<= (+ A_2 (* (- 1.0) S_3) ?x847) 0.0)))
 (let (($x644 (not (<= 0.0 (+ (* 3.0 L_1) ?x2426 ?x2422 S_0 ?x1112 A_3 ?x899)))))
 (let (($x123402 (or $x614 $x758 (<= (+ ?x2838 ?x2831 (* (- (/ 1.0 2.0)) S_3) S_2) 0.0) $x94001 $x96048)))
 (let (($x106931 (<= 0.0 (+ (* (- 4.0) A_2) (* 4.0 S_3) ?x1112 S_0 ?x2551 A_3 ?x899))))
 (let (($x640 (not (<= 0.0 (+ ?x2838 ?x2831 ?x2846 ?x899 A_3 loss_rate_tol)))))
 (let (($x97587 (<= 0.0 (+ (* (- 4.0) A_0) (* 4.0 L_0) ?x13914 L_1 ?x850 A_3 ?x899))))
 (let ((?x5707 (* 4.0 S_1)))
 (let ((?x7424 (* 4.0 L_0)))
 (let ((?x9837 (* (- 5.0) A_0)))
 (let (($x124768 (or $x1815 $x96048 $x97235 (not (<= 0.0 (+ ?x9837 ?x7424 ?x5707 S_0 L_1 A_3 ?x899))) (not $x97587))))
 (let (($x3918 (<= (+ A_3 ?x2400 A_1 (* (- 2.0) S_3)) 0.0)))
 (let (($x136632 (or $x96048 $x96110 $x97543 $x99690 (not (<= (- 15.0) (+ A_1 ?x899 loss_rate_tol))))))
 (let (($x96431 (<= 0.0 (+ (* (- 4.0) A_2) (* 4.0 S_3) ?x2551 S_0 ?x1112 A_3 ?x899))))
 (let (($x255369 (or $x1815 (<= (+ ?x2838 (* (/ 1.0 2.0) A_1) ?x2846 ?x859) 0.0) (<= (+ A_3 ?x850 ?x899 A_2) 0.0) $x96048 (not $x96431))))
 (let (($x12936 (<= (+ (* (- (/ 1.0 2.0)) A_3) ?x2846 ?x1491 ?x1520 (* (/ 1.0 2.0) S_0) ?x2838 ?x8701) 0.0)))
 (let (($x752 (not (<= 0.0 (+ ?x1112 S_0 L_1)))))
 (let (($x251040 (or (<= (+ ?x2400 (* 2.0 A_1) (* (- 1.0) S_3) L_0 ?x1112) 0.0) $x2359 (<= (+ ?x1485 ?x1491 (* (- (/ 1.0 2.0)) S_3)) (- 5.0)))))
 (let (($x2826 (not (<= (+ ?x2867 (* (/ 3.0 2.0) A_1) (* (- (/ 1.0 2.0)) S_3) L_0 ?x1112) 0.0))))
 (let (($x97504 (or $x752 $x758 (not (<= (+ A_2 (* (- 1.0) S_3) ?x2400 A_1 L_0 ?x1112) 0.0)))))
 (let (($x248589 (or $x2359 (<= (+ ?x1112 (* (- 1.0) S_3) L_0 (* 2.0 S_1)) 0.0))))
 (let (($x7854 (or $x1809 (<= (+ (* (/ 2.0 3.0) A_0) (* (- (/ 2.0 3.0)) L_0) ?x7703 ?x1520) 0.0))))
 (let (($x41 (>= A_1 A_0)))
 (let (($x42 (>= A_2 A_1)))
 (let (($x43 (>= A_3 A_2)))
 (let (($x44 (>= A_4 A_3)))
 (and (<= ?x847 ?x838) $x44 $x43 $x42 $x41 $x7854 (or $x1809 (<= (+ ?x859 S_3 A_0 ?x1520 ?x838 L_1) 0.0)) (or $x1809 (<= (+ A_0 ?x838 ?x1520) (- 5.0))) $x248589 (or $x752 $x758 $x97404) (or $x752 $x758 (not (<= 0.0 (+ S_1 L_1 ?x850)))) (or $x2359 $x698 $x97190) (or $x752 $x758 (not (<= (+ ?x847 A_1 L_0 ?x1112) 5.0))) (or $x758 (<= (+ ?x1112 ?x1520 S_0 A_1) 0.0) $x11654) $x97504 (or $x752 $x758 $x2826) $x251040 (or $x634 $x640 $x758 $x96048 $x97229) (or $x752 $x758 (not (<= 0.0 ?x1531))) (or $x758 $x1809 (not (<= (+ ?x1112 ?x1520 S_0 A_1) 0.0)) $x12936) (or $x614 $x634 $x758 $x96048 $x97229) $x255369 (or $x96048 $x97543 $x98206) $x136632 (or $x96048 $x96110 $x97543 $x98363) (or $x3918 $x92090 $x96048 $x97850) (or $x614 $x3918 $x96048 $x97850) (or $x96048 $x97543 $x98100) $x124768 (or $x92090 $x96048 $x97850 $x100995) (or $x1815 $x96048 $x97268 $x97445 $x98438) (or $x614 $x1815 $x96048 $x97268 $x98438) (or $x640 $x12004 $x96048) (or $x93500 $x96048 $x96902) (or $x96048 $x97235 $x97543) (or $x93500 $x96048 $x98124) (or $x614 $x1815 $x95876 $x96048 $x98415) (or $x758 $x96048 $x97322 $x97445 $x99820) (or $x1815 $x96048 $x97296 $x97418 $x97568) (or $x1815 $x96048 $x97296 $x97568 $x98415) (or $x1815 $x5214 $x95876 $x96048 $x98093 $x104336) (or $x614 $x96048 $x97850 $x100995) (or $x1815 (<= (+ A_1 ?x859) (- 5.0)) $x96048 $x97322 $x98337 $x98669 $x100960 $x103336) (or $x93394 $x96048 $x97296 $x99297 $x99578 $x100012) (or $x1815 $x95876 $x96048 $x96110 $x98363 $x98415) (or $x1815 $x96048 $x97190 $x97322 $x98337 $x100640) (or $x1815 $x96048 $x96902 $x97229 (not $x106931)) $x123402 (or $x634 $x1815 $x96048 $x97229 $x98305) (or $x96048 $x96110 $x97543 $x98370) (or $x614 $x1815 $x96048 $x97322 $x97404) (or $x644 $x1815 (<= (+ ?x2838 ?x2831 ?x2846 ?x899 A_3) 0.0) $x96048) (or $x1815 $x95876 $x96048 $x98050 $x98415 $x100559) (or $x96048 $x97850 $x98764 $x99016 $x100995) (or $x1532 $x1815 $x92090 $x94001 $x96048) (or $x1815 $x92090 $x92684 $x96048 $x100337) (or $x9552 $x96048 $x96110 $x99297 $x99820 $x100012) (or $x96048 $x98954 (not (<= (+ A_4 ?x850) 15.0)) $x99565 $x99578) (or $x1815 $x97322 $x98034 $x98669 $x100146 $x100640) (or $x96048 $x97445 $x97499 $x98276 $x104179) (or $x2359 $x96048 $x96110 $x97499 $x98459 $x104179) (or $x1815 $x96048 $x96110 $x97268 $x98438 $x98459) $x130132 (or $x90922 $x96048 $x96110 $x100559 $x105319) (or $x1815 $x96048 $x97229 $x97296 $x100319) (or $x1815 $x95876 $x96048 $x98415 $x98423) (or $x1815 $x5811 $x96048 $x98050 $x100194 $x100332) (or $x96048 $x96110 $x100190 $x100559 $x105319) (or $x1815 $x95876 $x96048 $x96110 $x98415 $x100559) (or $x1815 $x97322 $x98669 $x98954 $x99519 $x99565 $x99671) (or $x1815 $x96048 $x96110 $x98370 $x98427 $x98852) $x251478 (or $x1815 $x96048 $x96110 $x98459 (not $x99897) $x100324) $x136635 (or $x10341 $x96048 $x96110 $x98276 $x98443 $x104179) (or $x1815 $x96048 $x96110 $x97322 $x98669 $x100640) (or $x1815 $x9552 $x96048 $x96110 $x97322 $x99820) (or $x1815 $x96048 $x98100 $x98427 $x98852) (or $x614 $x1815 $x96048 $x97404 $x100327) (or $x614 $x1815 $x96048 $x97404 (not (<= 0.0 ?x23949))) (or $x1815 $x96048 $x97322 $x98050 $x98370 $x98669) (or $x1815 $x96048 $x98050 $x98370 $x99328 $x101675) (or $x96048 $x96110 $x97499 $x98152 $x98276 $x98307 $x104179) (or $x1815 $x96048 $x96110 $x97268 $x98152 $x98307 $x98438) (or $x1815 $x96048 $x99328 $x100146 $x100640 $x101675) $x151812 $x248489 (or $x1809 $x1815 $x96048 $x97322 $x98307 $x98337 $x98669 $x100960) (or $x96048 $x97850 $x99016 $x100168 $x100995) (or $x90922 $x96048 $x98093 $x100559 $x105319) $x119352 (or $x1815 $x96048 $x97235 $x97268 $x98438) (or $x614 $x96048 $x97499 $x98276 $x104179) (or $x96048 $x98423 $x100190 $x105319) $x116041 (or $x1815 $x96048 $x96110 $x99328 $x100640 $x101675) (or $x614 $x1815 $x96048 $x97229 $x100319) $x123678 (or $x614 $x96048 $x100190 $x105319) (or $x96048 $x97235 $x97499 $x98276 $x104179) (or $x96048 $x96110 $x100190 $x104336 $x105319) $x121775 (or $x614 $x1815 $x96048 $x98415 $x98852) (or $x614 $x96048 $x97543) (or $x1815 $x96048 $x97445 $x98415 $x98852) (or $x1815 $x11654 $x96048 $x97445 $x100324) (or $x96048 $x97445 $x97543) (or $x1815 $x96048 $x98305 $x98427 $x98852) (or $x1815 $x96048 $x97296 $x97322 $x98669) (or $x96048 $x96110 $x98363 $x100190 $x105319) (or $x1815 $x96048 $x98206 $x98427 $x98852) (or $x1815 $x96048 $x97445 $x99328 $x101675) $x120282 (or $x664 $x1532 $x1815 $x92090 $x96048) (or $x1815 $x96048 $x96354 $x97229 $x98124) (or $x1815 $x96048 $x97229 $x98337 $x100319 $x100640) (or $x614 $x12004 $x96048) (or $x614 $x93394 $x96048 $x99297 $x99578 $x100012) (or $x93394 $x96048 $x98337 $x99297 $x99578 $x100012 $x100640) (or $x93394 $x96048 $x98337 $x99297 $x99380 $x99578 $x100012 $x100960 $x103336) (or $x1815 $x96048 $x97229 $x97445 $x100327) (or $x614 $x1815 $x92684 $x96048 $x100337) (or $x1815 (not $x5382) $x96048 $x99016 $x100337) (or $x1815 $x96048 $x97322 $x98337 $x98669 $x100640) (or $x1815 $x96048 $x96354 $x96902 $x97229) (or $x1815 $x5811 $x96048 $x96110 $x100194 $x100332) (or $x96048 $x98093 $x100190 $x104336 $x105319) (or $x93394 $x96048 $x96110 $x97418 $x99297 $x99690 $x100012) (or $x1815 $x96048 $x98050 $x98370 $x98415 $x98852) (or $x1815 $x95876 $x96048 $x98093 $x98415 $x100559) (or $x614 $x1815 $x96048 $x97404 $x100324) $x254281 (or $x93500 $x96048 $x98305) (or $x93394 $x96048 $x97445 $x99297 $x99578 $x100012) (or $x1815 $x96048 $x97229 $x98050 $x98370 $x100327) (or $x634 $x758 $x96048 $x97229 $x98078) (or $x96048 $x96110 $x97499 $x98276 $x98459 $x104179) $x247523 (or $x96048 $x98093 $x100190 $x100559 $x105319) (or $x96048 $x98050 $x100190 $x100559 $x105319) (or $x1815 $x5214 $x94001 $x96048 $x99016 $x100168) (or $x1815 $x96048 $x98337 $x99328 $x100640 $x101675) (or $x96048 $x97543 $x98305) (or $x614 $x1815 $x96048 $x100194 $x100332) $x253271 (or $x98954 $x99297 $x99519 $x99565 $x99578 $x99671) (or $x93394 $x96048 $x98050 $x98370 $x99297 $x99578 $x100012) (or $x1815 $x10341 $x96048 $x96110 $x97268 $x98443) (or $x1815 $x5811 $x96048 $x98093 $x100194 $x100332) (or $x758 $x96048 $x97190 $x97322 $x98337 $x99380 $x103336) (or $x1815 $x96048 $x97322 $x98337 $x98669 $x99380 $x100960 $x103336) (or $x96048 $x97543 $x98050 $x98370) (or $x12004 $x96048 $x98078) (or $x93394 $x96048 $x96110 $x99297 $x99578 $x100012 $x100640) (<= (+ S_2 L_1 ?x859) 0.0) (<= (+ (* (- 1.0) S_3) S_2) 0.0) (<= (+ ?x1493 S_0) 0.0) (<= (+ L_1 ?x850 S_1) 0.0) (<= (+ ?x867 S_3 L_1) 0.0) (<= (+ ?x1112 L_0 S_0) 0.0) (<= (+ ?x1520 S_1) 0.0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
