; benchmark generated from python API
(set-info :status unknown)
(declare-fun A_3 () Real)
(declare-fun L_2 () Real)
(declare-fun S_3 () Real)
(declare-fun S_4 () Real)
(declare-fun S_1 () Real)
(declare-fun S_2 () Real)
(declare-fun A_2 () Real)
(declare-fun L_4 () Real)
(declare-fun A_4 () Real)
(declare-fun S_0 () Real)
(declare-fun A_1 () Real)
(declare-fun L_1 () Real)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(assert
 (let ((?x775 (* (- 1.0) A_1)))
 (let ((?x761 (* (- 1.0) L_4)))
 (let ((?x763 (* (- 1.0) L_0)))
 (let ((?x793 (* (- 1.0) A_3)))
 (let (($x11800 (<= (+ ?x793 A_0 ?x763 L_2 ?x761 L_1 ?x775 A_4) 0.0)))
 (let ((?x772 (* (- 1.0) L_1)))
 (let (($x678 (= ?x772 ?x763)))
 (let (($x612 (not (<= 0.0 (+ L_1 S_0 (* (- 1.0) A_0))))))
 (let ((?x825 (* (- 1.0) A_4)))
 (let ((?x1412 (* (- 1.0) S_1)))
 (let ((?x1436 (* (- 2.0) L_1)))
 (let (($x178291 (<= (+ ?x1436 A_1 ?x1412 ?x825 L_4 A_0) (- 15.0))))
 (let (($x177146 (<= (+ A_2 (* (- 1.0) L_2) ?x772 ?x1412 ?x825 L_4 A_0) (- 10.0))))
 (let (($x176416 (<= (+ (* 2.0 A_0) ?x763 ?x1412 ?x825 L_4 ?x772) (- 20.0))))
 (let (($x176123 (<= (+ A_3 ?x1436 ?x1412 ?x825 L_4 A_0) (- 5.0))))
 (let (($x168859 (<= (+ L_4 (* (- 1.0) L_2) A_2 ?x793) (- 5.0))))
 (let (($x22917 (<= (+ (* (- 1.0) L_2) L_4) 0.0)))
 (let (($x1801 (<= (+ ?x772 L_2) 0.0)))
 (let (($x1747 (not $x1801)))
 (let (($x17368 (<= (+ A_4 ?x772 L_2 A_1 (* (- 1.0) A_2) ?x793) 0.0)))
 (let (($x13765 (<= (+ ?x793 ?x772 A_1 (* 2.0 L_2) ?x761 (* (- 1.0) A_2) A_4) 0.0)))
 (let (($x14138 (not $x13765)))
 (let ((?x1444 (* (- 2.0) A_1)))
 (let ((?x1443 (* 2.0 L_1)))
 (let ((?x4432 (* (- 6.0) S_1)))
 (let ((?x12182 (* (- 6.0) L_0)))
 (let ((?x12711 (* 6.0 A_0)))
 (let ((?x1596 (* (- 2.0) L_4)))
 (let ((?x1594 (* 2.0 A_4)))
 (let (($x12694 (not (<= (+ ?x1594 ?x1596 ?x12711 ?x12182 ?x4432 ?x1443 ?x1444) 0.0))))
 (let (($x12234 (not (<= (+ A_0 ?x763 (* (- 1.0) L_2) ?x1443 ?x1444 A_2) 0.0))))
 (let ((?x784 (* (- 1.0) A_2)))
 (let ((?x855 (* (- 1.0) A_0)))
 (let ((?x1426 (* 2.0 A_1)))
 (let (($x8421 (not (<= (+ ?x1436 ?x1426 L_0 L_2 ?x855 ?x784) 0.0))))
 (let ((?x3444 (* (- (/ 1.0 2.0)) L_0)))
 (let ((?x3826 (* (/ 1.0 2.0) A_0)))
 (let ((?x36717 (* (- (/ 1.0 2.0)) L_2)))
 (let ((?x36673 (* (/ 1.0 2.0) A_2)))
 (let (($x181357 (<= 0.0 (+ ?x36673 ?x36717 ?x3826 ?x3444 L_1 ?x775))))
 (let (($x170720 (not (<= 0.0 (+ S_1 L_1 ?x775)))))
 (let (($x12161 (not $x11800)))
 (let (($x3116 (<= (+ L_4 (* (- 1.0) L_2) A_2 (* (- 2.0) A_3) A_4) 0.0)))
 (let ((?x1314 (* (- 2.0) L_0)))
 (let ((?x1379 (* 2.0 A_0)))
 (let (($x1446 (<= (+ ?x1379 ?x1314 A_4 ?x761 ?x1443 L_2 ?x1444 ?x784) 0.0)))
 (let (($x1289 (not $x1446)))
 (let (($x16991 (not $x17368)))
 (let (($x7356 (not (<= (+ A_3 ?x855 L_0 ?x825 (* (- 1.0) L_2) A_1) 0.0))))
 (let (($x245116 (or $x12161 $x22917 (<= (+ ?x793 A_2 (* (- 1.0) L_2) ?x855 L_0 S_1 L_1) 0.0) $x170720)))
 (let (($x181192 (<= (+ (* (- (/ 1.0 2.0)) A_2) (* (/ 1.0 2.0) L_2) ?x3826 ?x3444) (- 5.0))))
 (let (($x175513 (<= (+ A_2 (* (- 1.0) L_2) ?x855 L_0 ?x825 L_4 ?x772 A_1) (- 5.0))))
 (let (($x8140 (<= (+ A_3 ?x855 L_0 ?x825 ?x772 A_1) 0.0)))
 (let (($x8120 (not $x8140)))
 (let (($x7395 (<= (+ A_3 ?x855 L_0 ?x825 L_4 ?x772 (* (- 1.0) L_2) A_1) 0.0)))
 (let ((?x1390 (* 2.0 L_4)))
 (let ((?x1389 (* (- 2.0) A_4)))
 (let ((?x1399 (* 2.0 L_0)))
 (let ((?x1398 (* (- 2.0) A_0)))
 (let ((?x781 (* (- 1.0) L_2)))
 (let (($x36565 (<= (+ S_4 A_2 ?x781 ?x1398 ?x1399 ?x1389 ?x1390 ?x1436 ?x1426) 0.0)))
 (let ((?x1814 (* 4.0 A_1)))
 (let ((?x1813 (* (- 4.0) L_1)))
 (let ((?x3103 (* 4.0 L_4)))
 (let ((?x16066 (* (- 4.0) A_4)))
 (let ((?x4463 (* 3.0 L_0)))
 (let ((?x2078 (* (- 3.0) A_0)))
 (let (($x25461 (<= (+ (* 3.0 S_4) ?x2078 ?x4463 ?x16066 ?x3103 ?x1813 ?x1814) 0.0)))
 (let (($x1286 (not (<= (+ ?x825 ?x761 L_2 ?x784 (* 2.0 A_3)) 0.0))))
 (let (($x181837 (<= (+ ?x1436 A_1 ?x1412 L_4 A_0 ?x793) (- 10.0))))
 (let (($x173873 (<= (+ A_2 ?x781 L_4 A_0 ?x1412 ?x772 ?x793) (- 5.0))))
 (let (($x186790 (not (<= (+ ?x775 A_2) 5.0))))
 (let (($x180098 (<= (- 10.0) (+ A_0 ?x763 L_2 ?x784))))
 (let (($x180099 (not $x180098)))
 (let (($x177535 (not (<= (+ A_4 ?x793) 5.0))))
 (let ((?x3129 (* 4.0 A_3)))
 (let ((?x3128 (* (- 4.0) A_2)))
 (let ((?x3127 (* 4.0 L_2)))
 (let ((?x1336 (* (- 3.0) L_4)))
 (let (($x3099 (not (<= (+ A_0 ?x763 ?x1336 ?x3127 ?x3128 ?x3129 ?x825) 0.0))))
 (let (($x169274 (not (<= (+ L_2 ?x761 ?x784 A_4) 10.0))))
 (let (($x19319 (<= (+ ?x1436 ?x1426 ?x825 L_4 ?x1399 ?x781 ?x1398 A_2) 0.0)))
 (let (($x19275 (not $x19319)))
 (let (($x169139 (<= (+ (* 2.0 L_2) ?x1596 (* (- 2.0) A_2) (* 2.0 A_3)) 10.0)))
 (let (($x169137 (not $x169139)))
 (let (($x168991 (<= (+ (* (- 2.0) A_2) (* 2.0 A_3)) 10.0)))
 (let (($x41744 (<= (+ L_1 ?x1444 (* 3.0 S_2) ?x1412 ?x825 L_4 A_0) 0.0)))
 (let ((?x2360 (* (- 3.0) L_1)))
 (let ((?x1429 (* 2.0 A_3)))
 (let (($x38927 (<= (+ ?x775 L_4 (* 2.0 S_2) ?x1412 A_0 ?x793) 0.0)))
 (let (($x525504 (or $x1747 $x22917 $x38927 (<= (+ ?x1429 ?x784 L_2 ?x2360 ?x1412 ?x825 L_4 A_0) 0.0) $x41744)))
 (let ((?x40895 (* (/ 1.0 3.0) L_4)))
 (let ((?x40937 (* (- (/ 1.0 3.0)) A_4)))
 (let ((?x19813 (* (/ 1.0 3.0) A_1)))
 (let ((?x19768 (* (- (/ 1.0 3.0)) L_1)))
 (let (($x186471 (<= (+ ?x19768 ?x19813 ?x40937 ?x40895) (- 5.0))))
 (let ((?x1310 (* (- 3.0) A_2)))
 (let ((?x1287 (* 3.0 L_2)))
 (let ((?x4409 (* (- 3.0) L_0)))
 (let ((?x2377 (* 3.0 A_0)))
 (let (($x517535 (or $x7395 $x22917 (not (<= (+ ?x2377 ?x4409 ?x1594 ?x1596 ?x1443 ?x1287 ?x1444 ?x1310) 0.0)) $x168859 $x186471)))
 (let (($x189861 (not (<= (+ A_0 ?x763 L_4 ?x793) (- 15.0)))))
 (let (($x179481 (<= (+ ?x1379 ?x763 ?x1412 L_4 ?x772 ?x793) (- 15.0))))
 (let ((?x1414 (* (- 2.0) A_2)))
 (let ((?x3961 (* (/ 1.0 2.0) L_4)))
 (let ((?x3960 (* (- (/ 1.0 2.0)) A_4)))
 (let (($x503017 (or $x3099 (<= (+ ?x3826 ?x3444 ?x3960 ?x3961 ?x1414 ?x1429) 0.0) $x176416 $x177146 $x178291 $x179481 $x181837 $x189861)))
 (let (($x176096 (not (<= (+ ?x1594 ?x1596 (* 2.0 L_2) (* (- 2.0) A_3)) 10.0))))
 (let (($x169164 (<= (+ ?x1379 ?x1314 (* 2.0 L_2) (* (- 2.0) A_3)) (- 30.0))))
 (let ((?x20888 (* (/ 3.0 2.0) S_3)))
 (let ((?x20849 (* (- (/ 1.0 2.0)) A_1)))
 (let ((?x20830 (* (- (/ 1.0 2.0)) L_1)))
 (let (($x37001 (<= (+ ?x20830 ?x20849 ?x20888 ?x1412 ?x825 L_4 A_0) 0.0)))
 (let (($x32714 (<= (+ L_4 S_3 A_0 ?x1412 ?x772 ?x793) 0.0)))
 (let ((?x3906 (* (- (/ 1.0 2.0)) L_4)))
 (let ((?x3367 (* (/ 1.0 2.0) A_4)))
 (let ((?x3979 (+ ?x3826 ?x3444 ?x3367 ?x3906 L_2 ?x784)))
 (let ((?x1450 (* (- 2.0) A_3)))
 (let ((?x1392 (* 2.0 A_2)))
 (let ((?x1391 (* (- 2.0) L_2)))
 (let ((?x14577 (* (/ 2.0 3.0) S_4)))
 (let (($x19834 (<= (+ (* (/ 2.0 3.0) L_1) (* (- (/ 2.0 3.0)) A_1) ?x14577 ?x1390 ?x1391 ?x1392 ?x1450) 0.0)))
 (let (($x55016 (<= (+ ?x1429 A_0 L_0 S_2 (* (- 2.0) S_1) ?x1389 ?x1390 ?x1813) 0.0)))
 (let (($x34878 (<= (+ L_0 (* 2.0 S_2) ?x1412 ?x825 L_4 ?x772) 0.0)))
 (let (($x3572 (<= (+ A_0 S_2 ?x1412 L_2 ?x772 ?x784) 0.0)))
 (let (($x36764 (<= (+ ?x2078 ?x4463 (* 3.0 S_1) ?x825 L_4 ?x772 A_1) 0.0)))
 (let (($x36521 (<= (+ A_2 ?x781 ?x1398 ?x1399 S_1 ?x825 L_4 ?x772 A_1) 0.0)))
 (let ((?x34946 (+ (* (- 6.0) A_0) (* 6.0 L_0) (* 6.0 S_2) ?x16066 ?x3103 ?x1813 ?x1814)))
 (let (($x34947 (<= ?x34946 0.0)))
 (let ((?x16783 (* (/ 1.0 3.0) L_2)))
 (let ((?x4653 (* (- (/ 1.0 3.0)) L_0)))
 (let ((?x4631 (* (/ 1.0 3.0) A_0)))
 (let ((?x16828 (* (/ 2.0 3.0) A_3)))
 (let ((?x16842 (+ ?x16828 ?x4631 ?x4653 ?x16783 ?x784)))
 (let (($x171989 (<= 0.0 ?x16842)))
 (let (($x174391 (<= 0.0 (+ ?x36673 ?x36717 ?x3367 ?x3961 ?x793))))
 (let (($x46630 (<= (+ ?x3826 (* (/ 1.0 2.0) L_0) L_4 (* (/ 3.0 2.0) S_2) ?x1412 ?x772 ?x793) 0.0)))
 (let (($x22682 (<= (+ ?x772 A_1 ?x781 L_4 L_0 ?x855 A_2 ?x793) 0.0)))
 (let (($x2823 (<= (+ ?x1398 ?x1399 (* 2.0 S_1) L_4 ?x772 A_1 ?x793) 0.0)))
 (let (($x2822 (<= (+ ?x855 L_0 S_2 L_4 ?x772 A_1 ?x793) 0.0)))
 (let (($x21035 (<= (+ L_1 ?x775 S_2 ?x781 L_4 A_2 ?x793) 0.0)))
 (let (($x503066 (or $x1747 $x21035 $x22917 (<= (+ A_3 ?x772 ?x775 S_2 ?x1412 ?x825 L_4 A_0) 0.0) $x41744)))
 (let (($x41387 (<= (+ A_4 L_1 ?x775 ?x763 A_0 ?x793) 0.0)))
 (let (($x7406 (<= (+ A_3 ?x825 L_4 L_1 ?x1391 ?x775 A_2) 0.0)))
 (let (($x4990 (<= (+ (* (/ 1.0 2.0) S_4) ?x3826 ?x3444 L_2 ?x784) 0.0)))
 (let (($x56687 (<= (+ (* (- (/ 4.0 3.0)) S_4) (* (- (/ 2.0 3.0)) A_0) ?x4653 S_0 L_1 ?x761 A_4) 0.0)))
 (let ((?x20864 (* (/ 1.0 2.0) A_1)))
 (let ((?x20836 (* (/ 1.0 2.0) L_1)))
 (let (($x14589 (<= (+ (* (- 1.0) S_4) A_0 ?x763 A_4 ?x761 L_1 ?x775) 0.0)))
 (let (($x7366 (<= (+ A_3 (* (- 1.0) S_4) ?x781) 0.0)))
 (let (($x2122 (<= (+ (* (- 2.0) S_4) A_2 ?x781 ?x855 S_0 A_4 ?x761 L_1) 0.0)))
 (let (($x222596 (or $x678 $x2122 $x7366 $x14589 (<= (+ ?x20836 ?x20864 (* (- (/ 3.0 2.0)) S_4) S_0 ?x761 ?x855 A_4) 0.0) $x56687)))
 (let (($x248317 (or (<= (+ S_4 ?x855 L_0 ?x1390 ?x1436 ?x1426 ?x1450) 0.0) $x8140 $x22682 $x22917 $x25461 $x36565)))
 (let (($x171734 (not (<= 0.0 (+ S_2 L_2 ?x784)))))
 (let (($x261969 (or $x14138 $x21035 $x22917 (not (<= (+ ?x1436 ?x1426 A_4 ?x761 (* (- 3.0) S_2)) 0.0)) $x171734)))
 (let (($x259525 (or (not (<= (+ ?x761 ?x772 (* 2.0 L_2) A_1 ?x1414 A_3) 0.0)) $x16991 $x22917 $x171734)))
 (let (($x15862 (not (<= (+ A_0 ?x763 (* (- 1.0) S_2) L_1 ?x761 ?x775 A_3) 0.0))))
 (let (($x171883 (<= 0.0 (+ ?x1436 ?x1426 A_4 ?x761 ?x1287 ?x1310))))
 (let (($x177506 (not (<= (+ L_2 ?x761 ?x784 A_3) 5.0))))
 (let (($x174449 (<= (+ ?x36673 ?x36717 ?x3960 ?x3961) (- 5.0))))
 (let (($x2887 (<= (+ A_0 ?x763 ?x761 L_1 L_2 ?x775 ?x784 A_3) 0.0)))
 (let (($x2861 (not $x2887)))
 (let (($x218125 (or $x1289 $x12161 (<= (+ ?x1450 ?x1594 ?x1336 A_0 ?x763 ?x3127 ?x784) 0.0) $x22682 $x22917 $x170720)))
 (let (($x220602 (or $x678 $x2122 $x7366 $x14589 (<= (+ ?x36673 ?x36717 ?x3960 ?x3961 ?x772 A_1 L_0 ?x855) 0.0) $x56687)))
 (let (($x14792 (<= (+ (* (- 1.0) S_4) ?x855 ?x761 S_0 L_1 A_3) 0.0)))
 (let ((?x2866 (* 3.0 A_3)))
 (let ((?x1921 (* (- 3.0) A_1)))
 (let ((?x2317 (* 3.0 L_1)))
 (let ((?x1388 (* (- 2.0) S_4)))
 (let ((?x3951 (* (/ 1.0 2.0) L_0)))
 (let ((?x3907 (* (- (/ 1.0 2.0)) A_0)))
 (let ((?x36691 (* (/ 1.0 2.0) L_2)))
 (let ((?x36695 (* (- (/ 1.0 2.0)) A_2)))
 (let (($x257285 (or $x678 $x1747 $x2122 $x11800 (<= (+ (* (- 1.0) S_4) ?x855 S_0 A_3) 0.0) $x181357)))
 (let ((?x2825 (* (- 3.0) A_3)))
 (let ((?x1402 (* 3.0 L_4)))
 (let ((?x1400 (* 2.0 S_3)))
 (let (($x2847 (<= (+ ?x1398 ?x1399 ?x1400 ?x1402 ?x2360 (* 3.0 A_1) ?x2825) 0.0)))
 (let (($x524799 (or $x2847 $x22682 $x22917 (<= (+ ?x855 L_0 S_3 ?x825 L_4 ?x772 A_1) 0.0))))
 (let ((?x4719 (* (/ 4.0 3.0) S_3)))
 (let ((?x4680 (* (/ 1.0 3.0) L_0)))
 (let ((?x4695 (* (/ 2.0 3.0) A_0)))
 (let (($x29946 (<= (+ ?x4695 ?x4680 ?x4719 ?x1412 ?x825 L_4 ?x772) 0.0)))
 (let (($x175738 (not (<= 0.0 (+ L_4 S_3 ?x793)))))
 (let (($x172865 (not (<= 0.0 (+ ?x784 L_2 ?x1400 ?x825 L_4)))))
 (let (($x22350 (<= (+ L_1 ?x775 S_3 ?x1391 ?x1390 ?x1392 ?x1450) 0.0)))
 (let (($x212940 (or $x22350 (not (<= 0.0 (+ ?x20830 ?x20864 (* (/ 1.0 2.0) S_3) L_2 ?x784))) $x172865)))
 (let (($x39095 (<= (+ ?x1379 ?x4409 (* (- 4.0) S_2) S_0 A_4 ?x761 L_1) 0.0)))
 (let (($x1659 (<= (+ ?x772 A_1 (* (- 1.0) S_2)) 0.0)))
 (let (($x39509 (<= (+ ?x784 L_2 ?x1379 (* (- 1.0) S_2) ?x1314 A_4 ?x761 L_1 ?x775) 0.0)))
 (let (($x2284 (<= (+ ?x784 L_2 A_0 (* (- 2.0) S_2) ?x1314 S_0 A_4 ?x761 L_1) 0.0)))
 (let (($x7982 (<= (+ ?x793 ?x3907 (* (- (/ 1.0 2.0)) S_3) ?x3444 S_0 A_4 ?x761 ?x1443) 0.0)))
 (let (($x2134 (<= (+ A_2 ?x781 (* (- 1.0) S_3)) 0.0)))
 (let (($x1836 (<= (+ ?x1436 ?x1426 (* (- 1.0) S_3) L_0 ?x855) 0.0)))
 (let (($x62391 (<= (+ ?x3907 ?x3444 (* (- (/ 3.0 2.0)) S_3) S_0 L_1 ?x761 A_3) 0.0)))
 (let (($x192037 (or $x678 $x2134 $x8421 (<= (+ A_1 (* (- 2.0) S_3) S_0 ?x761 ?x855 A_3) 0.0) $x62391)))
 (let (($x40458 (<= (+ (* (/ 1.0 2.0) S_4) ?x36673 ?x36717 ?x772 ?x1412 L_4 A_0 ?x793) 0.0)))
 (let (($x19818 (<= (+ (* (- (/ 4.0 3.0)) L_1) ?x19813 ?x14577 ?x1412 L_4 A_0 ?x793) 0.0)))
 (let (($x18704 (<= (+ ?x772 S_4 ?x1412 ?x825 L_4 A_0) 0.0)))
 (let (($x4988 (<= (+ (* (/ 1.0 2.0) S_4) (* (/ 3.0 2.0) A_0) (* (- (/ 3.0 2.0)) L_0) ?x1443 ?x1444) 0.0)))
 (let (($x1409 (<= (+ ?x1379 ?x1314 (* (- 2.0) S_2) A_4 ?x761 L_2 ?x784) 0.0)))
 (let (($x191216 (or $x678 $x1289 $x1409 (<= (+ ?x2377 ?x4409 A_4 ?x761 (* (- 3.0) S_2) L_1 ?x775) 0.0) $x39095)))
 (let (($x207686 (or $x14138 (<= (+ L_1 ?x775 (* 2.0 S_2) L_2 ?x793) 0.0) $x22917 $x171734)))
 (let ((?x1404 (* 3.0 A_2)))
 (let ((?x1403 (* (- 3.0) L_2)))
 (let ((?x1401 (* (- 3.0) A_4)))
 (let (($x1406 (<= (+ ?x1398 ?x1399 ?x1400 ?x1401 ?x1402 ?x1403 ?x1404) 0.0)))
 (let (($x36740 (<= (+ (* (/ 3.0 2.0) A_2) (* (- (/ 3.0 2.0)) L_2) ?x3960 ?x3961 L_1 ?x775) 0.0)))
 (let (($x21211 (<= (+ (* (- (/ 3.0 2.0)) L_1) (* (/ 3.0 2.0) A_1) (* (- (/ 1.0 2.0)) S_4) L_0 ?x855) 0.0)))
 (let (($x510533 (or $x678 $x7366 (not (<= (+ ?x14577 ?x4631 ?x4653 L_2 ?x784) 0.0)) $x14589 $x21211 $x56687)))
 (let (($x259859 (or (<= 0.0 (+ A_0 ?x763 A_4 ?x761 (* 2.0 L_2) ?x1414)) $x2823 $x8140 $x22682 $x22917 $x36764)))
 (let (($x189148 (or $x678 $x1659 (<= (+ ?x1379 ?x1314 (* (- 2.0) S_2) ?x761 L_1 ?x775 A_3) 0.0) (<= (+ A_0 ?x1314 ?x761 (* (- 3.0) S_2) S_0 L_1 A_3) 0.0))))
 (let (($x7393 (<= (+ ?x1429 L_0 ?x1412 ?x1389 ?x1390 ?x772 ?x1403 A_2) 0.0)))
 (let ((?x3105 (* (- 4.0) L_2)))
 (let (($x3085 (<= (+ S_4 ?x855 L_0 ?x3103 ?x3105 (* 4.0 A_2) (* (- 4.0) A_3)) 0.0)))
 (let (($x1394 (<= (+ S_4 ?x855 L_0 ?x1389 ?x1390 ?x1391 ?x1392) 0.0)))
 (let (($x168697 (or $x7406 (<= (+ ?x1443 ?x1444 (* 2.0 S_2) ?x825 L_4 ?x781 A_2) 0.0) $x21035 $x22917)))
 (let (($x35548 (<= (+ ?x2078 ?x4463 (* 3.0 S_1) ?x1404 ?x2825) 0.0)))
 (let (($x7361 (<= (+ ?x1429 ?x855 (* (- 1.0) S_3) L_0 ?x1389 ?x1390 ?x3105 ?x1392) 0.0)))
 (let (($x1419 (<= (+ ?x1398 ?x1399 (* 2.0 S_1) ?x825 L_4 ?x781 A_2) 0.0)))
 (let (($x211653 (or $x7406 (<= (+ ?x1443 ?x1444 (* 2.0 S_4) ?x1401 ?x1402 ?x1403 ?x1404) 0.0) $x19834 $x22917)))
 (let (($x267284 (or $x22917 (<= (+ ?x784 L_2 ?x1400 ?x772 ?x1412 ?x825 L_4 A_0) 0.0) $x32714)))
 (let (($x32770 (<= (+ ?x1404 ?x1403 ?x1390 A_0 L_0 (* (- 2.0) S_1) ?x1436 ?x1450) 0.0)))
 (let ((?x26446 (* (- (/ 1.0 4.0)) L_0)))
 (let ((?x26458 (* (/ 5.0 4.0) A_0)))
 (let ((?x26432 (* (/ 3.0 4.0) S_4)))
 (let (($x517441 (or $x18704 $x19818 $x22917 (<= (+ ?x26432 ?x26458 ?x26446 ?x1412 L_4 ?x772 ?x793) 0.0) $x32770)))
 (let (($x37987 (<= (+ ?x2360 ?x1426 ?x1412 L_2 L_0 ?x784) 0.0)))
 (let (($x204804 (or $x1801 (<= (+ ?x1450 (* 2.0 S_4) ?x1379 ?x763 ?x1412 ?x1287 ?x772 ?x784) 0.0) $x37987)))
 (let (($x11771 (<= (+ L_1 ?x763) 0.0)))
 (let (($x1421 (<= (+ ?x1398 L_0 S_0 ?x825 L_4 L_1 ?x1391 ?x1392) 0.0)))
 (let (($x7377 (<= (+ A_3 (* (- 1.0) S_2) ?x825 L_4 ?x1391 A_2) 0.0)))
 (let (($x3061 (<= (+ ?x855 L_0 S_2 ?x1390 ?x1391 ?x1392 ?x1450) 0.0)))
 (let (($x1411 (<= (+ ?x855 L_0 S_2 ?x825 L_4 ?x781 A_2) 0.0)))
 (let (($x239681 (or $x678 $x1836 $x2134 (<= (+ A_0 ?x763 (* (- 1.0) S_3) ?x761 L_1 ?x775 A_3) 0.0) $x62391)))
 (let (($x3112 (<= (+ ?x1398 L_0 S_0 ?x1390 L_1 ?x1403 ?x1404 ?x1450) 0.0)))
 (let (($x88073 (<= (+ ?x784 L_2 ?x761 (* (- 1.0) S_2) ?x763 S_0 L_1 A_3) 0.0)))
 (let (($x263690 (or $x1394 (not (<= (+ (* (- (/ 1.0 2.0)) S_4) ?x3826 ?x3444 ?x1414 ?x1429) 0.0)) $x7395 $x22917)))
 (let (($x2879 (<= (+ L_4 L_1 ?x1391 ?x775 ?x1392 ?x793) 0.0)))
 (let (($x16028 (<= (+ ?x1450 ?x1594 ?x1596 ?x1379 ?x1314 (* (- 2.0) S_2) (* 2.0 L_2)) 0.0)))
 (let (($x11346 (<= (+ A_0 ?x763 (* (- 1.0) S_2) ?x781 L_1 ?x775 A_2) 0.0)))
 (let ((?x1413 (* 2.0 L_2)))
 (let ((?x4112 (* 6.0 S_1)))
 (let ((?x4431 (* 4.0 L_0)))
 (let ((?x4245 (* (- 4.0) A_0)))
 (let (($x19263 (<= (+ L_1 ?x775 S_3 ?x825 L_4 ?x781 A_2) 0.0)))
 (let (($x243865 (or (<= (+ ?x1388 ?x1379 ?x1314 (* 3.0 A_4) ?x1336 ?x1287 ?x1310) 0.0) $x1801 (<= (+ ?x772 A_1 (* (- 1.0) S_4) A_4 ?x761 L_2 ?x784) 0.0))))
 (let (($x15970 (<= (+ (* (/ 4.0 3.0) A_0) ?x4653 (* (/ 2.0 3.0) S_3) ?x1412 L_2 ?x772 ?x784) 0.0)))
 (let (($x21176 (<= (+ (* (/ 3.0 2.0) L_1) ?x20849 (* (- (/ 1.0 2.0)) S_4) S_0 ?x781 ?x855 A_2) 0.0)))
 (let (($x524302 (or $x1801 (<= (+ ?x1379 ?x763 ?x1412 ?x1596 ?x772 ?x1287 ?x1310 ?x1429) 0.0) (<= (+ ?x1436 A_1 ?x1412 ?x1413 ?x761 A_0 ?x1414 A_3) 0.0))))
 (let (($x3071 (<= (+ ?x855 L_0 S_3 ?x1402 ?x1403 ?x1404 ?x2825) 0.0)))
 (let ((?x1923 (* 4.0 L_1)))
 (let (($x19307 (<= (+ ?x1923 ?x1444 (* 2.0 S_0) ?x825 L_4 ?x1403 ?x1398 ?x1404) 0.0)))
 (let (($x528427 (or $x7406 $x8421 $x11771 (<= (+ ?x1443 ?x775 S_0 L_4 ?x1391 ?x855 ?x1392 ?x793) 0.0) $x19307 $x22917)))
 (let (($x39062 (<= (+ ?x763 (* (- 2.0) S_3) S_0 A_4 ?x761 L_1) 0.0)))
 (let ((?x3957 (* (- (/ 3.0 2.0)) L_0)))
 (let ((?x8157 (* (- (/ 3.0 2.0)) S_3)))
 (let ((?x3956 (* (/ 3.0 2.0) A_0)))
 (let (($x182978 (or $x678 $x1836 $x2134 (<= (+ A_4 ?x761 ?x3956 ?x8157 ?x3957 L_1 ?x775) 0.0) $x39062)))
 (let (($x3110 (<= (+ ?x855 L_0 S_1 L_4 ?x781 A_2 ?x793) 0.0)))
 (let (($x235289 (or $x1801 (<= (+ ?x1450 (* 2.0 S_4) ?x1379 ?x1314 ?x1413 ?x1443 ?x1444) 0.0) (<= (+ ?x793 S_4 ?x1436 A_1 ?x1412 ?x1413 A_0 ?x784) 0.0))))
 (let (($x229534 (or $x1801 (not (<= (+ ?x1429 ?x855 L_0 ?x1389 ?x1390 ?x1403 A_2) 0.0)) $x14138 (not (<= 0.0 (+ ?x793 S_4 ?x772 A_1 ?x1413 ?x784))))))
 (let (($x169891 (<= (+ ?x1379 ?x1314 ?x1443 ?x1444) (- 10.0))))
 (let (($x223050 (or $x1801 (<= (+ ?x1398 ?x1399 (* 2.0 S_1) ?x1413 ?x1436 ?x1426 ?x1414) 0.0))))
 (let (($x19265 (<= (+ ?x1813 ?x1426 (* (- 2.0) S_1) A_4 ?x761 ?x1287 ?x1379 ?x1310) 0.0)))
 (let (($x509849 (or (<= (+ ?x1379 ?x763 ?x1412 A_4 ?x761 ?x772 ?x1413 ?x1414) 0.0) $x1801 $x19265)))
 (let (($x20819 (<= (+ (* (- (/ 3.0 2.0)) L_1) ?x20864 (* (/ 1.0 2.0) S_3) ?x1412 L_2 A_0 ?x784) 0.0)))
 (let (($x525046 (or $x1801 (<= (+ ?x4695 (* (- (/ 2.0 3.0)) L_0) (* (/ 1.0 3.0) S_3) L_1 ?x775) 0.0) $x20819)))
 (let (($x180695 (or $x678 $x1659 $x11800 (<= (+ ?x793 ?x763 (* (- 1.0) S_2) S_0 ?x1443 ?x761 A_4) 0.0))))
 (let (($x245239 (or $x678 $x1801 $x11800 (<= (+ ?x1450 ?x763 S_0 ?x1594 ?x1596 L_1 ?x1287 ?x784) 0.0) $x13765)))
 (let (($x14817 (<= (+ (* (- (/ 2.0 3.0)) S_4) (* (- (/ 4.0 3.0)) A_0) ?x4680 S_0 L_1 ?x781 A_2) 0.0)))
 (let (($x270144 (or $x7366 $x11771 (<= (+ (* (- 1.0) S_4) A_0 ?x763 ?x2317 ?x1403 ?x1921 ?x1404) 0.0) $x14817)))
 (let (($x525363 (or $x678 $x2134 $x8421 (<= (+ ?x772 ?x1426 (* (- 3.0) S_3) S_0 A_4 ?x761 ?x855) 0.0) $x39062)))
 (let (($x526009 (or $x1801 (<= (+ A_0 ?x763 (* (- 1.0) S_3) ?x1596 ?x1413 ?x1414 ?x1429) 0.0) (<= (+ ?x772 A_1 ?x761 (* (- 1.0) S_3) L_2 ?x784 A_3) 0.0))))
 (let (($x58858 (or $x1659 (<= (+ S_4 ?x784 L_2 ?x1379 (* (- 2.0) S_2) ?x1314) 0.0))))
 (let (($x3849 (<= (+ ?x1388 ?x4245 ?x4431 ?x4112) 0.0)))
 (let (($x220624 (or $x3849 $x7366 (<= (+ (* (- 1.0) S_4) A_2 ?x781 ?x855 L_0 S_1) 0.0))))
 (let (($x234293 (or $x1801 (<= (+ ?x1450 A_0 ?x763 S_2 ?x1594 ?x1596 ?x3127 ?x1414) 0.0) $x13765)))
 (let ((?x14472 (* (/ 1.0 3.0) S_4)))
 (let ((?x19828 (* (/ 2.0 3.0) A_1)))
 (let ((?x20090 (* (- (/ 5.0 3.0)) L_1)))
 (let (($x18786 (<= (+ (* (/ 1.0 4.0) S_4) (* (/ 3.0 4.0) A_0) (* (- (/ 3.0 4.0)) L_0) L_1 ?x775) 0.0)))
 (let (($x240143 (or $x1801 (<= (+ (* (/ 1.0 2.0) S_4) ?x3956 ?x3444 ?x1412 L_2 ?x772 ?x784) 0.0) (not $x18786))))
 (let ((?x16855 (* (/ 5.0 3.0) L_2)))
 (let ((?x4696 (* (- (/ 2.0 3.0)) L_0)))
 (let ((?x16801 (* (- (/ 2.0 3.0)) A_3)))
 (let (($x524238 (or $x7366 (<= (+ ?x1388 ?x1379 ?x1314) (- 30.0)) (<= (+ ?x20830 ?x20864 (* (- (/ 1.0 2.0)) S_4)) (- 5.0)) (<= (+ (* (- 1.0) S_4) A_2 ?x781) (- 5.0)))))
 (let (($x14219 (<= (+ ?x793 L_1 A_1 (* (- 1.0) S_3) S_0 ?x761 ?x855 A_4) 0.0)))
 (let (($x261538 (or $x1801 (<= (+ ?x1450 S_4 A_0 ?x763 A_4 ?x761 ?x1287 ?x784) 0.0) $x13765)))
 (let (($x16464 (<= (+ ?x1450 (* 2.0 S_4) ?x1379 ?x1314 (* (- 2.0) S_2) ?x1413) 0.0)))
 (let ((?x40870 (* (- (/ 1.0 3.0)) L_4)))
 (let ((?x40940 (* (/ 1.0 3.0) A_4)))
 (let ((?x19827 (* (- (/ 2.0 3.0)) L_1)))
 (let (($x239011 (or $x1801 (<= (+ (* (/ 1.0 2.0) S_4) ?x3907 ?x3951 ?x1413 ?x1436 ?x1426 ?x1414) 0.0))))
 (let (($x16562 (<= (+ ?x1450 (* 2.0 S_4) A_0 (* (- 1.0) S_3) ?x763 ?x1413) 0.0)))
 (let (($x46203 (or $x2134 $x16562 (<= (+ ?x793 S_4 ?x772 A_1 (* (- 1.0) S_3) L_2) 0.0))))
 (let (($x260968 (or (<= (+ A_0 ?x763 (* (- 1.0) S_3) A_4 ?x761 L_2 ?x784) 0.0) $x1801 (<= (+ A_4 ?x761 ?x1436 ?x1426 (* (- 2.0) S_3) L_2 ?x784) 0.0))))
 (let (($x271056 (or $x1801 (<= (+ (* (- 1.0) S_4) A_0 ?x763 ?x1336 ?x1287 ?x1310 ?x2866) 0.0) (<= (+ ?x20830 ?x20864 (* (- (/ 1.0 2.0)) S_4) ?x761 L_2 ?x784 A_3) 0.0))))
 (let ((?x4676 (* (/ 2.0 3.0) S_3)))
 (let ((?x4692 (* (- (/ 2.0 3.0)) A_0)))
 (let (($x526427 (or $x1801 (<= (+ ?x4692 (* (/ 2.0 3.0) L_0) ?x4676 ?x1413 ?x1436 ?x1426 ?x1414) 0.0))))
 (let (($x171973 (or $x678 $x1659 (<= (+ ?x763 (* (- 2.0) S_2) S_0 ?x781 L_1 A_2) 0.0) $x11346)))
 (let (($x18557 (or $x2134 (<= (+ (* (/ 1.0 2.0) S_4) ?x3826 ?x3444 (* (- 1.0) S_3)) 0.0) (<= (+ ?x1436 ?x1426 S_4 (* (- 3.0) S_3)) 0.0))))
 (let (($x18058 (or $x1659 (<= (+ ?x4695 ?x4696 (* (/ 1.0 3.0) S_3) (* (- 1.0) S_2)) 0.0))))
 (let (($x14867 (<= (+ ?x3826 (* (- (/ 1.0 2.0)) S_3) ?x3444 L_1 ?x781 ?x775 A_2) 0.0)))
 (let (($x262041 (or $x678 (<= (+ L_1 (* (- 1.0) S_3) S_0 ?x781 ?x855 A_2) 0.0) $x14867)))
 (let (($x505407 (or $x3849 $x7366 (<= 0.0 (+ ?x855 L_0 (* 2.0 S_1) L_2 ?x784)))))
 (let (($x525147 (or $x2134 (<= (+ ?x855 L_0 (* (- 1.0) S_3) (* 2.0 S_1)) 0.0))))
 (let (($x170163 (or (<= (+ ?x772 A_1 (* (- 1.0) S_3)) (- 5.0)) $x2134 (<= (+ A_0 ?x763 (* (- 1.0) S_3)) (- 10.0)))))
 (let (($x6352 (or $x1659 (<= (+ (* (/ 1.0 2.0) S_4) ?x3956 ?x3957 (* (- 2.0) S_2)) 0.0))))
 (let (($x255921 (or $x1659 $x1801 (<= (+ A_0 ?x763 (* (- 1.0) S_2) ?x761 L_2 ?x784 A_3) 0.0))))
 (let (($x41 (>= A_1 A_0)))
 (let (($x42 (>= A_2 A_1)))
 (let (($x43 (>= A_3 A_2)))
 (let (($x44 (>= A_4 A_3)))
 (and (<= ?x772 ?x763) $x44 $x43 $x42 $x41 (<= ?x781 ?x772) (<= ?x761 ?x781) (or $x1446 $x1659 $x1801) $x255921 $x6352 (or $x1659 (<= (+ ?x1379 ?x1314 (* (- 2.0) S_2)) (- 10.0))) $x170163 $x525147 $x505407 (or $x1801 $x3572) (or $x612 $x678 $x14867) $x262041 $x18058 $x18557 (or $x1801 $x171734) $x171973 (or $x1801 (<= (+ ?x855 L_0 S_2 ?x1413 ?x1436 ?x1426 ?x1414) 0.0)) $x526427 (or $x1801 (<= (+ ?x761 ?x772 ?x1413 A_1 ?x1414 A_3) 0.0)) (or $x1289 $x1409 $x1801) $x271056 $x260968 (or $x1801 $x13765 (<= (+ ?x793 A_0 ?x763 A_4 ?x761 ?x1413 ?x784) (- 5.0))) (or (<= (+ ?x1388 ?x855 L_0 (* 3.0 S_2)) 0.0) $x7366) (or $x612 $x678 $x2887) (or $x1286 $x22917 (not (<= 0.0 (+ S_4 ?x825 L_4)))) (or $x1801 $x8421 (not $x171883)) (or $x678 $x2887 $x14792) (or $x678 $x8421 $x14792) (or $x612 $x678 $x8421) $x46203 $x239011 (or $x1801 (<= (+ ?x19827 ?x19828 ?x40940 ?x40870 L_2 ?x784) 0.0)) (or $x1659 $x16464) $x261538 (or $x678 (not $x1836) $x2134 $x14219) $x524238 (or $x1659 (<= (+ ?x1414 ?x1413 ?x1400 ?x1379 (* (- 2.0) S_2) ?x1314) 0.0)) (or $x1801 (<= (+ ?x793 S_1 A_4 ?x761 ?x1413 ?x784) 0.0)) (or $x1801 $x13765 (<= (+ ?x16801 A_4 ?x761 ?x4695 ?x4696 ?x16855 ?x784) 0.0)) $x240143 (or $x1801 $x4988 (<= (+ ?x20090 ?x19828 ?x14472 ?x1412 L_2 A_0 ?x784) 0.0)) $x234293 (or $x1801 (<= (+ ?x793 S_4 ?x1413 ?x772 A_1 ?x784) 0.0)) (or $x1801 $x169891 (not (<= (+ ?x1392 ?x1391 ?x1443 ?x1444) 10.0))) (or $x7366 (<= (+ ?x20836 ?x20849 (* (- (/ 1.0 2.0)) S_4) S_2) 0.0)) $x220624 (or $x1419 $x3110 $x7366 $x22917) (or $x19263 $x22917 $x175738) $x58858 (or $x678 $x1446 $x1659 $x2284) $x526009 $x525363 (or $x612 $x678 $x19275) $x270144 (or $x1286 $x1421 $x7366 $x11771 $x22917 $x171883) (or $x1801 (<= (+ L_2 ?x772 A_1 ?x784) (- 5.0))) (or $x1406 $x2847 $x7366 $x22917 $x171989) $x245239 (or $x612 $x678 $x170720) $x180695 $x525046 $x509849 $x223050 (or $x1406 $x7395 $x8120 $x19319) (or $x1406 $x3071 $x7393 $x22917) (or $x1406 $x3071 $x7406 $x22917) (or $x1411 $x3061 $x7395 $x22917) (or $x1411 $x3061 $x7393 $x22917) (or $x1801 $x169891 (<= (+ ?x1436 A_1 ?x1412 L_2 A_0 ?x784) (- 5.0))) $x229534 (or $x1421 $x3112 $x7393 $x8421 $x11771 $x22917) $x235289 (or $x1286 $x1406 $x7361 $x22917) (or $x1419 $x3110 $x7377 $x22917) (or $x1419 $x3110 $x7406 $x22917) $x182978 (or $x1411 $x3061 $x7366 $x22917) (or $x1394 $x3085 $x7406 $x22917) $x528427 (or $x1406 $x3071 $x8140 $x22917) (or $x1801 $x12234 $x170720) (or $x7395 $x22917 $x168859 $x174449) (or $x7366 $x22917 $x168859 $x174449) (or (<= (+ ?x825 L_4 ?x781 ?x784 ?x1429) 0.0) $x22917 $x168859 $x174449) (or $x7361 $x22917 $x168859 $x174449) (or $x7406 $x22917 $x168859 $x174449) (or (<= (+ ?x825 L_4 ?x781 A_2) (- 10.0)) $x7377 $x22917 $x168859) $x524302 (or $x1419 $x7395 $x22917 $x35548) (or $x1394 $x3085 $x7361 $x22917) (or $x1801 (not $x2879) $x8421) (or $x7366 $x8421 $x11771 $x21176) (or $x1801 $x15970 $x37987) $x243865 (or $x19263 $x22350 $x22917) (or $x2861 (<= (+ ?x4245 ?x4431 ?x4112 ?x1413 ?x1450) 0.0) $x8140 $x22917 $x170720) (or $x1421 $x7393 $x11771 $x13765 $x22917 $x171883) (or $x1286 $x1421 $x7361 $x11771 $x22917 $x171883) (or $x1406 $x7377 $x22350 $x22917) (or $x1421 $x11346 $x11771 $x12161 $x16028 $x22917) (or $x1421 $x2879 $x3112 $x7395 $x11771 $x22917 $x171883) (or $x1421 $x7377 $x11771 $x13765 $x22917 $x171883) (or $x1421 $x7377 $x11771 $x17368 $x22917 $x171883) (or $x1801 $x37987 (<= (+ ?x1379 ?x763 ?x1412 L_2 ?x772 ?x784) (- 10.0))) (or $x1394 $x7395 $x19834 $x22917) (or $x1411 $x3061 $x7406 $x22917) $x263690 (or $x678 $x1659 $x2887 $x88073) (or $x1411 $x3061 $x8421 $x12161 $x22917) (or $x1394 $x3085 $x8421 $x12161 $x22917) (or $x8421 $x12161 $x22917 $x168859 $x174449) (or $x1421 $x3112 $x7406 $x8421 $x11771 $x22917) $x239681 (or $x1411 $x3061 $x7361 $x22917) (or $x1394 $x3085 $x7377 $x22917) (or $x1421 $x11771 $x12161 $x14138 $x17368 $x171883) (or $x1406 $x8421 $x12161 $x22350 $x22917) (or $x1419 $x8421 $x12161 $x22917 $x35548) (or $x612 $x678 (not (<= (+ ?x1436 ?x1426 ?x1399 ?x1398) 10.0))) (or $x4990 (<= (+ ?x1436 ?x1426 S_4 ?x1287 ?x1310) 0.0) $x18704 $x22917 $x40458) $x204804 $x517441 (or $x1801 $x12234 $x180099) (or (<= (+ ?x825 L_4 ?x781 A_2) (- 10.0)) $x7393 $x22917 $x168859) $x267284 $x211653 (or $x1419 $x7361 $x22917 $x35548) $x168697 (or $x1394 $x3085 $x7393 $x22917) $x189148 (or (<= (+ L_4 S_3 ?x793) 0.0) $x174391) (or $x22917 $x174391 $x175738) $x259859 $x510533 (or $x7406 $x22682 $x22917 (<= (+ L_4 ?x772 A_1 ?x793) (- 10.0)) $x174449) (or $x2822 $x22917 $x36740 $x174391) (or $x1406 $x2847 $x8140 $x22682 $x22917) (or $x7406 $x22917 $x38927 $x41744) $x207686 $x191216 (or $x4988 $x18704 $x19818 $x22917 $x40458) (or $x612 $x678 (not $x22682) $x175738) $x192037 (or $x678 $x1836 $x2134 $x7982 $x11800) (or $x168991 (<= (+ L_2 ?x772 A_1 ?x784) (- 5.0)) $x174391 $x177506) (or $x22917 $x38927 $x41744 $x174391) (or $x678 $x1289 $x2284 $x39509) (or $x678 $x1446 $x1659 $x39095) (or $x22917 $x34878 (not $x41387) $x46630) $x212940 (or $x22917 $x172865 $x175738) (or $x22917 $x37001 (<= (+ A_0 S_3 ?x1412 ?x793) 0.0)) (or $x22917 $x29946 (<= (+ A_0 S_3 ?x1412 ?x793) 0.0)) (or $x3116 $x22917 $x29946) (or $x22917 $x29946 $x32714) $x524799 (or $x8140 $x22682 $x22917 (<= (+ L_4 ?x772 A_1 ?x793) (- 10.0)) $x175513 $x186471) $x257285 (or $x2861 $x8140 $x22917 (<= (+ ?x36695 ?x36691 ?x3907 ?x3951 S_1) 0.0) $x170720) (or $x678 (<= (+ ?x1388 ?x1379 ?x1314 ?x1336 ?x2317 ?x1921 ?x2866) 0.0) $x14792) $x220602 $x218125 (or $x7395 $x22917 $x171883 $x173873 $x176416 $x179481 $x181357) (or $x2861 $x8140 $x12234 $x22917 $x170720) (or $x168991 $x174449 $x177506 $x181192 $x186790) (or $x7406 $x22917 $x171883 $x173873 $x176416 $x178291 $x179481 $x181837) (or $x8140 $x8421 $x15862 $x22917) (or $x12234 $x168991 $x169137 $x174391 (not (<= (+ ?x1436 ?x1426 ?x1399 ?x1398) 10.0))) $x259525 $x261969 (or $x8140 $x22917 $x173873 $x176416 $x177146 $x179481 $x181837) $x248317 (or $x678 $x2122 $x7366 $x14589 $x56687 $x181357) $x222596 (or $x7395 (not (<= ?x16842 0.0)) $x22917 $x169164) (or $x3116 $x4990 $x7395 $x22917 $x36565) (or $x168991 $x169137 (<= (+ L_2 ?x772 A_1 ?x784) (- 5.0)) $x177535) (or $x1289 $x7395 $x8120 $x169274 $x181192) (or $x1286 $x7406 $x17368 $x169274 $x181192 $x186790) (or $x22917 $x41387 $x173873 $x176416 $x177146 $x178291 $x181837 $x189861) $x503066 (or $x3572 $x22917 $x38927 $x41744 $x55016) (or $x2822 $x8140 $x22917 $x34947) (or $x2823 $x8140 $x22682 $x22917 $x36521 $x36764) (or $x1286 $x7395 (not (<= ?x16842 0.0)) $x22917 $x25461) (or $x12161 $x12234 $x22917 $x170720 $x171989) (or $x22917 $x173873 $x174391 $x176416 $x177146 $x178291 $x179481 $x181837) (or $x1289 $x7356 $x7395 $x170720 $x181357) (or $x22917 $x34878 $x46630 $x174391) (or $x7395 $x22917 $x168859 $x180098 $x186471) (or $x7395 $x8120 (not (<= ?x16842 0.0)) $x36764) (or (<= ?x3979 0.0) $x7395 $x22917 $x34947 $x171989) (or $x7395 $x8120 $x34947) (or $x1286 $x7395 $x22917 $x36521 $x36764) (or $x3572 $x22917 $x34878 $x38927 $x55016) (or $x7395 $x19834 $x22917 $x25461 (<= 0.0 ?x3979)) (or $x22917 $x32714 $x37001) (or $x22917 (<= (+ A_2 ?x793) (- 5.0)) $x176096) (or $x22917 $x168859 $x169164 $x169274 $x176096 $x186790) (or $x22917 $x173873 $x176416 $x177146 $x179481 $x181357 $x189861) $x503017 (or $x612 $x678 (not $x7395) (not (<= 0.0 (+ S_4 ?x825 L_4)))) $x517535 $x525504 (or $x1289 $x7395 $x8120 $x177146 $x181192) (or $x168859 $x168991 $x175513 $x181192) (or $x168991 $x169137 $x177535 $x181192 $x186790) (or $x14138 $x19275 $x22917 $x168859 $x169274 $x186790) (or $x3099 $x22917 $x177535 $x180099 $x186790) (or $x1747 $x22917 $x173873 $x176123 $x177146 $x178291 $x181192 $x181837) (or $x1286 $x7395 $x22917 $x25461 $x36565) (or $x7395 $x8120 $x175513 $x181192) $x245116 (or $x7356 $x12234 $x12694 $x16991 $x22917 $x170720) (or $x1289 $x3116 $x12161 $x22917 $x170720 $x181357) (or $x8421 $x12234 $x12694 $x14138 $x17368) (or $x1747 $x22917 $x168859 $x176123 $x176416 $x177146 $x178291) (or $x612 $x678 $x11800) (<= (+ S_0 L_0 ?x855) 0.0) (<= (+ L_1 ?x775 S_1) 0.0) (<= (+ ?x1412 S_0) 0.0) (<= (+ S_4 ?x825 L_4) 0.0) (<= (+ ?x784 L_2 S_2) 0.0) (<= (+ (* (- 1.0) S_3) S_2) 0.0) (<= (+ (* (- 2.0) S_2) (* 2.0 S_1)) 0.0) (<= (+ ?x1388 ?x1400) 0.0) (<= (+ ?x1400 ?x1413 ?x1450) 0.0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
