; benchmark generated from python API
(set-info :status unknown)
(declare-fun A_1 () Real)
(declare-fun S_1 () Real)
(declare-fun L_0 () Real)
(declare-fun S_2 () Real)
(declare-fun A_2 () Real)
(declare-fun S_3 () Real)
(declare-fun S_4 () Real)
(declare-fun A_3 () Real)
(declare-fun A_0 () Real)
(declare-fun S_0 () Real)
(declare-fun L_4 () Real)
(declare-fun A_4 () Real)
(assert
 (let ((?x4275 (* (- (/ 1.0 2.0)) A_0)))
 (let ((?x1895 (* (- (/ 1.0 2.0)) L_4)))
 (let ((?x1928 (* (/ 1.0 2.0) A_4)))
 (let ((?x4815 (* (/ 1.0 2.0) S_0)))
 (let ((?x1332 (* (- 1.0) S_4)))
 (let ((?x3790 (* (/ 1.0 2.0) A_2)))
 (let (($x74254 (<= (+ ?x3790 ?x1332 ?x4815 ?x1928 ?x1895 ?x4275) 0.0)))
 (let (($x28826 (<= (+ (* 2.0 A_1) S_4 (* (- 3.0) S_3) (* (- 2.0) L_0)) 0.0)))
 (let ((?x1016 (* (- 1.0) A_0)))
 (let ((?x770 (* (- 1.0) L_4)))
 (let ((?x1640 (* (- 1.0) S_3)))
 (let (($x10963 (<= (+ ?x1332 A_1 ?x1640 S_0 A_4 ?x770 ?x1016) 0.0)))
 (let (($x6558 (<= (+ (* (- 1.0) A_1) A_0) 0.0)))
 (let (($x6116 (<= (+ A_2 ?x1640 (* (- 1.0) L_0)) 0.0)))
 (let (($x5742 (<= (+ A_3 ?x1332 S_1 (* (- 1.0) A_1)) 0.0)))
 (let ((?x2388 (* (- 3.0) A_3)))
 (let ((?x3086 (* (- 3.0) A_1)))
 (let ((?x3127 (* (- 3.0) S_1)))
 (let ((?x24171 (* 6.0 S_2)))
 (let ((?x3365 (* 3.0 L_4)))
 (let ((?x1334 (* 3.0 A_0)))
 (let (($x42813 (<= (+ ?x1334 ?x3365 ?x24171 ?x3127 ?x3086 ?x2388) 0.0)))
 (let ((?x889 (* (- 1.0) A_4)))
 (let ((?x1348 (* (- 1.0) S_1)))
 (let ((?x3066 (* 3.0 S_2)))
 (let ((?x3358 (* (- 2.0) A_1)))
 (let (($x42318 (<= (+ ?x3358 ?x3066 ?x1348 ?x889 L_4 L_0 A_0) 0.0)))
 (let (($x25743 (<= (+ A_3 ?x3358 S_2 ?x889 L_4 A_0) 0.0)))
 (let (($x16585 (<= (+ (* (- 1.0) A_1) S_2 L_4 A_0 (* (- 1.0) A_2)) 0.0)))
 (let ((?x785 (* (- 1.0) A_2)))
 (let ((?x3013 (* 2.0 A_0)))
 (let ((?x1340 (* 2.0 S_2)))
 (let (($x12121 (<= (+ A_3 ?x3358 ?x1340 ?x1348 ?x889 L_4 ?x3013 ?x785) 0.0)))
 (let (($x10361 (<= (+ (* (- 1.0) A_1) S_1 L_4) 0.0)))
 (let ((?x1370 (* 2.0 L_4)))
 (let ((?x893 (* (- 1.0) A_1)))
 (let ((?x808 (* (- 1.0) A_3)))
 (let (($x106826 (<= (+ ?x808 S_4 ?x893 S_1 ?x1370 A_0 ?x785) 0.0)))
 (let ((?x4324 (* (- (/ 1.0 2.0)) L_0)))
 (let ((?x1901 (* (/ 1.0 2.0) L_4)))
 (let ((?x1929 (* (- (/ 1.0 2.0)) A_4)))
 (let ((?x4298 (* (/ 1.0 2.0) A_1)))
 (let ((?x3808 (* (- (/ 1.0 2.0)) A_3)))
 (let (($x25841 (<= (+ ?x3808 S_4 ?x4298 ?x1640 ?x1929 ?x1901 ?x4324 ?x3790) 0.0)))
 (let (($x13368 (<= (+ ?x808 S_4 A_1 (* (- 2.0) S_3) S_0 ?x1016 A_2) 0.0)))
 (let (($x2136 (<= (+ A_2 ?x1640 ?x893 S_1) 0.0)))
 (let (($x9622 (<= (+ L_4 S_2 ?x785) 0.0)))
 (let (($x6364 (<= (+ A_3 ?x785 A_0 ?x1340 ?x1348 ?x889 L_4 ?x893) 0.0)))
 (let (($x2804 (<= (+ ?x785 S_2 ?x1348 A_0) 0.0)))
 (let ((?x6932 (* (/ 1.0 3.0) A_0)))
 (let ((?x2669 (* (/ 1.0 3.0) L_0)))
 (let ((?x5157 (* (/ 1.0 3.0) L_4)))
 (let ((?x4065 (* (- (/ 1.0 3.0)) A_4)))
 (let ((?x17381 (* (- (/ 1.0 3.0)) S_1)))
 (let ((?x5779 (* (- (/ 2.0 3.0)) A_1)))
 (let (($x79290 (<= (+ ?x5779 S_2 ?x17381 ?x4065 ?x5157 ?x2669 ?x6932) 0.0)))
 (let (($x6359 (<= (+ (* 2.0 A_3) (* (- 3.0) A_2) A_0 ?x1340 ?x1348 ?x889 L_4) 0.0)))
 (let (($x106803 (<= (+ ?x808 S_4 ?x1640 S_1 L_4) 0.0)))
 (let (($x13410 (<= (+ ?x808 (* 2.0 S_4) (* (- 2.0) S_3) S_1 ?x889 L_4 A_2) 0.0)))
 (let ((?x1947 (* (- (/ 1.0 2.0)) S_3)))
 (let ((?x3857 (* (/ 3.0 2.0) A_0)))
 (let ((?x2331 (* 2.0 S_4)))
 (let (($x97395 (<= (+ ?x808 ?x2331 ?x3857 ?x1947 ?x4324 ?x1348 ?x889 L_4) 0.0)))
 (let (($x62547 (<= (+ ?x808 S_4 A_2 ?x1640 A_0 (* (- 1.0) S_2) (* (- 1.0) L_0)) 0.0)))
 (let (($x30096 (<= (+ ?x808 S_4 A_0 (* (- 1.0) L_0) (* (- 1.0) S_2) L_4) 0.0)))
 (let (($x2639 (<= (+ ?x770 A_1 (* (- 1.0) S_2)) 0.0)))
 (let (($x1941 (<= (+ A_1 ?x770 (* (- 2.0) S_3) S_0 ?x1016 A_3) 0.0)))
 (let (($x25848 (<= (+ ?x3808 (* (- (/ 1.0 2.0)) A_1) S_3 ?x1929 ?x1901 (* (/ 1.0 2.0) L_0) ?x3790) 0.0)))
 (let (($x2775 (<= (+ ?x808 S_3 ?x1348 A_0) 0.0)))
 (let (($x2140 (<= (+ ?x808 L_4 S_3) 0.0)))
 (let (($x815619 (or $x5742 $x6558 $x10963 $x28826 (<= (+ (* 2.0 A_2) ?x1332 (* (- 1.0) L_0) ?x893) 0.0) $x74254)))
 (let (($x29841 (<= (+ A_1 (* (- 3.0) S_3) S_1 S_0 A_4 ?x770 ?x1016) 0.0)))
 (let ((?x3069 (* (- 2.0) A_0)))
 (let ((?x1438 (* (- 2.0) L_4)))
 (let ((?x1437 (* 2.0 A_4)))
 (let ((?x10050 (* 2.0 S_0)))
 (let ((?x3073 (* 3.0 A_1)))
 (let (($x11139 (<= (+ ?x808 ?x3073 (* (- 4.0) S_3) ?x10050 ?x1437 ?x1438 ?x3069) 0.0)))
 (let ((?x5782 (* (- (/ 2.0 3.0)) L_4)))
 (let ((?x5818 (* (/ 2.0 3.0) A_4)))
 (let ((?x32825 (+ (* (- (/ 1.0 3.0)) A_3) A_1 (* (- (/ 5.0 3.0)) S_3) S_0 ?x5818 ?x5782 ?x1016 (* (/ 1.0 3.0) A_2))))
 (let (($x32704 (<= ?x32825 0.0)))
 (let ((?x3369 (* (- 3.0) L_4)))
 (let ((?x3368 (* 3.0 A_4)))
 (let ((?x1335 (* (- 3.0) L_0)))
 (let ((?x3053 (* (- 3.0) S_3)))
 (let ((?x1254 (* (- 3.0) S_4)))
 (let ((?x3511 (* 3.0 A_2)))
 (let (($x61567 (<= (+ ?x3511 ?x1254 ?x3053 ?x1334 ?x1335 ?x3368 ?x3369 ?x3086) 0.0)))
 (let (($x5591 (<= (+ A_3 ?x1332 ?x785 S_2) 0.0)))
 (let (($x1278 (<= (+ S_4 A_0 (* (- 1.0) L_0) (* (- 2.0) S_3)) 0.0)))
 (let (($x36409 (<= (+ ?x785 L_4 ?x1016 ?x1340 L_0 A_1 ?x808) 0.0)))
 (let (($x7161 (<= (+ ?x785 S_3 ?x1016 S_2 L_0 ?x889 L_4 A_1) 0.0)))
 (let ((?x1358 (* (- 2.0) A_4)))
 (let ((?x1321 (* 4.0 S_3)))
 (let ((?x2313 (* (- 2.0) A_3)))
 (let (($x98492 (<= (+ ?x3808 (* (- (/ 1.0 2.0)) A_1) (* 2.0 S_3) ?x1348 ?x889 L_4 A_0) 0.0)))
 (let (($x31298 (<= (+ A_2 ?x1332 ?x770 ?x1640 S_0 ?x1016 A_3) 0.0)))
 (let ((?x2358 (* (- 2.0) L_0)))
 (let ((?x1465 (* (- 2.0) S_2)))
 (let (($x85111 (<= (+ ?x785 ?x2331 ?x1334 ?x1465 ?x2358 ?x1348 ?x889 L_4) 0.0)))
 (let ((?x3021 (* (- 3.0) S_2)))
 (let ((?x7014 (* 4.0 A_0)))
 (let (($x63402 (<= (+ ?x785 ?x2331 ?x7014 ?x3021 ?x1335 ?x1348 L_4 ?x808) 0.0)))
 (let ((?x772 (* (- 1.0) L_0)))
 (let ((?x1659 (* (- 1.0) S_2)))
 (let ((?x11747 (* (/ 1.0 2.0) S_4)))
 (let ((?x3878 (* (- (/ 1.0 2.0)) A_2)))
 (let (($x44888 (<= (+ ?x3878 ?x11747 A_0 ?x1659 ?x772 ?x1901) 0.0)))
 (let ((?x4327 (* (/ 1.0 2.0) A_0)))
 (let ((?x14842 (* (- (/ 1.0 2.0)) S_1)))
 (let ((?x4273 (* (- (/ 1.0 2.0)) A_1)))
 (let (($x14854 (<= (+ ?x3808 ?x11747 ?x4273 S_3 ?x14842 ?x889 L_4 ?x4327 ?x3790) 0.0)))
 (let (($x13045 (<= (+ ?x2313 ?x2331 A_0 ?x1640 ?x772 ?x1370) 0.0)))
 (let (($x8737 (<= (+ ?x1016 ?x1659 S_0 A_1) 0.0)))
 (let (($x8709 (not $x8737)))
 (let (($x8697 (<= (+ ?x3808 A_2 ?x1640 (* (- (/ 1.0 2.0)) S_2) ?x4324 ?x4815 ?x1928 ?x1895) 0.0)))
 (let (($x10476 (<= (+ ?x893 S_3 S_2 ?x1348 ?x889 L_4 A_0) 0.0)))
 (let ((?x3349 (* (- 3.0) A_4)))
 (let ((?x3398 (* (- 2.0) S_1)))
 (let ((?x5272 (* 5.0 S_3)))
 (let (($x32513 (<= (+ ?x3358 ?x5272 ?x3398 ?x3349 ?x3365 ?x3013 A_2 ?x808) 0.0)))
 (let ((?x3486 (* (/ 2.0 3.0) A_0)))
 (let ((?x5108 (* (/ 2.0 3.0) L_4)))
 (let ((?x4282 (* (- (/ 2.0 3.0)) A_4)))
 (let ((?x17380 (* (- (/ 2.0 3.0)) S_1)))
 (let ((?x17402 (* (/ 1.0 3.0) S_4)))
 (let (($x93122 (<= (+ ?x5779 ?x17402 S_2 ?x17380 ?x4282 ?x5108 ?x3486) 0.0)))
 (let (($x816247 (or $x2140 $x2775 (<= (+ ?x2388 ?x3013 (* 7.0 S_3) L_0 ?x3127 ?x3349 ?x3365) 0.0))))
 (let ((?x11133 (* (/ 5.0 2.0) S_2)))
 (let (($x110700 (<= (+ ?x785 (* (- (/ 3.0 2.0)) A_0) ?x11133 (* (/ 3.0 2.0) L_0) ?x889 L_4 A_1) 0.0)))
 (let (($x4493 (<= (+ A_3 ?x1016 L_0 ?x1340 ?x889 L_4 A_1 (* (- 2.0) A_2)) 0.0)))
 (let (($x16540 (<= (+ ?x893 ?x1332 ?x3066 ?x1348 L_4 A_0 ?x785) 0.0)))
 (let (($x16224 (<= (+ ?x4273 (* (- (/ 1.0 2.0)) S_4) ?x1901 S_2) 0.0)))
 (let (($x2142 (<= (+ A_3 ?x1332 ?x770) 0.0)))
 (let (($x62543 (<= (+ ?x808 ?x2331 ?x3013 ?x1659 ?x772 ?x1348 ?x889 L_4) 0.0)))
 (let (($x10076 (<= (+ ?x808 (* 2.0 A_1) ?x1640 ?x1659 S_0 A_4 ?x770 ?x1016) 0.0)))
 (let (($x3203 (<= (+ A_1 ?x1659 ?x772) 0.0)))
 (let (($x2133 (<= (+ ?x770 A_2 ?x1640) 0.0)))
 (let (($x33703 (<= (+ ?x893 (* (/ 2.0 3.0) S_4) (* (/ 1.0 3.0) S_1) L_4 A_0 ?x808) 0.0)))
 (let (($x27868 (<= (+ ?x893 (* 2.0 A_2) ?x808) 0.0)))
 (let (($x17429 (<= (+ ?x893 ?x17402 (* (/ 2.0 3.0) S_1) L_4 A_0 ?x785) 0.0)))
 (let (($x13999 (<= (+ S_4 ?x893 ?x889 L_4 A_0) 0.0)))
 (let ((?x1652 (* (/ 1.0 5.0) A_0)))
 (let ((?x12130 (* (/ 1.0 5.0) L_0)))
 (let ((?x1668 (* (/ 2.0 5.0) L_4)))
 (let ((?x12142 (* (- (/ 2.0 5.0)) A_4)))
 (let ((?x12151 (* (- (/ 2.0 5.0)) S_1)))
 (let ((?x1666 (* (- (/ 2.0 5.0)) A_1)))
 (let (($x94551 (<= (+ ?x1666 S_2 ?x12151 ?x12142 ?x1668 ?x12130 ?x1652) 0.0)))
 (let (($x17571 (<= (+ (* (- (/ 1.0 3.0)) S_4) (* (- (/ 2.0 3.0)) A_0) (* (/ 2.0 3.0) L_0) S_1) 0.0)))
 (let ((?x3801 (* (- (/ 1.0 4.0)) L_0)))
 (let ((?x3875 (* (- (/ 1.0 4.0)) A_0)))
 (let ((?x3874 (* (/ 1.0 2.0) A_3)))
 (let (($x4857 (<= (+ ?x3874 ?x1332 ?x3875 (* (- (/ 1.0 4.0)) S_3) ?x3801 ?x4815 ?x1928 ?x1895) 0.0)))
 (let ((?x3820 (* (- (/ 3.0 2.0)) A_2)))
 (let ((?x1942 (* (- (/ 3.0 2.0)) L_4)))
 (let ((?x3813 (* (/ 3.0 2.0) A_4)))
 (let ((?x3835 (* (/ 3.0 2.0) A_3)))
 (let (($x4119 (<= (+ ?x3835 ?x1254 (* (/ 3.0 2.0) S_1) ?x3813 ?x1942 ?x3820) 0.0)))
 (let (($x3341 (<= (+ A_3 (* (- 2.0) S_4) A_0 ?x772 A_4 ?x770 ?x893) 0.0)))
 (let (($x2339 (<= (+ A_3 ?x1332 ?x772) 0.0)))
 (let (($x52958 (<= (+ ?x3790 ?x1332 ?x4273 (* (/ 1.0 2.0) S_1) ?x1928 ?x1895) 0.0)))
 (let (($x35024 (<= (+ A_2 ?x1332 ?x1016 S_1) 0.0)))
 (let (($x8729 (<= (+ ?x3874 ?x1332 (* (- (/ 1.0 2.0)) S_2) ?x4324 ?x4815 ?x1928 ?x1895) 0.0)))
 (let (($x816218 (or $x2339 $x2639 $x3341 $x8729 $x17571 (<= (+ A_1 S_1 L_0 ?x1016 ?x785) 0.0) $x35024 $x52958 $x74254)))
 (let (($x15790 (not (<= (+ (* (/ 2.0 3.0) S_4) ?x6932 (* (- (/ 1.0 3.0)) L_0) L_4 ?x785) 0.0))))
 (let (($x10307 (<= (+ ?x3808 S_4 (* (- (/ 3.0 2.0)) S_2) ?x1929 ?x1901 ?x772 A_0 ?x3790) 0.0)))
 (let (($x10232 (<= (+ ?x3808 A_1 ?x1640 (* (- (/ 1.0 2.0)) S_2) S_0 ?x1928 ?x1895 ?x1016 ?x3790) 0.0)))
 (let (($x25825 (<= (+ ?x3874 ?x1332 ?x4298 ?x1928 ?x1895 ?x4324 ?x3878) 0.0)))
 (let (($x15927 (<= (+ (* (- (/ 2.0 3.0)) S_4) (* (- (/ 1.0 3.0)) A_0) ?x2669 S_2) 0.0)))
 (let ((?x3833 (* (/ 3.0 4.0) S_2)))
 (let ((?x3815 (* (- (/ 3.0 4.0)) L_0)))
 (let ((?x3841 (* (/ 3.0 4.0) A_0)))
 (let (($x3828 (<= (+ ?x3835 ?x1254 ?x3841 ?x3815 ?x3833 ?x3813 ?x1942 ?x3820) 0.0)))
 (let (($x2135 (<= (+ A_2 ?x1640 S_0 ?x1016) 0.0)))
 (let ((?x6954 (* (- (/ 2.0 3.0)) A_0)))
 (let ((?x5369 (* (/ 2.0 3.0) A_1)))
 (let (($x31574 (<= (+ ?x5369 ?x1332 (* (- (/ 1.0 3.0)) S_2) (* (/ 2.0 3.0) S_0) ?x5818 ?x5782 ?x6954) 0.0)))
 (let (($x25350 (<= (+ A_3 (* (- 2.0) S_4) S_1 A_4 ?x770 ?x785) 0.0)))
 (let (($x1339 (<= (+ S_4 ?x1334 ?x1335 (* (- 4.0) S_2)) 0.0)))
 (let (($x36879 (<= (+ ?x3790 ?x1895 ?x1640 (* (- (/ 1.0 2.0)) S_2) ?x4324 ?x4815 ?x3874) 0.0)))
 (let (($x33275 (<= (+ A_2 ?x770 (* (- 2.0) S_3) A_0 ?x772 ?x893 A_3) 0.0)))
 (let (($x4871 (<= (+ ?x4275 ?x1947 (* (/ 1.0 2.0) L_0) S_1) 0.0)))
 (let (($x89437 (<= (+ ?x3790 ?x1640 ?x4327 ?x1659 ?x772 ?x4815 ?x1928 ?x1895) 0.0)))
 (let ((?x3606 (* (- 6.0) L_0)))
 (let ((?x3603 (* 6.0 A_0)))
 (let ((?x3576 (* (- 6.0) S_3)))
 (let (($x36867 (<= (+ ?x3511 ?x3576 ?x3603 ?x3021 ?x3606 ?x3368 ?x3369 ?x3086) 0.0)))
 (let (($x40030 (<= (+ ?x785 L_4 S_3 A_0 ?x1659 ?x772) 0.0)))
 (let (($x35346 (<= (+ ?x785 (* 2.0 S_3) ?x1659 ?x889 L_4 A_1) 0.0)))
 (let (($x27893 (<= (+ ?x785 L_4 (* 2.0 S_3) A_0 ?x1465 ?x772 A_1 ?x808) 0.0)))
 (let (($x71746 (<= (+ ?x3878 S_4 ?x3857 ?x1465 (* (- (/ 3.0 2.0)) L_0) ?x1901 ?x4298 ?x3808) 0.0)))
 (let (($x55061 (<= (+ ?x785 ?x2331 ?x3013 ?x3021 ?x2358 ?x889 L_4 A_1) 0.0)))
 (let (($x8605 (<= (+ (* (/ 4.0 3.0) A_0) (* (- (/ 4.0 3.0)) L_0) (* (/ 2.0 3.0) S_3) ?x1465) 0.0)))
 (let ((?x4362 (* 2.0 A_1)))
 (let ((?x2370 (* 2.0 L_0)))
 (let ((?x1380 (* (- 2.0) A_2)))
 (let (($x71936 (<= (+ ?x1380 S_4 ?x3069 ?x3066 ?x2370 ?x1358 ?x1370 ?x4362) 0.0)))
 (let (($x110659 (<= (+ ?x785 ?x3066 L_0 ?x1348 ?x889 L_4) 0.0)))
 (let ((?x6360 (* 5.0 S_2)))
 (let ((?x3093 (* (- 4.0) A_2)))
 (let ((?x2288 (* 2.0 A_3)))
 (let (($x6362 (<= (+ ?x2288 ?x3093 A_0 ?x6360 L_0 ?x3398 ?x1358 ?x1370) 0.0)))
 (let (($x814016 (or $x2804 $x6362 $x9622 $x110659 (<= (+ ?x785 ?x4327 ?x11133 (* (/ 1.0 2.0) L_0) ?x1348 L_4 ?x808) 0.0))))
 (let (($x3333 (<= (+ ?x808 ?x1016 (* 2.0 S_3) L_0 ?x889 L_4 A_1) 0.0)))
 (let (($x42715 (<= (+ ?x5369 ?x17402 ?x2669 ?x785) 0.0)))
 (let (($x40801 (<= (+ ?x3878 ?x11747 A_0 ?x1659 ?x4324) 0.0)))
 (let (($x3335 (<= (+ ?x808 ?x2331 ?x1640 ?x889 L_4 A_1) 0.0)))
 (let (($x9749 (<= (+ ?x3808 S_3 (* (- (/ 1.0 2.0)) S_2) ?x1929 ?x1901 ?x3790) 0.0)))
 (let (($x38638 (<= (+ A_1 ?x1640 ?x1659 S_0 ?x770 ?x1016 A_2) 0.0)))
 (let ((?x1293 (* (- 2.0) S_3)))
 (let ((?x1359 (* 2.0 A_2)))
 (let (($x7897 (<= (+ ?x808 ?x1359 ?x1293 A_0 ?x772 A_4 ?x770 ?x893) 0.0)))
 (let (($x31001 (<= (+ ?x1332 ?x770 A_1 ?x1659 S_0 ?x1016 A_3) 0.0)))
 (let (($x13896 (<= (+ ?x4273 (* (- (/ 1.0 2.0)) S_4) S_2 (* (/ 1.0 2.0) L_0)) 0.0)))
 (let (($x2632 (<= (+ ?x808 S_3 A_1 ?x1659) 0.0)))
 (let (($x814960 (or $x2339 $x2632 $x3341 $x4119 $x4857 $x8697 $x17571 (<= (+ (* (/ 1.0 3.0) S_3) ?x2669 (* (- (/ 1.0 3.0)) A_0) A_2 ?x808) 0.0))))
 (let (($x9651 (<= (+ ?x808 S_4 A_1 ?x1640) 0.0)))
 (let (($x2725 (<= (+ ?x808 A_2) 0.0)))
 (let (($x70159 (<= (+ ?x3878 S_3 ?x14842 ?x1929 ?x1901 ?x4327) 0.0)))
 (let (($x25636 (<= (+ ?x785 L_4 (* 2.0 S_3) ?x3013 ?x1659 ?x772 ?x1348 ?x808) 0.0)))
 (let (($x784688 (or $x2804 $x9622 (<= (+ ?x785 L_4 S_3 S_2 ?x1348 A_0 ?x808) 0.0) $x70159)))
 (let (($x3353 (<= (+ ?x808 A_0 L_0 A_4 ?x770 ?x893) 0.0)))
 (let (($x2318 (<= (+ ?x2313 ?x2331 A_0 ?x1640 L_0) 0.0)))
 (let (($x11062 (<= (+ ?x1016 L_0 S_2 ?x4362 ?x1380) 0.0)))
 (let (($x140328 (<= (+ ?x4298 ?x1640 ?x4815 ?x1895 ?x4275 (* (/ 1.0 4.0) A_2) (* (/ 1.0 4.0) A_4)) 0.0)))
 (let (($x2660 (<= (+ ?x785 A_1) 0.0)))
 (let (($x3040 (<= (+ ?x2313 (* 4.0 S_4) A_0 ?x3053 ?x772 ?x1358 ?x1370 ?x1359) 0.0)))
 (let (($x793427 (or $x2133 $x3040 $x13045 $x13368 (<= (+ ?x808 S_4 A_1 ?x1640 L_4 ?x772) 0.0) $x25841)))
 (let ((?x1644 (* (/ 2.0 5.0) A_2)))
 (let ((?x1645 (+ (* (/ 2.0 5.0) A_1) (* (/ 1.0 5.0) S_4) ?x1640 (* (/ 2.0 5.0) S_0) (* (- (/ 2.0 5.0)) L_4) (* (- (/ 2.0 5.0)) A_0) ?x1644)))
 (let (($x108774 (<= (+ L_4 S_3 ?x893 A_0 ?x808) 0.0)))
 (let (($x17695 (<= (+ ?x893 (* (/ 1.0 2.0) S_3) (* (/ 1.0 2.0) S_1) L_4 A_0 ?x785) 0.0)))
 (let (($x790045 (or $x6558 $x10361 $x17695 (<= (+ ?x3358 (* 3.0 S_3) ?x1348 ?x1358 ?x1370 ?x3013) 0.0) $x108774)))
 (let (($x52687 (<= (+ ?x3790 ?x11747 (* (- (/ 3.0 2.0)) A_1) (* (/ 1.0 2.0) S_1) L_4 A_0 ?x808) 0.0)))
 (let (($x38793 (<= (+ ?x893 L_4 S_1 A_0 ?x1380 A_3) 0.0)))
 (let (($x3320 (<= (+ ?x808 ?x2331 A_0 ?x772 ?x1465 ?x889 L_4 A_1) 0.0)))
 (let (($x7781 (<= (+ ?x785 ?x3069 ?x1340 ?x2370 S_1 ?x889 L_4 A_1) 0.0)))
 (let ((?x12135 (+ (* (- (/ 2.0 5.0)) A_3) (* (- (/ 1.0 5.0)) A_1) S_3 (* (- (/ 1.0 5.0)) S_1) (* (- (/ 3.0 5.0)) A_4) (* (/ 3.0 5.0) L_4) ?x12130 ?x1644)))
 (let (($x12136 (<= ?x12135 0.0)))
 (let (($x47370 (<= (+ ?x1016 S_2 L_0 A_1 ?x808) 0.0)))
 (let (($x37782 (<= (+ ?x785 S_3 A_0 ?x1659) 0.0)))
 (let (($x16402 (<= (+ ?x4298 (* (/ 1.0 2.0) S_3) (* (/ 1.0 2.0) L_0) ?x785) 0.0)))
 (let (($x60516 (<= (+ ?x3790 ?x1332 ?x1895 ?x4275 (* (/ 1.0 2.0) L_0) S_1 ?x4273 ?x3874) 0.0)))
 (let (($x39920 (<= (+ A_2 (* (- 2.0) S_4) ?x770 ?x3069 L_0 S_1 S_0 A_3) 0.0)))
 (let (($x16267 (<= (+ A_1 ?x1332 A_4 ?x770 ?x785) 0.0)))
 (let (($x4623 (<= (+ ?x4327 (* (/ 1.0 2.0) L_0) (* (/ 1.0 2.0) S_2) ?x893) 0.0)))
 (let (($x803987 (or $x2639 (<= (+ ?x6932 (* (- (/ 1.0 3.0)) L_0) (* (/ 2.0 3.0) S_3) L_4 ?x785) 0.0) $x27893 $x35346 (not (<= (+ ?x1947 (* (/ 3.0 2.0) S_2) L_0 ?x1016) 0.0)))))
 (let (($x6348 (<= (+ S_4 ?x785 A_0 S_2 ?x1348 ?x889 L_4) 0.0)))
 (let (($x810726 (or $x6348 $x9622 (<= (+ ?x785 ?x11747 (* (/ 3.0 2.0) S_2) ?x1348 L_4 A_0 ?x808) 0.0))))
 (let (($x37252 (<= (+ ?x4362 ?x1332 ?x3021 ?x10050 ?x1438 ?x3069 ?x1359) 0.0)))
 (let (($x40903 (<= (+ ?x3790 (* (- (/ 1.0 2.0)) S_4) ?x4275 (* (/ 1.0 2.0) L_0) S_1 ?x4273) 0.0)))
 (let (($x825415 (or $x2140 $x2804 (<= (+ ?x2313 A_0 ?x1321 L_0 S_2 ?x3398 ?x1358 ?x1370) 0.0))))
 (let (($x22419 (<= (+ ?x3875 (* (/ 1.0 4.0) L_0) S_3 (* (/ 3.0 4.0) L_4) (* (- (/ 3.0 4.0)) A_4)) 0.0)))
 (let ((?x1337 (* (- 4.0) S_2)))
 (let ((?x5445 (* (/ 4.0 3.0) S_3)))
 (let ((?x6938 (* (- (/ 8.0 3.0)) L_0)))
 (let ((?x4794 (* (/ 8.0 3.0) A_0)))
 (let (($x5062 (<= (+ ?x808 ?x4275 (* (/ 3.0 2.0) S_3) (* (/ 1.0 2.0) L_0) ?x889 L_4 A_2) 0.0)))
 (and (<= ?x770 ?x772) (or $x2140 (<= (+ ?x808 S_4 A_0 S_3 ?x1348 ?x889 L_4) 0.0)) (or $x2725 $x4871) (or $x2140 $x2725 $x3333) (or $x2140 $x2725 $x5062) (or $x1339 $x2632) (or $x2632 (<= (+ ?x4794 ?x6938 ?x5445 ?x1337) 0.0)) (or $x1339 $x2639) (or $x2140 (<= (+ ?x808 S_4 ?x889 L_4 A_2) 0.0)) (or $x1339 $x2725 $x9651) (or $x2140 $x2725 $x3040 $x9651) (or $x2639 $x8605) (or (<= (+ ?x808 S_4 A_0 ?x1659) 0.0) $x2632) (or $x2133 $x2318 $x9651) (or $x2318 $x2725 $x9651) (or $x2133 $x4871) (or $x2142 (<= (+ ?x1332 ?x1016 S_2 L_0 S_1) 0.0)) (or $x1278 $x2133 $x9651) (or (<= (+ ?x808 S_4 A_0 ?x1659) 0.0) $x2639) (or $x1339 $x2142 $x3203 $x31001) (or $x1339 $x2133 $x3203 (<= (+ ?x4362 ?x3053 S_0 A_4 ?x1438 ?x1016) 0.0)) (or $x2133 (<= (+ ?x17402 ?x1640 (* (/ 2.0 3.0) S_1)) 0.0)) (or $x1278 $x2133 (<= (+ A_1 ?x11747 (* (- (/ 3.0 2.0)) S_3) ?x770) 0.0)) (or $x1278 $x2133 $x28826 (<= (+ ?x4362 ?x3053 S_0 A_4 ?x1438 ?x1016) 0.0)) (or $x2725 (<= (+ ?x17402 ?x1640 (* (/ 2.0 3.0) S_1)) 0.0)) (or $x1278 $x1941 $x2133 $x28826) (or $x2142 $x15927) (or $x6348 $x9622 $x42813) (or $x2142 $x13896) (or $x1339 $x2660) (or $x2660 $x37782) (or $x2660 $x40801) (or $x2660 $x8605) (or $x2136 $x2142 (<= (+ ?x17402 ?x1640 (* (/ 2.0 3.0) S_1)) 0.0)) (or $x2660 $x5591 $x15927) (or $x2142 $x3203 $x8605 $x31001) (or $x2140 $x2632 $x3320) (or (<= (+ ?x808 S_4 A_0 ?x1659) 0.0) $x2660) (or $x2639 $x40801) (or $x2632 $x37782) (or $x2804 $x5591 $x13896) (or $x1278 $x2725 $x9651) (or $x1278 $x2660 $x6116 $x7897 $x8697) (or $x2318 $x2660 $x6116 $x7897 $x8697) (or $x2660 $x3335 $x6116 $x8697 $x8709 $x13045) (or $x2660 $x4871 $x6116 $x7897 $x8737) (or $x2660 $x3335 $x6116 $x7897 $x8737 $x13045) (or $x2136 $x2142 $x4871) (or $x1339 $x2133 $x3203 $x38638) (or $x2639 $x37782) (or $x2140 $x2632 $x3333) (or $x2136 $x6558 $x9651) (or $x2142 $x3203 $x31001 $x40801) (or $x2639 $x3320 $x30096) (or $x1339 $x2133 $x3203 $x10232) (or $x2660 $x9622 $x22419 $x27893) (or $x2804 $x5591 $x15927) (or $x1339 $x2725 $x3203 $x10076) (or $x2142 $x4871 $x6116 $x31298 $x33275) (or $x2136 $x6558 (<= (+ ?x17402 ?x1640 (* (/ 2.0 3.0) S_1)) 0.0)) (or $x1278 $x1941 $x2142 $x6116 $x28826 $x31298 $x33275) (or $x1278 $x1941 $x2136 $x2142 $x28826) (or $x2140 $x2725 $x3335) (or $x2660 (<= (+ S_4 ?x1640 ?x3013 ?x1465 ?x2358) 0.0)) (or $x2639 (<= (+ S_4 ?x1640 ?x3013 ?x1465 ?x2358) 0.0)) (or $x2136 $x2339 $x6558 $x10963 $x13896 $x16267) (or $x2339 $x2725 $x4623 $x10963 $x13896 $x16267) (or $x2133 (<= (+ ?x808 S_4 A_0 ?x1659) 0.0) $x9651) (or (<= (+ ?x808 S_4 A_0 ?x1659) 0.0) $x2725 $x9651) (or $x2140 $x2725 $x9651 $x10307) (or $x2632 $x10307 $x30096) (or $x2639 $x10307 $x30096) (or $x2133 $x9651 $x10307 $x30096) (or $x5742 $x6558 $x13896 $x25350) (or $x2660 $x6116 $x7897 $x8697 $x9622 $x97395) (or $x2142 $x17571 (<= (+ A_2 ?x1332 ?x770 ?x1016 L_0 S_1) 0.0)) (or $x2140 $x2632 $x3335 $x6116 $x7897 $x8697) (or $x1278 $x2725 $x10963 $x28826) (or $x2660 $x5591 (<= (+ ?x1332 ?x1016 S_2 L_0 S_1) 0.0)) (or $x2660 $x4871 $x6116 $x8697 $x8709) (or $x2632 $x4871 $x6116 $x8697 $x8709) (or $x2632 $x4871 $x62547) (or $x2142 $x3203 $x31001 $x37782) $x825415 (or $x1339 $x2725 $x3203 $x10232) (or $x1339 $x1941 $x2142 $x3203 $x31298) (or $x2339 $x2632 $x3341 $x8729 $x11062 $x15927) (or $x2339 $x2632 $x3341 $x4857 $x8697 $x11062 $x15927) (or $x2632 $x4871 $x6116 $x7897 $x8697) (or $x1278 $x2632 $x62547) (or $x2318 $x2632 $x62547) (or $x2318 $x2632 $x6116 $x8697 $x8709) (or $x2725 $x5742 $x15927 $x25350) (or $x1278 $x2660 $x6116 $x33275 $x36879) (or $x2339 $x2660 $x3341 $x8729 $x17571 $x35024 $x52958 $x74254) (or $x2660 $x5591 $x17571 $x35024 $x52958 $x74254) (or $x1339 $x2725 $x3203 $x29841) (or $x1339 $x2725 $x3203 $x32704) (or $x1339 $x1941 $x2133 $x3203) (or $x1339 $x2133 $x3203 $x11139) (or $x1339 $x2133 $x3203 $x29841) (or $x1339 $x2133 $x3203 $x32704) (or $x1339 $x2142 $x3203 $x31574 $x74254) (or $x1339 $x2136 $x2142 $x3203 $x29841) (or $x2142 $x17571 $x40903) (or $x2142 $x3203 $x8605 $x31574 $x74254) (or $x2660 $x4493 $x9622 $x36409 $x71936) (or $x2142 $x7781 $x9622 $x36409) (or $x2142 $x3203 $x8605 $x37252) (or $x1339 $x2142 $x3203 $x37252) (or $x2725 $x5742 $x13896 $x25350) (or $x2339 $x2725 $x4623 $x10963 $x13896 $x25825) (or $x1278 $x2133 $x11139 $x28826) $x810726 (or $x1278 $x2136 $x2142 $x28826 $x29841) (or $x2133 $x3335 $x13045) (or $x2133 $x3040 $x9651 $x13045) (or $x1339 $x1941 $x2136 $x2142 $x3203) (or $x2140 $x2632 $x35346) $x803987 (or $x2318 $x2632 $x3353 $x6116 $x8737) (or $x2632 $x40801) (or (<= (+ ?x808 S_4 A_0 ?x1659) 0.0) $x2725 $x3203 $x10076) (or $x2142 $x3203 $x16402 $x37782 $x74254) (or $x2140 $x2725 $x3040 $x13368 $x25841) (or $x2140 $x2725 $x13410) (or $x2140 $x2725 $x25848) (or $x1278 $x2725 $x28826 $x29841) (or $x2639 $x4871 $x6116 $x7897 $x8737) (or $x2639 $x4871 $x6116 $x8697 $x8709) (or $x2725 $x5742 $x17571 $x25350) (or $x2339 $x2725 $x3341 $x4119 $x8729 $x10076 $x17571) (or $x1278 $x2660 $x62547) (or $x2632 $x44888 $x55061) (or $x2660 $x25636 $x40030 $x70159) (or $x1278 $x2639 $x6116 $x7897 $x8737) (or $x1278 $x2639 $x6116 $x33275 $x36879) (or $x1278 $x2142 $x3203 $x6116 $x31001 $x33275 $x36879) (or $x2660 $x5591 $x9622 $x36409 $x110700) (or $x2136 $x3203 $x6558 $x11139) (or $x1339 $x2133 $x9651) (or $x1278 $x2660 $x6116 $x36867 $x89437) (or $x2339 $x2639 $x3341 $x8729 $x11062 $x15927) (or $x2804 $x6362 $x9622 $x47370 $x110659) (or $x2133 $x2339 $x3341 $x3828 $x4857 $x10963 $x15927 $x16267) (or $x2339 $x2725 $x3341 $x4857 $x10963 $x17571 $x25350) (or $x2142 $x17571 $x35024 $x52958 $x74254) (or $x2140 $x2725 $x9651 $x97395) (or $x1339 $x2725 $x3203 $x10963) (or $x1339 $x2142 $x3203 $x10963 $x74254) (or $x2660 $x30096 $x62543) (or $x2133 $x2339 $x4623 $x10963 $x13896 $x25825) (or $x2339 $x2725 $x3341 $x3828 $x4857 $x10963 $x15927 $x16267) (or (<= (+ S_4 A_0 ?x1348 ?x889) 0.0) $x10361 $x17429 $x33703 $x52687) (or $x1941 $x2136 $x3203 $x6558) (or $x2140 $x2775 $x70159) (or $x2142 $x4871 $x6116 $x31001 $x36867 $x89437) (or $x2142 $x17571 $x35024 $x39920 $x60516) (or $x6558 $x10361 $x38793 $x70159 $x108774) (or $x2660 $x7161 $x9622 $x47370) (or $x2660 $x7161 $x9622 $x36409) (or $x2140 $x2725 $x10476) (or $x2140 $x6558 $x25848) (or $x2142 $x9622 $x36409 $x110700) (or $x2140 $x2632 $x3335 $x62547) (or $x2339 $x2639 $x3341 $x4857 $x8697 $x11062 $x15927) (or $x2140 $x2725 $x14854) (or $x2660 $x27893 $x35346 $x40030) (or $x2804 $x3203 $x5591 $x16402 $x37782 $x74254) (or $x2660 $x9622 $x63402 $x85111) (or $x2660 $x4493 $x9622 $x47370 $x110700) (or $x2660 $x4493 $x7781 $x9622 $x47370) (or $x2140 $x2725 $x12136) (or $x2140 $x2775 $x12136) (or $x2133 $x3203 $x8605 $x38638) (or $x2133 $x3203 $x8605 $x10232) (or $x2133 $x5742 $x17571 $x25350) (or $x2660 $x4871 $x6116 $x36867 $x89437) (or $x2339 $x2660 $x3341 $x8729 $x15927) (or $x2660 $x4871 $x6116 $x8729 $x61567 $x74254) (or $x2660 $x4871 $x5591 $x6116 $x61567 $x74254) (or $x1339 $x2725 $x3203 $x5742 $x25350 $x31574) (or $x1339 $x2133 $x3203 $x140328) (or $x2136 $x2339 $x6558 $x10963 $x13896 $x25825) (or $x2660 $x4493 $x7781 $x9622 $x36409) (or $x1278 $x2639 $x6116 $x36867 $x89437) (or $x2660 $x3320 $x30096) (or $x2142 $x4871 $x6116 $x61567 $x74254) (or $x2142 $x4871 $x6116 $x31001 $x33275 $x36879) (or $x2339 $x2660 $x3341 $x4857 $x8697 $x15927) (or $x10361 $x13999 $x33703 $x38793 $x52687) (or $x2140 $x2725 $x3203 $x10076 $x10307) (or $x2140 $x2725 $x3203 $x10232 $x10307) (or $x2140 $x2725 $x9749) (or $x2140 $x2632 $x9749) (or $x2632 $x30096 $x62543) $x790045 (or $x2725 $x3203 $x8605 $x10076) (or $x2725 $x3203 $x8605 $x10232) (or $x1278 (<= ?x1645 0.0) $x2133 $x28826) $x793427 (or $x1339 $x2133 $x3203 $x10076) (or $x2140 $x2725 $x32513) (or $x1339 $x2725 $x3203 $x11139) (or $x2725 $x3203 $x8605 $x10963) (or $x2725 $x3203 $x5742 $x8605 $x25350 $x31574) (or $x2339 $x2660 $x3341 $x4857 $x6116 $x8697 $x8709 $x17571) (or $x2142 $x3203 $x25636 $x31001 $x40030 $x70159) (or $x2142 $x7161 $x9622 $x36409) (or $x2660 (<= (+ ?x785 S_4 ?x3013 ?x1465 ?x2358 L_4) 0.0) $x55061 $x71746) (or $x1278 $x2133 $x28826 $x29841) (or $x1278 $x2133 $x28826 $x32704) (or $x1278 $x2133 $x28826 $x140328) (or $x2339 $x2632 $x3341 $x4857 $x6116 $x7897 $x8697 $x11062 $x17571) (or $x2133 (<= (+ ?x808 S_4 A_0 ?x1659) 0.0) $x3203 $x10076) (or $x2318 $x2639 $x3353 $x6116 $x8737) $x784688 (or $x2639 $x25636 $x40030 $x70159) (or $x10361 $x13999 $x27868 $x33703 $x106826) (or $x10361 $x13999 $x16585 $x42813) (or $x2135 $x2339 $x2725 $x3341 $x3828 $x10963 $x15927 $x25825) (or $x2133 $x3203 $x8605 $x10963) (or $x2140 $x2725 $x9651 $x62543) (or $x2136 $x3203 $x6558 $x29841) $x814960 (or $x2339 $x2632 $x3341 $x4119 $x8729 $x17571 $x35024 $x52958 $x74254) (or $x2632 $x6116 $x8697 $x8709 $x13045 $x97395) (or $x2140 $x2775 $x9749) (or $x2133 $x5742 $x13896 $x25350) (or $x2142 $x16224 $x16540 $x42318 $x42813) (or $x2804 $x3203 $x5591 $x40801 $x42715 $x74254) (or $x2140 $x2632 $x62547 $x97395) (or $x2804 $x3203 $x5591 $x8605 $x31574 $x74254) (or $x2142 $x3203 $x27893 $x31001 $x35346 $x40030) (or $x2639 $x30096 $x62543) (or $x1278 $x2639 $x6116 $x8697 $x8709) (or $x2318 $x2639 $x6116 $x8697 $x8709) (or $x2639 $x3335 $x6116 $x7897 $x8737 $x13045) (or $x2318 $x2639 $x62547) (or $x1278 $x2639 $x62547) (or $x2133 $x3203 $x10307 $x30096 $x38638) (or $x2639 $x4871 $x62547) (or $x3203 $x5742 $x6558 $x25350 $x31574 $x74254) (or $x2135 $x3203 $x6558 $x10232) (or $x2140 $x6558 $x9749) (or $x2135 $x3203 $x6558 $x10963) (or $x2639 $x3335 $x6116 $x8697 $x8709 $x13045) (or $x1339 $x2804 $x3203 $x5591 $x31574 $x74254) (or $x1339 $x2804 $x5591 $x6116 $x10963 $x28826 $x74254) (or $x2632 $x44888 $x85111) (or $x2133 $x2339 $x3341 $x4119 $x4857 $x10963 $x17571) (or $x2133 $x2339 $x3341 $x4119 $x8729 $x10076 $x17571) (or $x2142 $x3203 $x40801 $x42715 $x74254) (or $x2140 $x2775 $x3333) (or $x2133 $x5742 $x15927 $x25350) (or $x1339 $x2133 $x3203 $x10963) (or $x1339 $x2804 $x3203 $x5591 $x10963 $x74254) $x814016 (or $x2142 $x16224 $x16540 $x42813 $x94551) (or $x2804 $x4493 $x9622 $x36409 $x71936) (or $x2133 $x9651 $x13045 $x97395) (or $x2133 $x9651 $x13045 $x62543) (or $x1278 $x2725 $x11139 $x28826) (or $x1278 $x2725 $x28826 $x32704) (or $x2133 $x3203 $x5742 $x8605 $x25350 $x31574) (or $x2133 $x3203 $x8605 $x10076) (or $x2639 $x44888 $x55061 $x71746) (or (<= (+ S_4 ?x1640 ?x889 A_2) 0.0) $x106803) (or $x2140 $x6558 $x32513) (or $x2136 $x3203 $x6558 $x10076) (or $x2639 $x27893 $x35346 $x40030) (or $x2140 $x2775 $x10476) (or $x2639 $x4871 $x6116 $x36867 $x89437) (or $x2639 $x4871 $x6116 $x8729 $x61567 $x74254) (or $x2639 $x4871 $x6116 $x33275 $x36879) (or $x2140 $x2725 $x3203 $x10076 $x62543) (or $x1339 $x2133 $x3203 $x5742 $x25350 $x31574) (or $x2804 $x10361 $x10476 $x42813) (or $x2133 $x2135 $x2339 $x3341 $x3828 $x10963 $x15927 $x25825) (or $x6359 $x6558 $x10361 $x16585 $x42813 $x93122) (or $x2133 $x13410 $x106803) (or $x2135 $x3203 $x6558 $x32704) (or $x2140 $x6558 $x14854) (or $x1278 $x2133 $x10963 $x28826) (or $x6558 $x10361 $x12121 $x16585 $x25743 $x42813 $x93122) (or $x2136 $x3203 $x6558 $x10963) (or $x2133 $x3203 $x10076 $x10307 $x30096) (or $x2133 $x3203 $x10232 $x10307 $x30096) (or $x2339 $x2639 $x3341 $x4119 $x8729 $x15790 $x17571) $x816218 (or $x2339 $x2639 $x3341 $x4119 $x4857 $x6116 $x8697 $x8709 $x17571) (or $x2639 $x3335 $x13045 $x62547) (or $x2140 $x6558 $x10476) (or $x2804 $x6364 $x9622 $x42813 $x94551) (or $x10361 $x13999 $x17429 $x27868 $x33703) (or $x2142 $x9622 $x10476 $x42813) (or $x2133 $x3203 $x10076 $x13045 $x62543) (or $x2142 $x9622 $x42813 $x93122) (or $x2142 $x16224 $x16540 $x42813 $x93122) (or $x2142 $x10476 $x16224 $x16540 $x42813) (or $x2804 $x9622 $x10476 $x42813) (or $x2804 $x4493 $x9622 $x36409 $x110700) $x816247 (or $x1278 $x2142 $x6116 $x10963 $x28826 $x61567 $x74254) (or $x2804 $x6364 $x9622 $x42813 $x93122) (or $x2140 $x2775 $x32513) (or $x6558 $x9622 $x10476 $x42813) (or $x6558 $x10361 $x10476 $x16585 $x42813) (or $x3203 $x5742 $x6558 $x10963 $x74254) (or $x2639 $x6116 $x8697 $x8709 $x13045 $x97395) (or $x2140 $x2775 $x14854) (or $x2639 $x44888 $x63402 $x85111) (or $x6116 $x6558 $x10963 $x28826 $x31298) (or $x2140 $x2775 $x98492) (or $x2140 $x2775 (<= (+ ?x2313 ?x1321 L_0 ?x1348 ?x1358 ?x1370 A_2) 0.0)) (or $x6116 $x6558 (<= (+ ?x1332 S_0 ?x1016 A_3) 0.0) $x28826 $x29841 $x74254) (or $x2804 $x7161 $x9622 $x36409) (or $x1278 $x2804 $x5591 $x6116 $x10963 $x28826 $x61567 $x74254) (or $x2136 $x6558 $x28826 $x32704) (or $x2136 $x6558 $x11139 $x28826) (or $x2136 $x6558 $x10963 $x28826) (or $x2136 $x6558 $x28826 $x29841) $x815619 (or $x2140 $x2775 $x25848) (or $x1941 $x2136 $x6558 $x28826) (or $x2639 $x30096 $x62547 $x97395) (or $x2136 $x6558 $x13410 $x106803) (or $x2804 $x6364 $x10361 $x42813 $x79290) (or $x2804 $x6359 $x9622 $x42813 $x79290) (or $x2804 $x6364 $x9622 $x42318 $x42813) (or $x2136 $x6558 $x13368 $x28826) (or $x2136 $x6558 $x13368 $x25841 $x106826) (or $x6558 $x10361 $x12121 $x16585 $x25743 $x42318 $x42813) (or $x5742 $x6116 $x6558 $x10963 $x28826 $x74254) (<= (+ S_4 ?x889 L_4) 0.0) (<= (+ ?x1348 S_0) 0.0) (<= (+ S_0 L_0 ?x1016) 0.0) (<= (+ ?x1640 S_2) 0.0) (<= (+ ?x808 S_3 L_0) 0.0) (<= (+ ?x1659 S_1) 0.0) (<= (+ ?x1332 S_3) 0.0) (<= (+ ?x785 S_2 L_0) 0.0) (<= (+ (* 3.0 L_0) (* 3.0 S_1) ?x3086) 0.0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
