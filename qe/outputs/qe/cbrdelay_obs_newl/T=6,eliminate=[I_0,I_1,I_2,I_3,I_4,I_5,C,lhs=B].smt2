; benchmark generated from python API
(set-info :status unknown)
(declare-fun L_2 () Real)
(declare-fun S_2 () Real)
(declare-fun A_2 () Real)
(declare-fun L_3 () Real)
(declare-fun S_3 () Real)
(declare-fun A_3 () Real)
(declare-fun S_1 () Real)
(declare-fun L_1 () Real)
(declare-fun A_1 () Real)
(declare-fun L_0 () Real)
(declare-fun S_0 () Real)
(declare-fun A_0 () Real)
(declare-fun L_4 () Real)
(declare-fun S_4 () Real)
(declare-fun A_4 () Real)
(declare-fun A_5 () Real)
(declare-fun S_5 () Real)
(declare-fun B () Real)
(assert
 (let (($x39 (>= L_0 0.0)))
 (let (($x964 (>= B 5.0)))
 (let ((?x1436 (* 2.0 B)))
 (let ((?x1671 (* 2.0 L_4)))
 (let ((?x398 (* (- 1.0) S_1)))
 (let ((?x1988 (* (- 2.0) L_3)))
 (let ((?x1998 (* 2.0 A_3)))
 (let ((?x1670 (* (- 2.0) A_4)))
 (let (($x86 (= L_4 L_3)))
 (let (($x161122 (or $x86 (<= (+ (* (- 1.0) A_4) (* 2.0 S_2) ?x398 L_4 B) 0.0) (<= (+ ?x1670 ?x1998 ?x1988 S_2 ?x398 ?x1671 ?x1436) 0.0))))
 (let (($x67638 (<= (+ A_5 (* (- 1.0) L_4) (* (- (/ 5.0 2.0)) S_3) (* (/ 3.0 2.0) S_0)) 0.0)))
 (let ((?x2435 (* (- 4.0) S_3)))
 (let ((?x1292 (* (- 3.0) L_1)))
 (let ((?x1290 (* 3.0 A_1)))
 (let ((?x324 (* (- 1.0) L_4)))
 (let (($x64723 (<= 0.0 (+ (* (- 1.0) A_2) S_3 L_2))))
 (let (($x41758 (<= (+ ?x1670 (* (- 1.0) A_1) L_1 (* 3.0 S_3) ?x1671 ?x1436) 0.0)))
 (let ((?x2570 (* 3.0 B)))
 (let ((?x2431 (* 3.0 L_4)))
 (let ((?x2419 (* 4.0 S_3)))
 (let ((?x1321 (* (- 1.0) A_0)))
 (let ((?x2421 (* (- 3.0) A_4)))
 (let ((?x3155 (* 4.0 B)))
 (let ((?x2450 (* 4.0 L_4)))
 (let ((?x1291 (* (- 1.0) S_0)))
 (let ((?x2448 (* (- 4.0) A_4)))
 (let (($x30431 (<= (+ ?x2421 (* 3.0 A_3) (* (- 3.0) L_3) S_2 ?x1291 ?x2431 ?x2570) 0.0)))
 (let ((?x3379 (* (/ 3.0 2.0) B)))
 (let ((?x13813 (* (- (/ 3.0 2.0)) A_4)))
 (let (($x63005 (or $x86 (<= (+ ?x13813 (* (/ 5.0 2.0) S_2) ?x1291 (* (/ 3.0 2.0) L_4) ?x3379) 0.0) $x30431)))
 (let (($x71663 (<= (+ (* 3.0 A_5) L_4 ?x2448 A_1 (* (- 1.0) L_1) ?x3155) 0.0)))
 (let ((?x8398 (* (/ 1.0 4.0) S_0)))
 (let (($x67307 (<= (+ A_5 (* (/ 1.0 4.0) L_4) (* (- (/ 5.0 4.0)) A_4) ?x8398 (* (/ 5.0 4.0) B)) 0.0)))
 (let (($x65518 (<= (+ (* 2.0 A_5) L_4 ?x2421 A_2 (* (- 1.0) L_2) ?x2570) 0.0)))
 (let (($x64612 (<= (+ A_5 L_4 ?x1670 A_3 (* (- 1.0) L_3) ?x1436) 0.0)))
 (let ((?x264 (* (- 1.0) B)))
 (let ((?x1654 (* 2.0 S_0)))
 (let ((?x1776 (* (- 2.0) S_2)))
 (let ((?x433 (* (- 1.0) A_2)))
 (let (($x2845 (<= (+ A_1 (* (- 1.0) L_1) (* (- 1.0) S_2)) 0.0)))
 (let ((?x307 (* (- 1.0) L_3)))
 (let ((?x439 (* (- 1.0) A_4)))
 (let ((?x7692 (* (/ 1.0 3.0) B)))
 (let ((?x9726 (* (/ 1.0 3.0) L_4)))
 (let (($x15489 (<= (+ (* (- (/ 1.0 3.0)) A_4) ?x1321 (* (/ 4.0 3.0) S_1) ?x9726 ?x7692 L_0) 0.0)))
 (let ((?x1683 (* 2.0 L_0)))
 (let ((?x3196 (* 2.0 S_1)))
 (let ((?x290 (* (- 1.0) L_2)))
 (let ((?x1682 (* (- 2.0) A_0)))
 (let (($x75041 (or $x86 (<= (+ ?x439 A_2 ?x1682 ?x290 ?x3196 L_4 B ?x1683) 0.0) $x15489 (<= (+ ?x439 A_3 ?x1321 ?x307 S_1 L_4 B L_0) 0.0))))
 (let ((?x15452 (+ (* (- (/ 2.0 3.0)) A_4) (* (/ 5.0 3.0) S_1) ?x1291 (* (/ 2.0 3.0) L_4) (* (/ 2.0 3.0) B))))
 (let (($x61905 (or $x86 (<= (+ ?x439 A_2 ?x290 S_1 ?x1291 L_4 B) 0.0) (<= ?x15452 0.0) (<= (+ ?x1670 ?x1998 ?x1988 S_1 ?x1291 ?x1671 ?x1436) 0.0))))
 (let ((?x11934 (* 3.0 S_2)))
 (let ((?x1173 (* 2.0 L_1)))
 (let ((?x1218 (* (- 2.0) A_1)))
 (let (($x6821 (<= (+ ?x439 A_3 (* (- 1.0) A_1) ?x307 S_2 L_1 L_4 B) 0.0)))
 (let (($x162970 (or $x86 (<= (+ ?x439 ?x1321 (* 2.0 S_2) L_4 B L_0) 0.0) (<= (+ ?x1670 ?x1998 ?x1321 ?x1988 S_2 ?x1671 ?x1436 L_0) 0.0))))
 (let (($x64192 (<= 0.0 (+ (* (- 1.0) A_3) S_4 L_3))))
 (let ((?x1640 (* (- 2.0) B)))
 (let ((?x1664 (* (- 2.0) L_4)))
 (let ((?x273 (* (- 1.0) L_1)))
 (let ((?x3290 (* (- 3.0) S_4)))
 (let ((?x1662 (* 2.0 A_4)))
 (let ((?x21789 (* (- (/ 3.0 4.0)) B)))
 (let ((?x22158 (* (- (/ 3.0 4.0)) L_4)))
 (let ((?x418 (* (- 1.0) S_4)))
 (let ((?x21793 (* (/ 3.0 4.0) A_4)))
 (let (($x21778 (<= (+ ?x21793 ?x418 ?x8398 ?x22158 ?x21789) 0.0)))
 (let (($x3367 (<= (+ A_4 A_2 (* (- 2.0) S_4) ?x324 ?x290 ?x264) 0.0)))
 (let ((?x5558 (* (- 3.0) L_3)))
 (let ((?x431 (* (- 1.0) A_1)))
 (let ((?x5557 (* 3.0 A_3)))
 (let ((?x45142 (+ ?x1670 ?x5557 ?x431 L_1 ?x5558 ?x1671 ?x264)))
 (let (($x72267 (<= 0.0 ?x45142)))
 (let (($x64816 (<= 0.0 (+ ?x439 ?x1998 ?x433 L_1 ?x1988 L_4 ?x264))))
 (let ((?x2427 (* (- 3.0) L_4)))
 (let ((?x48085 (* 4.0 L_3)))
 (let ((?x39174 (* (- 4.0) A_3)))
 (let ((?x2426 (* 3.0 A_4)))
 (let (($x76 (= L_3 L_2)))
 (let ((?x873 (+ L_3 ?x324)))
 (let (($x64421 (<= 0.0 ?x873)))
 (let (($x64422 (not $x64421)))
 (let ((?x3019 (* (- (/ 1.0 2.0)) B)))
 (let ((?x13786 (* (- (/ 1.0 2.0)) L_4)))
 (let ((?x21612 (* (- (/ 1.0 2.0)) L_1)))
 (let ((?x3286 (* (/ 1.0 2.0) A_2)))
 (let ((?x13307 (* (/ 1.0 2.0) A_4)))
 (let (($x20738 (<= (+ A_4 (* (/ 1.0 2.0) A_1) (* (- (/ 3.0 2.0)) S_4) ?x21612 ?x307 ?x264) 0.0)))
 (let (($x161727 (or $x20738 $x21778 (<= (+ ?x13307 ?x3286 ?x418 ?x21612 ?x13786 ?x3019) 0.0) $x64192 $x64422)))
 (let (($x67410 (<= (+ A_5 ?x324 (* 2.0 A_2) ?x3290 (* (- 2.0) L_2)) 0.0)))
 (let (($x74653 (or $x64192 (<= (+ A_5 ?x324 (* (- (/ 5.0 3.0)) S_4) (* (/ 2.0 3.0) S_0)) 0.0) (<= (+ A_5 ?x324 A_1 (* (- 2.0) S_4) ?x273) 0.0) $x67410)))
 (let (($x65488 (<= (+ (* (- (/ 1.0 3.0)) A_3) (* (/ 1.0 3.0) S_0) (* (/ 1.0 3.0) L_3) ?x7692) (- 5.0))))
 (let (($x65024 (<= (+ (* (- 1.0) A_3) A_2 ?x290 L_3 B) (- 5.0))))
 (let (($x163632 (or $x76 $x65024 (<= (+ (* (- 1.0) A_3) A_1 ?x273 L_3 B) (- 10.0)) $x65488)))
 (let ((?x3520 (* (/ 1.0 2.0) B)))
 (let ((?x7921 (* (/ 1.0 2.0) L_3)))
 (let ((?x7927 (* (/ 1.0 2.0) S_1)))
 (let ((?x7923 (* (- (/ 1.0 2.0)) A_3)))
 (let (($x65416 (<= (+ A_5 ?x439 (* (- 1.0) A_3) A_2 ?x290 L_3 B) 0.0)))
 (let (($x10875 (<= (+ (* (- 2.0) A_3) A_2 S_4 ?x290 (* 2.0 L_3) ?x1436) 0.0)))
 (let (($x162865 (or $x76 $x10875 (<= (+ (* (- (/ 3.0 2.0)) A_3) S_4 ?x7927 (* (/ 3.0 2.0) L_3) ?x3379) 0.0))))
 (let (($x67584 (<= (+ A_5 ?x324 (* (- 2.0) A_3) S_1 (* 2.0 L_3) ?x1436) 0.0)))
 (let ((?x1665 (* 3.0 L_3)))
 (let ((?x1079 (* (- 2.0) L_2)))
 (let ((?x1200 (* 2.0 A_2)))
 (let ((?x1663 (* (- 3.0) A_3)))
 (let (($x65327 (<= (+ A_5 ?x324 ?x1663 ?x1200 ?x1079 ?x1665 ?x2570) 0.0)))
 (let (($x65863 (<= (+ A_5 ?x324 (* (- 2.0) A_3) A_1 ?x273 (* 2.0 L_3) ?x1436) 0.0)))
 (let ((?x7684 (* (/ 2.0 3.0) S_0)))
 (let ((?x65217 (+ A_5 ?x324 (* (- (/ 5.0 3.0)) A_3) ?x7684 (* (/ 5.0 3.0) L_3) (* (/ 5.0 3.0) B))))
 (let ((?x1301 (* 4.0 L_2)))
 (let ((?x3165 (* 3.0 S_1)))
 (let ((?x1300 (* (- 4.0) A_2)))
 (let (($x66 (= L_2 L_1)))
 (let (($x58929 (or $x86 (<= (+ ?x1670 (* 3.0 S_3) (* (- 1.0) S_2) ?x1671 ?x1436) 0.0))))
 (let ((?x2541 (* (- 5.0) L_2)))
 (let ((?x1769 (* (- 2.0) S_0)))
 (let ((?x4436 (* 5.0 A_2)))
 (let (($x161260 (or $x86 (<= (+ ?x2421 ?x4436 ?x1769 ?x2541 ?x2431 ?x1640) 0.0) (<= (+ ?x2421 ?x5557 A_2 ?x5558 ?x1291 ?x290 ?x2431 ?x1436) 0.0))))
 (let ((?x1990 (* 2.0 L_3)))
 (let ((?x1214 (* (- 3.0) L_2)))
 (let ((?x1212 (* 3.0 A_2)))
 (let ((?x1994 (* (- 2.0) A_3)))
 (let (($x1652 (<= (+ (* (- 1.0) A_3) ?x1290 (* (- 2.0) S_1) ?x1292 L_3 ?x1640) 0.0)))
 (let ((?x3248 (* (- 3.0) B)))
 (let ((?x17947 (* (- 5.0) L_1)))
 (let ((?x12233 (* (- 3.0) S_0)))
 (let ((?x22415 (* 5.0 A_1)))
 (let (($x162078 (or $x86 (<= (+ ?x1670 ?x1998 A_1 ?x1988 ?x1291 ?x273 ?x1671 B) 0.0) (<= (+ ?x439 A_2 A_1 ?x290 ?x1291 ?x273 L_4) 0.0) (<= (+ ?x1670 ?x22415 ?x12233 ?x17947 ?x1671 ?x3248) 0.0))))
 (let ((?x1989 (* (- 4.0) L_1)))
 (let ((?x3265 (* (- 3.0) S_1)))
 (let ((?x15205 (* 4.0 A_1)))
 (let ((?x1171 (* (- 2.0) L_1)))
 (let ((?x651 (* (- 2.0) S_1)))
 (let ((?x1127 (* 2.0 A_1)))
 (let (($x162281 (or $x86 (<= (+ ?x439 A_3 A_1 ?x307 ?x398 ?x273 L_4) 0.0) (<= (+ ?x439 A_2 ?x1127 ?x290 ?x651 ?x1171 L_4 ?x264) 0.0) (<= (+ ?x439 ?x15205 ?x3265 ?x1989 L_4 ?x3248) 0.0))))
 (let (($x64051 (<= 0.0 (+ A_3 (* (- 2.0) A_2) A_1 ?x273 (* 2.0 L_2) ?x307 ?x1640))))
 (let (($x499 (<= (+ (* 2.0 A_5) ?x1670 (* (- 1.0) A_3) A_1 ?x273 L_3) 0.0)))
 (let (($x70647 (<= (+ (* 2.0 A_5) ?x1670 (* (- 1.0) A_3) A_1 ?x273 L_3 B) 0.0)))
 (let ((?x7691 (* (/ 1.0 3.0) L_3)))
 (let ((?x7670 (* (/ 1.0 3.0) S_0)))
 (let ((?x7689 (* (- (/ 1.0 3.0)) A_3)))
 (let (($x65411 (<= (+ A_5 ?x439 ?x7689 ?x7670 ?x7691 ?x7692) 0.0)))
 (let ((?x880 (+ L_2 ?x307)))
 (let (($x523 (<= 0.0 ?x880)))
 (let (($x23050 (<= (+ (* (- 4.0) A_1) S_4 (* 3.0 S_0) (* 4.0 L_1) ?x3155) 0.0)))
 (let (($x56 (= L_1 L_0)))
 (let (($x159665 (or $x86 (<= (+ ?x439 ?x1998 (* (- 1.0) S_3) ?x1988 L_4 ?x264) 0.0))))
 (let (($x48108 (<= (+ ?x2421 (* 4.0 A_3) ?x398 (* (- 4.0) L_3) ?x2431 ?x264) 0.0)))
 (let (($x48075 (<= (+ ?x2448 (* 5.0 A_3) ?x1291 (* (- 5.0) L_3) ?x2450 ?x264) 0.0)))
 (let (($x48073 (<= (+ ?x2421 (* 4.0 A_3) ?x1321 (* (- 4.0) L_3) ?x2431 ?x264 L_0) 0.0)))
 (let (($x65993 (<= 0.0 (+ ?x1994 ?x1212 ?x1321 ?x1214 ?x1990 ?x3248 L_0))))
 (let ((?x436 (* (- 1.0) A_3)))
 (let ((?x4482 (+ A_4 ?x436 ?x433 A_1 ?x324 L_3 ?x273 L_2)))
 (let (($x163300 (or $x86 (= (+ ?x439 ?x1212 ?x1218 ?x1173 ?x1214 L_4 ?x1640) 0.0) (not (<= 0.0 (+ ?x439 ?x1212 ?x1218 ?x1173 ?x1214 L_4 ?x1640))) (<= 0.0 ?x4482))))
 (let (($x158580 (or $x86 (<= (+ ?x439 ?x1212 ?x1776 ?x1214 L_4 ?x1640) 0.0) (<= (+ ?x439 A_3 A_2 ?x307 (* (- 1.0) S_2) ?x290 L_4) 0.0))))
 (let ((?x1269 (* 2.0 L_2)))
 (let ((?x1268 (* (- 2.0) A_2)))
 (let (($x73639 (or $x66 (<= (+ A_5 ?x324 ?x436 ?x1268 ?x1127 L_3 ?x1171 ?x1269 ?x1436) 0.0) (<= (+ A_5 ?x324 ?x436 ?x433 L_3 S_0 L_2 B) 0.0))))
 (let ((?x3519 (* (/ 1.0 2.0) L_2)))
 (let ((?x3507 (* (/ 1.0 2.0) S_0)))
 (let ((?x3518 (* (- (/ 1.0 2.0)) A_2)))
 (let (($x55872 (or $x66 (<= (+ ?x436 ?x433 A_1 S_4 L_3 ?x273 L_2 B) 0.0) (<= (+ ?x436 ?x3518 S_4 L_3 ?x3507 ?x3519 ?x3520) 0.0))))
 (let (($x160457 (or $x64723 (<= (+ ?x13307 (* (- 1.0) S_3) ?x3507 ?x13786 ?x3019) 0.0) (<= (+ A_4 ?x1127 ?x1171 (* (- 3.0) S_3) ?x324 ?x264) 0.0))))
 (let (($x73617 (or $x64723 (<= (+ A_5 ?x324 ?x436 L_3 (* (- 1.0) S_3) S_0) 0.0) (<= (+ A_5 ?x324 ?x436 ?x1127 L_3 (* (- 2.0) S_3) ?x1171) 0.0))))
 (let (($x158165 (or $x86 (<= (+ ?x439 ?x1200 ?x398 ?x1079 L_4 ?x264) 0.0) (<= (+ ?x1670 ?x1998 A_2 ?x1988 ?x398 ?x290 ?x1671 B) 0.0))))
 (let (($x8249 (<= (+ (* (- (/ 4.0 3.0)) A_3) S_4 ?x7670 (* (/ 4.0 3.0) L_3) (* (/ 4.0 3.0) B)) 0.0)))
 (let (($x160654 (or $x76 $x8249 (<= (+ ?x1663 A_1 (* 2.0 S_4) ?x273 ?x1665 ?x2570) 0.0) $x10875)))
 (let ((?x4616 (+ ?x439 ?x1212 ?x1218 ?x1173 ?x1214 L_4 ?x1640)))
 (let (($x64634 (<= 0.0 ?x4616)))
 (let ((?x8206 (* (/ 3.0 2.0) S_0)))
 (let ((?x64887 (+ A_5 ?x324 (* (- (/ 5.0 2.0)) A_2) ?x8206 (* (/ 5.0 2.0) L_2) (* (/ 5.0 2.0) B))))
 (let (($x73242 (or $x66 (<= (+ A_5 ?x324 ?x1300 ?x1290 ?x1292 ?x1301 ?x3155) 0.0) (<= ?x64887 0.0))))
 (let ((?x1949 (+ ?x439 ?x1998 ?x433 L_2 ?x1988 L_4 ?x264)))
 (let (($x65323 (<= 0.0 ?x1949)))
 (let (($x160426 (or $x76 (<= (+ A_4 (* (- (/ 4.0 3.0)) A_3) ?x7670 ?x7691 ?x7692) 0.0) (<= (+ ?x1662 ?x1663 A_1 ?x273 L_3 B) 0.0) $x64422 $x65323)))
 (let (($x162161 (or $x86 $x64612 $x65518 (<= (+ (* 3.0 A_5) L_4 ?x2448 A_1 ?x273 ?x2570) 0.0))))
 (let (($x82939 (or $x86 (<= (+ ?x439 ?x433 L_2 (* 2.0 S_3) L_4 B) 0.0))))
 (let (($x65199 (<= 0.0 (+ A_4 ?x436 ?x433 A_1 L_3 ?x273 L_2 ?x324 ?x264))))
 (let (($x64085 (not (<= 0.0 (+ L_1 ?x290)))))
 (let ((?x1655 (* 3.0 L_1)))
 (let ((?x11013 (* 3.0 S_0)))
 (let ((?x1653 (* (- 3.0) A_1)))
 (let (($x160133 (or $x64192 $x67410 (<= (+ A_5 ?x324 A_1 (* (- 2.0) S_4) ?x273 ?x264) 0.0))))
 (let ((?x22142 (* (- (/ 1.0 4.0)) B)))
 (let ((?x21782 (* (- (/ 1.0 4.0)) L_4)))
 (let ((?x9075 (* (/ 3.0 4.0) S_0)))
 (let ((?x404 (* (- 1.0) S_2)))
 (let ((?x22133 (* (/ 1.0 4.0) A_4)))
 (let (($x575 (<= 0.0 (+ ?x273 L_0))))
 (let (($x29934 (<= (+ A_4 (* (- 4.0) A_1) ?x11013 (* 4.0 L_1) ?x324 ?x2570) 0.0)))
 (let (($x72765 (or (<= (+ ?x1200 (* (- 2.0) S_4) ?x1079 S_1 ?x1291) 0.0) (<= (+ ?x418 ?x3196 ?x1291) 0.0) $x64192)))
 (let (($x67141 (<= (- 5.0) (+ ?x431 S_0 L_1))))
 (let (($x15084 (<= (+ A_2 ?x418 ?x290) (- 5.0))))
 (let (($x88124 (or $x76 (<= (+ ?x436 ?x431 L_1 (* 2.0 S_2) L_3 B) 0.0))))
 (let (($x160285 (or $x76 (<= (+ A_4 (* (- (/ 3.0 2.0)) A_3) ?x7927 ?x7921 ?x3520) 0.0) $x64422 $x65323)))
 (let (($x69417 (<= (+ A_5 ?x324 ?x436 ?x1127 L_3 (* (- 2.0) S_3) ?x1171 ?x1640) 0.0)))
 (let (($x64804 (<= 0.0 (+ (* (/ 1.0 2.0) A_3) ?x433 ?x7927 L_2 (* (- (/ 1.0 2.0)) L_3) ?x3019))))
 (let (($x76786 (or $x76 (<= (+ ?x436 A_2 ?x1321 ?x290 S_1 L_3 B L_0) 0.0) (not $x64804))))
 (let (($x50400 (or $x76 (<= (+ ?x436 ?x3196 ?x1291 L_3 B) 0.0) (<= (+ ?x1994 ?x1200 ?x1079 S_1 ?x1291 ?x1990 ?x1436) 0.0))))
 (let (($x66406 (<= (+ A_5 ?x9726 (* (- (/ 4.0 3.0)) A_4) (* (/ 1.0 3.0) S_1) (* (/ 4.0 3.0) B)) 0.0)))
 (let ((?x7674 (* (- (/ 2.0 3.0)) B)))
 (let ((?x9031 (* (- (/ 2.0 3.0)) L_4)))
 (let ((?x15480 (* (/ 1.0 3.0) S_1)))
 (let ((?x9624 (* (/ 2.0 3.0) A_4)))
 (let (($x2964 (not $x76)))
 (let (($x16579 (<= (+ A_3 A_1 (* (- 2.0) S_3) ?x307 (* (- 1.0) L_0) ?x264) 0.0)))
 (let (($x7660 (<= (+ (* (/ 2.0 3.0) A_3) (* (- 1.0) S_3) ?x7670 (* (- (/ 2.0 3.0)) L_3) ?x7674) 0.0)))
 (let (($x71674 (or $x64723 (<= (+ ?x436 S_4 L_3 (* (- (/ 1.0 2.0)) S_3) ?x3507) 0.0) (<= (+ ?x436 A_1 S_4 L_3 (* (- 1.0) S_3) ?x273) 0.0))))
 (let (($x161957 (or (<= (+ ?x436 A_1 S_4 L_3 (* (- 1.0) S_3) ?x273 ?x264) 0.0) $x64723)))
 (let (($x6716 (<= (+ A_4 ?x436 A_1 ?x324 (* (- 1.0) S_3) L_3 ?x273 ?x264) 0.0)))
 (let (($x78203 (or $x6716 (<= (+ ?x1662 ?x1994 ?x1990 (* (- 1.0) S_3) S_0 ?x1664 ?x1640) 0.0) $x64723)))
 (let (($x71538 (or $x64723 (<= (+ (* (/ 1.0 2.0) S_4) (* (- 1.0) S_3) ?x3507) 0.0) (<= (+ ?x1127 S_4 ?x1171 (* (- 3.0) S_3)) 0.0))))
 (let (($x21263 (<= (+ (* (- (/ 1.0 2.0)) A_1) (* (- (/ 1.0 2.0)) S_4) (* (/ 1.0 2.0) L_1) S_2) 0.0)))
 (let (($x21912 (<= (+ (* (/ 1.0 2.0) A_1) (* (- (/ 1.0 2.0)) S_4) ?x21612) (- 5.0))))
 (let (($x66989 (<= (+ A_5 ?x439 A_2 ?x418 ?x290) 0.0)))
 (let (($x71321 (or $x64192 $x66989 (<= (+ A_5 ?x439 (* (- (/ 1.0 3.0)) S_4) ?x7670) 0.0) (<= (+ A_5 ?x439 (* (/ 1.0 2.0) A_1) (* (- (/ 1.0 2.0)) S_4) ?x21612) 0.0))))
 (let (($x162359 (or (<= (+ ?x1200 A_1 (* (- 2.0) S_4) ?x1079 ?x1291 ?x273 ?x264) 0.0) (<= (+ ?x1127 ?x418 ?x1291 ?x1171 ?x1640) 0.0) $x64192)))
 (let (($x60858 (not $x64051)))
 (let (($x158678 (or $x523 (<= (+ ?x1994 ?x1200 A_1 ?x1079 ?x1291 ?x273 ?x1990 B) 0.0) $x60858)))
 (let (($x71086 (or $x64723 (<= (+ A_5 ?x324 ?x436 L_3 (* (- 2.0) S_3) ?x3196) 0.0))))
 (let (($x71012 (or $x76 $x64804 (<= (+ ?x7923 ?x1321 (* (/ 3.0 2.0) S_1) ?x7921 ?x3520 L_0) 0.0))))
 (let (($x65324 (not $x65323)))
 (let (($x159796 (or $x66 (<= (+ (* (- 3.0) A_2) S_4 ?x3196 (* 3.0 L_2) ?x2570) 0.0))))
 (let (($x4018 (<= (+ (* (- 3.0) A_2) ?x1127 S_4 ?x1171 (* 3.0 L_2) ?x2570) 0.0)))
 (let (($x70596 (<= (+ A_5 ?x439 (* (/ 1.0 2.0) A_1) (* (- (/ 1.0 2.0)) S_4) ?x21612 ?x3019) 0.0)))
 (let (($x16420 (<= (+ (* (/ 1.0 2.0) A_1) (* (- (/ 1.0 2.0)) S_4) ?x21612 ?x3019) (- 5.0))))
 (let ((?x12723 (* 4.0 S_0)))
 (let ((?x67520 (+ A_5 ?x324 (* (- 5.0) A_1) ?x12723 (* 5.0 L_1) (* 5.0 B))))
 (let (($x70525 (or $x64723 (<= (+ A_5 ?x439 A_1 (* (- 1.0) S_3) ?x273) 0.0) (<= (+ A_5 ?x439 (* (- (/ 1.0 2.0)) S_3) ?x3507) 0.0))))
 (let (($x70306 (or $x66 (<= (+ A_5 ?x439 ?x433 A_1 ?x273 L_2 B) 0.0) (<= (+ A_5 ?x439 ?x3518 ?x3507 ?x3519 ?x3520) 0.0))))
 (let ((?x7686 (* (- (/ 1.0 3.0)) B)))
 (let ((?x9464 (* (- (/ 1.0 3.0)) L_4)))
 (let ((?x15474 (* (/ 2.0 3.0) S_1)))
 (let ((?x411 (* (- 1.0) S_3)))
 (let ((?x9612 (* (/ 1.0 3.0) A_4)))
 (let (($x159969 (or (<= (+ A_2 ?x1321 ?x418 ?x290 S_1 L_0) 0.0) $x64192 (not (<= 0.0 (+ ?x433 (* (/ 1.0 2.0) S_4) ?x7927 L_2))))))
 (let (($x66776 (<= 0.0 (+ ?x433 (* (/ 1.0 2.0) S_4) ?x7927 L_2))))
 (let (($x69935 (or (<= (+ ?x1321 (* (- (/ 1.0 2.0)) S_4) (* (/ 3.0 2.0) S_1) L_0) 0.0) $x64192 $x66776)))
 (let (($x77820 (or $x76 (<= (+ ?x436 ?x1290 ?x1682 ?x1292 L_3 ?x1640 ?x1683) 0.0) (<= (+ ?x436 A_2 A_1 ?x1321 ?x290 ?x273 L_3 L_0) 0.0))))
 (let (($x29974 (<= (+ ?x439 ?x15205 (* (- 3.0) A_0) ?x1989 L_4 ?x3248 (* 3.0 L_0)) 0.0)))
 (let (($x159555 (or $x86 (<= (+ ?x439 A_3 A_1 ?x1321 ?x307 ?x273 L_4 L_0) 0.0) (<= (+ ?x439 A_2 ?x1127 ?x1682 ?x290 ?x1171 L_4 ?x264 ?x1683) 0.0) $x29974)))
 (let (($x77459 (or (<= (+ A_4 ?x1127 (* (- 3.0) S_3) ?x1171 ?x324 ?x3248) 0.0) $x64723)))
 (let (($x76256 (or $x56 $x86 (<= (+ ?x439 A_3 ?x431 ?x307 S_2 L_1 L_4 ?x1436) 0.0) (<= (+ ?x439 ?x1218 ?x11934 ?x1173 L_4 ?x2570) 0.0))))
 (let (($x22612 (<= (+ ?x9624 ?x436 (* (/ 1.0 3.0) A_1) (* (- (/ 1.0 3.0)) L_1) L_3 ?x9031) 0.0)))
 (let (($x160718 (or $x56 $x86 (not $x22612) (= (+ ?x1670 ?x5557 ?x431 L_1 ?x5558 ?x1671) 0.0))))
 (let (($x35270 (or $x56 $x86 (<= (+ ?x1670 ?x431 (* 3.0 S_3) L_1 ?x1671 ?x2570) 0.0))))
 (let (($x77136 (or (<= (+ A_2 A_1 ?x1321 ?x418 ?x290 ?x273 ?x264 L_0) 0.0) $x64192 (not (<= 0.0 (+ ?x433 ?x1127 ?x1321 ?x1171 L_2 ?x1640 L_0))))))
 (let (($x66690 (<= 0.0 (+ ?x433 ?x1127 ?x1321 ?x1171 L_2 ?x1640 L_0))))
 (let ((?x3395 (* (- (/ 3.0 2.0)) B)))
 (let ((?x21441 (* (- (/ 3.0 2.0)) L_1)))
 (let ((?x8469 (* (- (/ 1.0 2.0)) S_4)))
 (let ((?x20163 (* (/ 3.0 2.0) A_1)))
 (let (($x78994 (or $x56 (<= (+ (* (- (/ 1.0 2.0)) A_1) ?x8469 S_2 (* (/ 1.0 2.0) L_1) ?x3520) 0.0) $x64192)))
 (let (($x75900 (or (<= (+ A_2 A_1 ?x418 ?x290 ?x398 ?x273 ?x264) 0.0) (<= (+ ?x20163 ?x8469 ?x398 ?x21441 ?x3395) 0.0) $x64192)))
 (let (($x6763 (<= (+ A_1 ?x411 ?x273 ?x264) (- 5.0))))
 (let (($x65994 (not $x65993)))
 (let (($x76528 (or (<= (+ ?x1670 ?x1998 A_2 ?x1321 ?x1988 ?x290 ?x1671 B L_0) 0.0) $x64421 $x65994)))
 (let (($x158073 (or $x66 (<= 0.0 (+ ?x439 A_3 A_2 ?x431 ?x307 ?x290 L_1 L_4 B)))))
 (let (($x158333 (or $x86 (not (<= ?x4482 0.0)) (<= (+ ?x439 A_3 A_1 ?x1321 ?x307 ?x273 L_4 B L_0) 0.0) $x65994)))
 (let (($x67955 (or $x56 $x76 (<= (+ ?x436 ?x431 (* 2.0 S_2) L_1 L_3 ?x1436) 0.0))))
 (let (($x67938 (or $x76 (<= (+ A_5 ?x324 ?x1663 (* 2.0 S_2) ?x1665 ?x2570) 0.0))))
 (let (($x158210 (or $x76 (<= (+ ?x1663 A_1 (* 2.0 S_4) ?x273 ?x1665 ?x1436) 0.0) $x10875)))
 (let (($x84940 (or (<= (+ (* (/ 1.0 2.0) A_3) ?x411 ?x7927 (* (- (/ 1.0 2.0)) L_3) ?x3019) 0.0) $x64723)))
 (let (($x77660 (or (<= (+ A_3 A_1 (* (- 2.0) S_3) ?x273 ?x307 ?x1640) 0.0) $x64723)))
 (let (($x67279 (or $x2845 (<= (+ A_5 ?x324 ?x433 L_2 (* (- 3.0) S_2) ?x11013) 0.0))))
 (let (($x23971 (or $x66 $x86 (<= (+ ?x439 ?x433 (* 2.0 S_3) L_2 L_4 ?x1436) 0.0))))
 (let (($x1057 (<= (+ (* (- 3.0) A_2) ?x1127 S_4 ?x1171 (* 3.0 L_2) B) 0.0)))
 (let (($x6442 (<= (+ A_1 ?x411 ?x273) (- 5.0))))
 (let (($x77450 (or $x66 (<= (+ ?x433 A_1 ?x273 L_2 B) (- 5.0)) (<= (+ ?x3518 ?x3507 ?x3519 ?x3520) (- 5.0)))))
 (let (($x164069 (or $x86 (<= (+ (* 2.0 A_5) L_4 ?x2421 A_2 ?x290 ?x1436) 0.0) $x64612)))
 (let (($x66886 (or $x86 $x64612 (<= (+ A_5 (* (/ 1.0 2.0) L_4) ?x13813 (* (/ 1.0 2.0) S_2) ?x3379) 0.0))))
 (let (($x161905 (or $x76 (<= (+ ?x13307 ?x436 ?x3286 (* (- (/ 1.0 2.0)) L_2) L_3 ?x13786) 0.0))))
 (let ((?x1296 (+ ?x436 ?x1200 ?x431 L_1 ?x1079 L_3 ?x264)))
 (let (($x535 (<= 0.0 ?x1296)))
 (let (($x533 (not $x535)))
 (let (($x76880 (or $x64723 (<= (+ A_4 ?x436 A_1 L_3 ?x411 ?x273 ?x324 ?x1640) 0.0))))
 (let (($x4750 (<= (+ A_4 (* (- 3.0) A_2) ?x3196 (* 3.0 L_2) ?x324 ?x1436) 0.0)))
 (let (($x76700 (or $x2845 (<= (+ (* (/ 1.0 3.0) A_3) ?x404 ?x7684 (* (- (/ 1.0 3.0)) L_3) ?x7686) 0.0))))
 (let (($x159210 (or $x523 (<= (+ ?x436 A_2 A_1 ?x290 ?x398 ?x273 L_3) 0.0) $x60858)))
 (let (($x1584 (not $x56)))
 (let (($x164689 (or $x66 $x1584 (<= (+ A_5 ?x439 ?x433 A_1 L_2 (* (- 1.0) L_0)) 0.0))))
 (let (($x4480 (<= ?x4482 0.0)))
 (let (($x160541 (or $x66 $x4480 (not (<= 0.0 (+ ?x3286 ?x431 ?x3507 L_1 (* (- (/ 1.0 2.0)) L_2) ?x3019))))))
 (let (($x64188 (<= 0.0 (+ ?x3286 ?x431 ?x3507 L_1 (* (- (/ 1.0 2.0)) L_2) ?x3019))))
 (let (($x164732 (or $x66 (<= (+ ?x1662 ?x1994 ?x433 ?x1990 S_0 L_2 ?x1664 ?x264) 0.0) $x64188)))
 (let (($x3052 (<= (+ A_2 ?x418 ?x290 ?x264) (- 5.0))))
 (let ((?x1737 (* (- 2.0) L_0)))
 (let ((?x1048 (* 3.0 L_2)))
 (let ((?x1121 (* (- 3.0) A_2)))
 (let (($x77009 (or $x64192 (<= (+ A_4 A_2 (* (- 2.0) S_4) ?x290 ?x324 ?x1640) 0.0))))
 (let (($x77210 (or $x66 $x86 $x535 $x575 (= (+ ?x439 ?x1212 ?x1218 ?x1173 ?x1214 L_4) 0.0))))
 (let (($x4408 (or $x66 (<= (+ ?x1268 A_1 S_3 ?x273 ?x1269 ?x1436) 0.0) (<= (+ (* (- (/ 3.0 2.0)) A_2) S_3 ?x3507 (* (/ 3.0 2.0) L_2) ?x3379) 0.0))))
 (let (($x3352 (<= (+ (* 4.0 A_2) ?x3290 ?x1291 (* (- 4.0) L_2) (* (- 4.0) B)) 0.0)))
 (let (($x158271 (or $x64192 (<= (+ ?x1212 ?x1321 (* (- 2.0) S_4) ?x1214 ?x3248 L_0) 0.0))))
 (let (($x159534 (or $x66 $x1584 (<= (+ A_3 ?x1268 A_1 ?x1269 ?x307 (* (- 1.0) L_0)) 0.0))))
 (let (($x2225 (<= (+ ?x1663 (* 4.0 A_2) ?x1291 (* (- 4.0) L_2) ?x1665 ?x264) 0.0)))
 (let (($x1644 (<= (+ A_3 ?x418 ?x307 ?x264) 0.0)))
 (let (($x1281 (<= (+ A_1 ?x404 ?x273 ?x264) 0.0)))
 (let (($x1275 (<= (+ A_2 ?x411 ?x290 ?x264) 0.0)))
 (let (($x128 (>= S_1 S_0)))
 (let (($x131 (>= S_2 S_1)))
 (let (($x134 (>= S_3 S_2)))
 (let (($x137 (>= S_4 S_3)))
 (let (($x142 (>= A_1 A_0)))
 (let (($x143 (>= A_2 A_1)))
 (let (($x144 (>= A_3 A_2)))
 (let (($x145 (>= A_4 A_3)))
 (let (($x146 (>= A_5 A_4)))
 (and (<= (+ A_5 ?x324) S_5) $x146 $x145 $x144 $x143 $x142 $x137 $x134 $x131 $x128 (or $x56 (not $x575)) $x1275 $x1281 (or $x66 (<= (+ ?x433 ?x1127 ?x398 ?x1171 L_2 ?x264) 0.0)) (or (not $x523) $x76) (or $x66 $x64085) (or $x66 (<= (+ ?x433 S_2 L_2 B) 0.0)) (or $x56 (<= (+ ?x431 S_1 L_1 B) 0.0)) (or $x76 (<= (+ ?x436 S_3 L_3 B) 0.0)) $x1644 (or $x66 (<= (+ A_3 ?x1268 S_1 ?x1269 ?x307 B) 0.0)) (or $x66 $x535 (<= (+ ?x1998 ?x1121 S_0 ?x1048 ?x1988 B) 0.0)) (or $x76 (<= (+ ?x436 ?x1200 ?x404 ?x1079 L_3 ?x264) 0.0)) (or $x76 $x2225) (or $x76 (<= (+ ?x1994 ?x1212 ?x398 ?x1214 ?x1990 ?x264) 0.0)) (or $x76 (<= (+ ?x1994 ?x1212 ?x1321 ?x1214 ?x1990 ?x264 L_0) 0.0)) (or $x76 $x533 (= ?x1296 0.0)) (or $x66 (<= (+ ?x1268 S_3 S_1 ?x1269 ?x1436) 0.0)) (or $x2845 (<= (+ ?x3286 ?x404 ?x3507 (* (- (/ 1.0 2.0)) L_2) ?x3019) 0.0)) (or $x64192 (<= (+ ?x1200 ?x418 ?x404 ?x1079 ?x1640) 0.0)) (or $x56 (<= (+ ?x1200 ?x431 ?x418 L_1 ?x1079 ?x264) 0.0) $x64192) (or $x56 (<= (+ A_2 ?x1218 S_0 ?x1173 ?x290 B) 0.0)) (or $x66 (<= (+ ?x433 ?x1127 ?x1321 ?x1171 L_2 ?x264 L_0) 0.0)) (or $x66 (<= (+ ?x1268 A_1 S_3 ?x273 ?x1269 B) 0.0)) (or $x66 (<= (+ ?x1268 ?x1290 ?x1291 ?x1292 ?x1269 ?x264) 0.0)) (or $x66 $x523 $x575 (= (+ ?x436 ?x1200 ?x431 L_1 ?x1079 L_3) 0.0)) $x159534 (or $x66 (<= (+ ?x433 A_1 ?x273 L_2) (- 5.0))) (or $x66 (<= 0.0 (+ ?x436 ?x1200 ?x431 L_1 ?x290)) $x2964) (or $x66 (<= (+ ?x433 ?x1321 ?x3196 L_2 B L_0) 0.0)) (or $x66 (<= (+ ?x1268 ?x3165 ?x1291 ?x1269 ?x1436) 0.0)) (or $x64192 (<= (+ ?x1212 (* (- 2.0) S_4) ?x398 ?x1214 ?x3248) 0.0)) $x158271 (or $x64192 $x3352) (or (<= (+ ?x1200 ?x431 ?x418 L_1 ?x1079 ?x1640) 0.0) $x64192) $x4408 (or $x66 $x86 $x523 (= (+ ?x439 ?x1998 ?x433 L_2 ?x1988 L_4) 0.0)) (or $x86 (<= (+ ?x439 S_4 L_4 B) 0.0)) $x77210 (or $x66 $x86 $x2964 (<= (+ ?x439 ?x1998 ?x433 ?x290 L_4) 0.0)) $x77009 (or $x66 (<= (+ ?x433 S_1 L_2 B) (- 5.0))) (or $x66 $x1584 (<= (+ A_4 ?x1121 ?x1127 ?x1048 ?x324 ?x1737) 0.0)) (or $x86 $x64422) $x3052 (or $x76 (<= (+ ?x436 A_2 ?x290 L_3) (- 5.0))) $x164732 $x160541 $x164689 (or $x76 (<= (+ A_5 ?x439 ?x436 A_2 ?x290 L_3) 0.0)) (or (<= (+ ?x1127 ?x1321 ?x411 ?x1171 ?x1640 L_0) 0.0) $x64723) (or (<= (+ ?x1290 (* (- 2.0) S_3) ?x1291 ?x1292 ?x3248) 0.0) $x64723) (or $x56 (<= (+ ?x1218 S_2 S_0 ?x1173 ?x1436) 0.0)) (or $x76 (<= (+ ?x1994 A_2 S_4 ?x290 ?x1990 B) 0.0)) (or $x64192 (<= (+ A_5 ?x324 ?x1200 ?x3290 ?x1079 ?x1640) 0.0)) $x159210 $x76700 (or $x64723 (<= (+ ?x411 S_1) (- 5.0))) (or (<= (+ (* (- 2.0) S_3) ?x3165 ?x1291) 0.0) $x64723) (or $x66 $x4750) (or $x66 (<= (+ A_4 ?x436 ?x433 L_3 S_1 L_2 ?x324) 0.0)) $x76880 (or $x64192 (<= (+ A_5 ?x439 A_2 ?x418 ?x290 ?x264) 0.0)) (or $x64723 (<= (+ A_5 ?x439 ?x411 S_1) 0.0)) (or (<= (+ ?x1321 ?x411 ?x3196 L_0) 0.0) $x64723) (or $x64723 (<= (+ A_5 ?x439 A_1 ?x411 ?x273 ?x264) 0.0)) (or (<= (+ ?x1127 ?x411 ?x398 ?x1171 ?x1640) 0.0) $x64723) (or $x66 (<= (+ A_5 ?x439 ?x433 S_1 L_2 B) 0.0)) (or $x66 (<= (+ A_5 ?x439 ?x433 A_1 ?x273 L_2) 0.0)) (or $x56 $x86 $x533 $x65199) $x161905 (or (<= (+ ?x13307 ?x418 (* (/ 1.0 2.0) S_2) ?x13786 ?x3019) 0.0) $x64192) (or $x56 (<= (+ A_4 ?x436 ?x431 L_3 S_0 L_1 ?x324) 0.0)) (or $x56 (<= (+ A_5 ?x439 ?x431 S_0 L_1 B) 0.0)) (or $x2845 (<= (+ A_5 ?x439 ?x404 S_0) 0.0)) $x66886 $x164069 (or $x575 (<= (+ A_3 ?x433 ?x431 L_2 S_0 L_1 ?x307) 0.0)) $x77450 (or $x6442 $x64723 (<= (+ (* (- (/ 1.0 2.0)) S_3) ?x3507) (- 5.0))) (or $x66 $x1057) (or $x66 (<= (+ A_5 ?x324 ?x436 ?x1268 ?x1127 L_3 ?x1171 ?x1269) 0.0)) $x23971 $x67279 (or $x2845 (<= (+ ?x433 S_4 L_2 ?x1776 ?x1654) 0.0)) (or $x2845 (<= (+ A_5 ?x324 ?x436 L_3 ?x1776 ?x1654) 0.0)) (or $x2845 (<= (+ ?x436 S_4 L_3 ?x404 S_0) 0.0)) (or $x76 (<= (+ ?x1994 S_4 S_2 ?x1990 ?x1436) 0.0)) (or $x86 $x2964 (<= (+ ?x439 ?x1998 ?x433 ?x290 L_4 ?x264) 0.0)) $x77660 $x84940 (or $x523 $x60858 $x65327) $x158210 (or $x523 $x60858 $x65416) $x67938 (or $x76 (<= (+ A_5 ?x439 ?x436 S_2 L_3 B) 0.0)) $x67955 (or $x2845 (<= (+ A_3 ?x433 L_2 ?x404 S_0 ?x307 ?x264) 0.0)) (or $x86 (= ?x1949 0.0) $x65324) (or $x66 (<= (+ ?x436 ?x433 A_1 S_4 L_3 ?x273 L_2) 0.0)) (or $x56 (<= (+ ?x436 ?x431 S_4 L_3 S_0 L_1 B) 0.0)) $x158333 $x158073 $x76528 (or $x2845 (<= (+ A_4 ?x436 L_3 ?x404 S_0 ?x324 ?x264) 0.0)) (or $x2845 (<= (+ ?x404 S_0) (- 5.0))) $x6763 (or $x56 (<= (+ ?x431 S_0 L_1 B) (- 5.0))) (or $x64723 (<= (+ ?x1127 S_4 (* (- 3.0) S_3) ?x1171 ?x1640) 0.0)) (or $x56 (<= (+ A_5 ?x324 ?x436 ?x1218 L_3 ?x1654 ?x1173 ?x1436) 0.0)) $x75900 $x78994 (or (<= (+ ?x20163 ?x1321 ?x8469 ?x21441 ?x3395 L_0) 0.0) $x64192 $x66690) $x77136 (or $x64723 (<= (+ A_4 ?x436 L_3 ?x411 S_1 ?x324 ?x264) 0.0)) (or $x3367 (<= (+ ?x1662 A_1 ?x3290 ?x273 ?x1664 ?x3248) 0.0) $x64192) $x35270 (or $x523 $x22612 $x65199) $x160718 $x76256 $x77459 (or $x76 (<= (+ A_4 ?x1994 S_2 L_3 B) 0.0) $x64422) (or $x66 (<= 0.0 (+ ?x439 ?x1212 ?x1218 ?x1173 ?x1214 L_3)) $x64422) $x159555 (or $x86 (<= (+ A_5 L_4 ?x1670 S_3 ?x1436) 0.0)) (or $x64192 (<= (+ ?x418 S_2) (- 5.0))) (or $x76 $x64816 (not $x65199)) (or $x76 (<= (+ ?x436 ?x1127 ?x1291 ?x1171 L_3 ?x264) 0.0) $x64051) $x77820 (or $x76 (<= (+ ?x436 A_1 ?x273 L_3) (- 10.0))) (or $x76 (<= (+ ?x436 S_2 L_3 B) (- 5.0))) $x69935 $x159969 (or $x76 (<= (+ A_5 ?x324 ?x1663 ?x1200 ?x1079 ?x1665 B) 0.0)) (or $x2845 (<= (+ S_3 (* (- 3.0) S_2) ?x1654) 0.0)) (or $x64723 (<= (+ ?x9612 ?x411 ?x15474 ?x9464 ?x7686) 0.0)) $x70306 (or $x66 (<= (+ A_5 ?x324 ?x1300 ?x1290 ?x1292 ?x1301 B) 0.0)) $x70525 (or $x56 (<= (+ ?x433 ?x1218 S_4 L_2 ?x1654 ?x1173 ?x1436) 0.0)) (or $x2845 (<= (+ (* (/ 1.0 4.0) S_4) ?x404 ?x9075) 0.0)) (or $x2845 (<= (+ A_5 ?x324 (* (- 5.0) S_2) ?x12723) 0.0)) (or $x64192 $x66989 (<= (+ A_5 ?x439 ?x8469 ?x7927) 0.0)) (or $x56 (<= ?x67520 0.0)) (or $x16420 $x64192) (or $x64192 $x66989 $x70596) (or $x15084 $x64192 (<= (+ ?x8469 ?x7927) (- 5.0))) (or $x66 $x4018 (<= (+ ?x1268 S_4 S_0 ?x1269 ?x1436) 0.0)) (or $x66 (<= (+ ?x436 ?x433 S_4 L_3 S_1 L_2 B) 0.0)) $x159796 (or $x86 $x65324 (<= 0.0 (+ A_3 ?x1268 A_1 ?x273 ?x1269 ?x307 ?x264))) $x71012 $x71086 (or $x56 $x76 (<= 0.0 (+ A_3 ?x1268 A_1 ?x307 ?x273 ?x1269))) $x158678 $x162359 (or $x64192 (<= (+ A_5 ?x324 ?x3290 (* 2.0 S_2)) 0.0)) (or $x64192 (<= (+ A_5 ?x439 ?x418 S_2) 0.0)) $x71321 (or $x15084 $x21912 $x64192 (not $x67141)) (or $x64192 $x21263) $x71538 $x78203 (or $x64723 (<= (+ S_4 (* (- 3.0) S_3) ?x3196) 0.0)) (or $x64723 (<= (+ ?x436 S_4 L_3 ?x411 S_1) 0.0)) $x161957 (or $x575 (<= (+ A_4 ?x433 ?x1218 L_2 ?x1654 ?x1173 ?x324 B) 0.0)) $x71674 (or $x7660 $x16579 $x64723) (or $x86 $x2964 (<= (+ A_5 L_4 ?x1670 A_3 ?x290 B) 0.0)) (or $x3367 (<= (+ ?x9624 ?x418 ?x15480 ?x9031 ?x7674) 0.0) $x64192) (or $x86 $x64612 $x65518 $x66406) $x50400 $x76786 (or $x76 (<= (+ ?x1994 ?x1321 ?x11934 ?x1990 ?x1436 L_0) 0.0)) (or $x76 (<= (+ ?x1663 (* 4.0 S_2) ?x1291 ?x1665 ?x2570) 0.0)) (or $x56 (<= (+ ?x1653 S_3 ?x1654 ?x1655 ?x2570) 0.0)) (or $x64723 $x69417) $x160285 (or $x76 $x65024 (<= (+ ?x7923 ?x7927 ?x7921 ?x3520) (- 5.0))) (or $x86 (<= (+ A_5 L_4 ?x1670 A_3 ?x307 B) 0.0)) $x88124 (or $x15084 $x64192 $x67141 (<= (+ (* (- (/ 1.0 3.0)) S_4) ?x7670) (- 5.0))) (or $x64192 (<= (+ ?x1321 (* (- 2.0) S_4) ?x11934 L_0) 0.0)) $x72765 (or $x64192 (<= (+ ?x3290 (* 4.0 S_2) ?x1291) 0.0)) (or $x56 $x29934) (or $x575 (<= (+ ?x433 ?x431 S_3 L_2 S_0 L_1 B) 0.0)) (or $x2845 (<= (+ ?x433 L_2 S_3 ?x404 S_0) 0.0)) (or $x2845 (<= (+ ?x22133 ?x404 ?x9075 ?x21782 ?x22142) 0.0)) (or $x56 (<= (+ A_3 ?x1653 ?x1654 ?x1655 ?x307 ?x1436) 0.0)) $x160133 (or $x56 (<= (+ A_5 ?x324 ?x433 ?x1653 L_2 ?x11013 ?x1655 ?x2570) 0.0)) (or $x56 $x86 (<= (+ ?x439 ?x1212 ?x1218 ?x273 L_4) 0.0) $x64085 $x65199) $x82939 $x162161 $x160426 $x73242 (or $x66 (<= (+ A_4 ?x1268 S_0 ?x1269 ?x324 B) 0.0) $x64634) (or $x64192 (<= (+ (* (- 2.0) S_4) ?x11934 ?x398) 0.0)) $x160654 (or $x64723 (<= (+ A_5 ?x324 ?x1290 ?x2435 ?x1292 ?x3248) 0.0)) $x158165 $x73617 $x160457 $x55872 $x73639 (or $x66 (<= (+ A_5 ?x324 ?x436 ?x1268 L_3 ?x3196 ?x1269 ?x1436) 0.0)) $x158580 $x163300 (or (<= (+ ?x439 ?x1200 ?x1321 ?x1079 L_4 ?x264 L_0) 0.0) $x64421 $x65993) (or $x48073 $x64421) (or $x76 (<= (+ A_4 ?x1994 S_2 ?x1990 ?x324 B) 0.0)) (or (= ?x45142 0.0) $x64421 (not $x72267)) (or $x86 (<= (+ ?x1670 ?x5557 ?x404 ?x5558 ?x1671 ?x264) 0.0)) (or $x48075 $x64421) (or $x76 (<= (+ ?x1662 ?x1663 S_1 ?x1665 ?x1664 B) 0.0) $x64816) (or $x48108 $x64421) $x159665 (or $x76 (<= (+ ?x1994 ?x11934 ?x398 ?x1990 ?x1436) 0.0)) (or $x76 $x499 $x65327) (or $x56 $x23050) (or $x76 $x65327 $x65411 $x70647) (or $x523 $x65411 $x65416 $x70647) (or $x76 $x499 $x64051) (or $x76 $x65327 (<= (+ A_5 ?x324 ?x1994 A_1 ?x273 ?x1990 B) 0.0)) $x162281 $x162078 (or $x76 $x1652 (<= (+ ?x1994 ?x1212 ?x1214 ?x398 ?x1990 ?x1436) 0.0)) $x161260 $x58929 (or $x64192 $x67410 (<= (+ A_5 ?x324 (* (- 2.0) S_4) S_1) 0.0)) (or $x64723 (<= (+ A_5 ?x324 ?x2435 ?x3165) 0.0)) (or $x66 (<= (+ A_5 ?x324 ?x1300 ?x3165 ?x1301 ?x3155) 0.0)) (or $x76 (<= ?x65217 0.0) $x65327 $x65863) (or $x76 $x65327 $x67584) $x162865 (or $x76 $x65416 (<= (+ A_5 ?x439 ?x7923 ?x7927 ?x7921 ?x3520) 0.0)) $x163632 $x74653 $x161727 (or $x76 (<= (+ ?x2426 ?x39174 S_0 ?x48085 ?x2427 B) 0.0) $x64816 $x72267) (or $x3367 $x21778 (<= (+ ?x1662 A_1 ?x3290 ?x273 ?x1664 ?x1640) 0.0) $x64192) $x162970 (or $x86 (<= (+ ?x2421 ?x2419 ?x398 ?x2431 ?x2570) 0.0)) (or $x86 $x6821 (<= (+ ?x439 ?x1218 ?x1173 ?x11934 L_4 B) 0.0)) $x61905 $x75041 (or $x2845 (<= (+ A_4 ?x433 L_2 ?x1776 ?x1654 ?x324 ?x264) 0.0)) (or $x86 $x64612 $x65518 $x67307 $x71663) $x63005 (or $x86 (<= (+ ?x2448 (* 5.0 S_3) ?x1291 ?x2450 ?x3155) 0.0)) (or $x86 (<= (+ ?x2421 ?x1321 ?x2419 ?x2431 ?x2570 L_0) 0.0)) (or $x86 $x41758) (or $x64723 (<= (+ A_5 ?x324 ?x1290 ?x1292 ?x2435) 0.0) $x67638) $x161122 $x964 $x39 (<= (+ S_5 (* (- 1.0) A_5) L_4) 0.0) (<= (+ ?x439 S_4 L_4) 0.0) (<= (+ ?x1321 S_0 L_0) 0.0) (<= (+ ?x431 L_1 S_1) 0.0) (<= (+ ?x436 S_3 L_3) 0.0) (<= (+ ?x433 S_2 L_2) 0.0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
