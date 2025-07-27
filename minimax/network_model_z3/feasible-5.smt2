; benchmark generated from python API
(set-info :status unknown)
(declare-fun C () Real)
(declare-fun L_0 () Real)
(declare-fun Ld_0 () Real)
(declare-fun A_0 () Real)
(declare-fun I_0 () Real)
(declare-fun a () Real)
(declare-fun B () Real)
(declare-fun I_1 () Real)
(declare-fun A_1 () Real)
(declare-fun L_1 () Real)
(declare-fun I_2 () Real)
(declare-fun A_2 () Real)
(declare-fun L_2 () Real)
(declare-fun I_3 () Real)
(declare-fun A_3 () Real)
(declare-fun L_3 () Real)
(declare-fun I_4 () Real)
(declare-fun A_4 () Real)
(declare-fun L_4 () Real)
(declare-fun S_0 () Real)
(declare-fun S_1 () Real)
(declare-fun S_2 () Real)
(declare-fun S_3 () Real)
(declare-fun S_4 () Real)
(declare-fun Ld_1 () Real)
(declare-fun Ld_2 () Real)
(declare-fun Ld_3 () Real)
(declare-fun Ld_4 () Real)
(declare-fun |qdel_1,0| () Bool)
(declare-fun |qdel_0,0| () Bool)
(declare-fun |qdel_2,0| () Bool)
(declare-fun |qdel_2,1| () Bool)
(declare-fun |qdel_1,1| () Bool)
(declare-fun |qdel_3,0| () Bool)
(declare-fun |qdel_3,1| () Bool)
(declare-fun |qdel_3,2| () Bool)
(declare-fun |qdel_2,2| () Bool)
(declare-fun |qdel_4,0| () Bool)
(declare-fun |qdel_4,1| () Bool)
(declare-fun |qdel_4,2| () Bool)
(declare-fun |qdel_4,3| () Bool)
(declare-fun |qdel_3,3| () Bool)
(declare-fun |qdel_0,4| () Bool)
(declare-fun |qdel_0,3| () Bool)
(declare-fun |qdel_0,2| () Bool)
(declare-fun |qdel_0,1| () Bool)
(declare-fun |qdel_1,4| () Bool)
(declare-fun |qdel_1,3| () Bool)
(declare-fun |qdel_1,2| () Bool)
(declare-fun |qdel_2,4| () Bool)
(declare-fun |qdel_2,3| () Bool)
(declare-fun |qdel_3,4| () Bool)
(declare-fun |qdel_4,4| () Bool)
(assert
 (> C 0.0))
(assert
 (>= L_0 0.0))
(assert
 (>= Ld_0 0.0))
(assert
 (let ((?x62 (- A_0 L_0)))
 (<= I_0 ?x62)))
(assert
 (<= a (/ C 5.0)))
(assert
 (< a C))
(assert
 (> a 0.0))
(assert
 (let ((?x74 (ite (> (- (- A_1 L_0) I_1) B) (- (- A_1 I_1) B) L_0)))
 (= L_1 ?x74)))
(assert
 (let ((?x81 (ite (> (- (- A_2 L_1) I_2) B) (- (- A_2 I_2) B) L_1)))
 (= L_2 ?x81)))
(assert
 (let ((?x88 (ite (> (- (- A_3 L_2) I_3) B) (- (- A_3 I_3) B) L_2)))
 (= L_3 ?x88)))
(assert
 (let ((?x95 (ite (> (- (- A_4 L_3) I_4) B) (- (- A_4 I_4) B) L_3)))
 (= L_4 ?x95)))
(assert
 (let ((?x74 (ite (> (- (- A_1 L_0) I_1) B) (- (- A_1 I_1) B) L_0)))
 (= L_1 ?x74)))
(assert
 (let ((?x81 (ite (> (- (- A_2 L_1) I_2) B) (- (- A_2 I_2) B) L_1)))
 (= L_2 ?x81)))
(assert
 (let ((?x88 (ite (> (- (- A_3 L_2) I_3) B) (- (- A_3 I_3) B) L_2)))
 (= L_3 ?x88)))
(assert
 (let ((?x95 (ite (> (- (- A_4 L_3) I_4) B) (- (- A_4 I_4) B) L_3)))
 (= L_4 ?x95)))
(assert
 (let ((?x100 (- A_1 L_1)))
 (let ((?x98 (* C 1.0)))
 (let ((?x99 (+ I_0 ?x98)))
 (= I_1 (ite (< ?x99 ?x100) ?x99 ?x100))))))
(assert
 (let ((?x105 (- A_2 L_2)))
 (let ((?x98 (* C 1.0)))
 (let ((?x104 (+ I_1 ?x98)))
 (= I_2 (ite (< ?x104 ?x105) ?x104 ?x105))))))
(assert
 (let ((?x110 (- A_3 L_3)))
 (let ((?x98 (* C 1.0)))
 (let ((?x109 (+ I_2 ?x98)))
 (= I_3 (ite (< ?x109 ?x110) ?x109 ?x110))))))
(assert
 (let ((?x115 (- A_4 L_4)))
 (let ((?x98 (* C 1.0)))
 (let ((?x114 (+ I_3 ?x98)))
 (= I_4 (ite (< ?x114 ?x115) ?x114 ?x115))))))
(assert
 (>= S_0 (- I_0 (* C 1.0))))
(assert
 (<= S_0 I_0))
(assert
 (>= S_1 I_0))
(assert
 (>= S_1 S_0))
(assert
 (<= S_1 I_1))
(assert
 (>= S_2 I_1))
(assert
 (>= S_2 S_1))
(assert
 (<= S_2 I_2))
(assert
 (>= S_3 I_2))
(assert
 (>= S_3 S_2))
(assert
 (<= S_3 I_3))
(assert
 (>= S_4 I_3))
(assert
 (>= S_4 S_3))
(assert
 (<= S_4 I_4))
(assert
 (>= A_1 (+ A_0 a)))
(assert
 (>= A_2 (+ A_1 a)))
(assert
 (>= A_3 (+ A_2 a)))
(assert
 (>= A_4 (+ A_3 a)))
(assert
 (>= Ld_1 Ld_0))
(assert
 (>= Ld_2 Ld_1))
(assert
 (>= Ld_3 Ld_2))
(assert
 (>= Ld_4 Ld_3))
(assert
 (let ((?x62 (- A_0 L_0)))
 (let ((?x146 (+ ?x62 a)))
 (let (($x147 (>= S_0 ?x146)))
 (=> $x147 (>= Ld_0 L_0))))))
(assert
 (let (($x151 (<= Ld_0 L_0)))
 (=> (not (>= S_0 (+ (- A_0 L_0) a))) $x151)))
(assert
 (<= Ld_0 L_0))
(assert
 (let ((?x100 (- A_1 L_1)))
 (let ((?x153 (+ ?x100 a)))
 (let (($x154 (>= S_1 ?x153)))
 (=> $x154 (>= Ld_1 L_1))))))
(assert
 (let (($x158 (<= Ld_1 L_1)))
 (=> (not (>= S_1 (+ (- A_1 L_1) a))) $x158)))
(assert
 (let ((?x62 (- A_0 L_0)))
 (let ((?x146 (+ ?x62 a)))
 (let (($x160 (>= S_1 ?x146)))
 (=> $x160 (>= Ld_1 L_0))))))
(assert
 (=> (not (>= S_1 (+ (- A_0 L_0) a))) (<= Ld_1 L_0)))
(assert
 (<= Ld_0 Ld_1))
(assert
 (<= Ld_1 L_1))
(assert
 (let ((?x105 (- A_2 L_2)))
 (let ((?x167 (+ ?x105 a)))
 (let (($x168 (>= S_2 ?x167)))
 (=> $x168 (>= Ld_2 L_2))))))
(assert
 (let (($x172 (<= Ld_2 L_2)))
 (=> (not (>= S_2 (+ (- A_2 L_2) a))) $x172)))
(assert
 (let ((?x100 (- A_1 L_1)))
 (let ((?x153 (+ ?x100 a)))
 (let (($x174 (>= S_2 ?x153)))
 (=> $x174 (>= Ld_2 L_1))))))
(assert
 (=> (not (>= S_2 (+ (- A_1 L_1) a))) (<= Ld_2 L_1)))
(assert
 (let ((?x62 (- A_0 L_0)))
 (let ((?x146 (+ ?x62 a)))
 (let (($x180 (>= S_2 ?x146)))
 (=> $x180 (>= Ld_2 L_0))))))
(assert
 (=> (not (>= S_2 (+ (- A_0 L_0) a))) (<= Ld_2 L_0)))
(assert
 (<= Ld_1 Ld_2))
(assert
 (<= Ld_2 L_2))
(assert
 (let ((?x110 (- A_3 L_3)))
 (let ((?x187 (+ ?x110 a)))
 (let (($x188 (>= S_3 ?x187)))
 (=> $x188 (>= Ld_3 L_3))))))
(assert
 (let (($x192 (<= Ld_3 L_3)))
 (=> (not (>= S_3 (+ (- A_3 L_3) a))) $x192)))
(assert
 (let ((?x105 (- A_2 L_2)))
 (let ((?x167 (+ ?x105 a)))
 (let (($x194 (>= S_3 ?x167)))
 (=> $x194 (>= Ld_3 L_2))))))
(assert
 (=> (not (>= S_3 (+ (- A_2 L_2) a))) (<= Ld_3 L_2)))
(assert
 (let ((?x100 (- A_1 L_1)))
 (let ((?x153 (+ ?x100 a)))
 (let (($x200 (>= S_3 ?x153)))
 (=> $x200 (>= Ld_3 L_1))))))
(assert
 (=> (not (>= S_3 (+ (- A_1 L_1) a))) (<= Ld_3 L_1)))
(assert
 (let ((?x62 (- A_0 L_0)))
 (let ((?x146 (+ ?x62 a)))
 (let (($x206 (>= S_3 ?x146)))
 (=> $x206 (>= Ld_3 L_0))))))
(assert
 (=> (not (>= S_3 (+ (- A_0 L_0) a))) (<= Ld_3 L_0)))
(assert
 (<= Ld_2 Ld_3))
(assert
 (<= Ld_3 L_3))
(assert
 (let (($x214 (>= S_4 (+ (- A_4 L_4) a))))
 (=> $x214 (>= Ld_4 L_4))))
(assert
 (let (($x218 (<= Ld_4 L_4)))
 (=> (not (>= S_4 (+ (- A_4 L_4) a))) $x218)))
(assert
 (let ((?x110 (- A_3 L_3)))
 (let ((?x187 (+ ?x110 a)))
 (let (($x220 (>= S_4 ?x187)))
 (=> $x220 (>= Ld_4 L_3))))))
(assert
 (=> (not (>= S_4 (+ (- A_3 L_3) a))) (<= Ld_4 L_3)))
(assert
 (let ((?x105 (- A_2 L_2)))
 (let ((?x167 (+ ?x105 a)))
 (let (($x226 (>= S_4 ?x167)))
 (=> $x226 (>= Ld_4 L_2))))))
(assert
 (=> (not (>= S_4 (+ (- A_2 L_2) a))) (<= Ld_4 L_2)))
(assert
 (let ((?x100 (- A_1 L_1)))
 (let ((?x153 (+ ?x100 a)))
 (let (($x232 (>= S_4 ?x153)))
 (=> $x232 (>= Ld_4 L_1))))))
(assert
 (=> (not (>= S_4 (+ (- A_1 L_1) a))) (<= Ld_4 L_1)))
(assert
 (let ((?x62 (- A_0 L_0)))
 (let ((?x146 (+ ?x62 a)))
 (let (($x238 (>= S_4 ?x146)))
 (=> $x238 (>= Ld_4 L_0))))))
(assert
 (=> (not (>= S_4 (+ (- A_0 L_0) a))) (<= Ld_4 L_0)))
(assert
 (<= Ld_3 Ld_4))
(assert
 (<= Ld_4 L_4))
(assert
 (let (($x249 (= |qdel_1,0| (and (< (- A_0 L_0) S_1) (>= (- A_1 L_1) S_1)))))
 (=> (and (distinct S_1 S_0) true) $x249)))
(assert
 (let (($x252 (= |qdel_1,0| |qdel_0,0|)))
 (let (($x251 (= S_1 S_0)))
 (=> $x251 $x252))))
(assert
 (let (($x258 (= |qdel_2,0| (and (< (- A_1 L_1) S_2) (>= (- A_2 L_2) S_2)))))
 (let (($x254 (and (distinct S_2 S_1) true)))
 (=> $x254 $x258))))
(assert
 (let (($x261 (= |qdel_2,0| |qdel_1,0|)))
 (let (($x260 (= S_2 S_1)))
 (=> $x260 $x261))))
(assert
 (let (($x266 (= |qdel_2,1| (and (< (- A_0 L_0) S_2) (>= (- A_1 L_1) S_2)))))
 (let (($x254 (and (distinct S_2 S_1) true)))
 (=> $x254 $x266))))
(assert
 (let (($x268 (= |qdel_2,1| |qdel_1,1|)))
 (let (($x260 (= S_2 S_1)))
 (=> $x260 $x268))))
(assert
 (let (($x274 (= |qdel_3,0| (and (< (- A_2 L_2) S_3) (>= (- A_3 L_3) S_3)))))
 (let (($x270 (and (distinct S_3 S_2) true)))
 (=> $x270 $x274))))
(assert
 (let (($x277 (= |qdel_3,0| |qdel_2,0|)))
 (let (($x276 (= S_3 S_2)))
 (=> $x276 $x277))))
(assert
 (let (($x282 (= |qdel_3,1| (and (< (- A_1 L_1) S_3) (>= (- A_2 L_2) S_3)))))
 (let (($x270 (and (distinct S_3 S_2) true)))
 (=> $x270 $x282))))
(assert
 (let (($x284 (= |qdel_3,1| |qdel_2,1|)))
 (let (($x276 (= S_3 S_2)))
 (=> $x276 $x284))))
(assert
 (let (($x289 (= |qdel_3,2| (and (< (- A_0 L_0) S_3) (>= (- A_1 L_1) S_3)))))
 (let (($x270 (and (distinct S_3 S_2) true)))
 (=> $x270 $x289))))
(assert
 (let (($x291 (= |qdel_3,2| |qdel_2,2|)))
 (let (($x276 (= S_3 S_2)))
 (=> $x276 $x291))))
(assert
 (let (($x297 (= |qdel_4,0| (and (< (- A_3 L_3) S_4) (>= (- A_4 L_4) S_4)))))
 (let (($x293 (and (distinct S_4 S_3) true)))
 (=> $x293 $x297))))
(assert
 (let (($x300 (= |qdel_4,0| |qdel_3,0|)))
 (let (($x299 (= S_4 S_3)))
 (=> $x299 $x300))))
(assert
 (let (($x305 (= |qdel_4,1| (and (< (- A_2 L_2) S_4) (>= (- A_3 L_3) S_4)))))
 (let (($x293 (and (distinct S_4 S_3) true)))
 (=> $x293 $x305))))
(assert
 (let (($x307 (= |qdel_4,1| |qdel_3,1|)))
 (let (($x299 (= S_4 S_3)))
 (=> $x299 $x307))))
(assert
 (let (($x312 (= |qdel_4,2| (and (< (- A_1 L_1) S_4) (>= (- A_2 L_2) S_4)))))
 (let (($x293 (and (distinct S_4 S_3) true)))
 (=> $x293 $x312))))
(assert
 (let (($x314 (= |qdel_4,2| |qdel_3,2|)))
 (let (($x299 (= S_4 S_3)))
 (=> $x299 $x314))))
(assert
 (let (($x319 (= |qdel_4,3| (and (< (- A_0 L_0) S_4) (>= (- A_1 L_1) S_4)))))
 (let (($x293 (and (distinct S_4 S_3) true)))
 (=> $x293 $x319))))
(assert
 (let (($x321 (= |qdel_4,3| |qdel_3,3|)))
 (let (($x299 (= S_4 S_3)))
 (=> $x299 $x321))))
(assert
 (let ((?x330 (+ (ite |qdel_0,0| 1 0) (ite |qdel_0,1| 1 0) (ite |qdel_0,2| 1 0) (ite |qdel_0,3| 1 0) (ite |qdel_0,4| 1 0))))
 (<= ?x330 1)))
(assert
 (let ((?x337 (+ (ite |qdel_1,0| 1 0) (ite |qdel_1,1| 1 0) (ite |qdel_1,2| 1 0) (ite |qdel_1,3| 1 0) (ite |qdel_1,4| 1 0))))
 (<= ?x337 1)))
(assert
 (let ((?x344 (+ (ite |qdel_2,0| 1 0) (ite |qdel_2,1| 1 0) (ite |qdel_2,2| 1 0) (ite |qdel_2,3| 1 0) (ite |qdel_2,4| 1 0))))
 (<= ?x344 1)))
(assert
 (let ((?x351 (+ (ite |qdel_3,0| 1 0) (ite |qdel_3,1| 1 0) (ite |qdel_3,2| 1 0) (ite |qdel_3,3| 1 0) (ite |qdel_3,4| 1 0))))
 (<= ?x351 1)))
(assert
 (let ((?x358 (+ (ite |qdel_4,0| 1 0) (ite |qdel_4,1| 1 0) (ite |qdel_4,2| 1 0) (ite |qdel_4,3| 1 0) (ite |qdel_4,4| 1 0))))
 (<= ?x358 1)))
(assert
 (let (($x360 (= |qdel_1,1| |qdel_0,1|)))
 (let (($x251 (= S_1 S_0)))
 (=> $x251 $x360))))
(assert
 (let (($x362 (= |qdel_1,2| |qdel_0,2|)))
 (let (($x251 (= S_1 S_0)))
 (=> $x251 $x362))))
(assert
 (let (($x364 (= |qdel_1,3| |qdel_0,3|)))
 (let (($x251 (= S_1 S_0)))
 (=> $x251 $x364))))
(assert
 (let (($x366 (= |qdel_1,4| |qdel_0,4|)))
 (let (($x251 (= S_1 S_0)))
 (=> $x251 $x366))))
(assert
 (let (($x368 (= |qdel_2,2| |qdel_1,2|)))
 (let (($x260 (= S_2 S_1)))
 (=> $x260 $x368))))
(assert
 (let (($x370 (= |qdel_2,3| |qdel_1,3|)))
 (let (($x260 (= S_2 S_1)))
 (=> $x260 $x370))))
(assert
 (let (($x372 (= |qdel_2,4| |qdel_1,4|)))
 (let (($x260 (= S_2 S_1)))
 (=> $x260 $x372))))
(assert
 (let (($x374 (= |qdel_3,3| |qdel_2,3|)))
 (let (($x276 (= S_3 S_2)))
 (=> $x276 $x374))))
(assert
 (let (($x376 (= |qdel_3,4| |qdel_2,4|)))
 (let (($x276 (= S_3 S_2)))
 (=> $x276 $x376))))
(assert
 (let (($x378 (= |qdel_4,4| |qdel_3,4|)))
 (let (($x299 (= S_4 S_3)))
 (=> $x299 $x378))))
(assert
 (let (($x382 (not |qdel_1,4|)))
 (let (($x381 (not |qdel_1,3|)))
 (let (($x380 (not |qdel_1,2|)))
 (let (($x383 (and $x380 $x381 $x382)))
 (=> |qdel_0,0| $x383))))))
(assert
 (=> |qdel_0,0| (or |qdel_1,0| |qdel_1,1|)))
(assert
 (let (($x382 (not |qdel_1,4|)))
 (let (($x381 (not |qdel_1,3|)))
 (let (($x387 (and $x381 $x382)))
 (=> |qdel_0,1| $x387)))))
(assert
 (=> |qdel_0,1| (or |qdel_1,0| |qdel_1,1| |qdel_1,2|)))
(assert
 (=> |qdel_0,2| (and (not |qdel_1,4|))))
(assert
 (=> |qdel_0,2| (or |qdel_1,0| |qdel_1,1| |qdel_1,2| |qdel_1,3|)))
(assert
 (=> |qdel_0,3| and))
(assert
 (let (($x397 (or |qdel_1,0| |qdel_1,1| |qdel_1,2| |qdel_1,3| |qdel_1,4|)))
 (=> |qdel_0,3| $x397)))
(assert
 (=> |qdel_0,4| and))
(assert
 (let (($x397 (or |qdel_1,0| |qdel_1,1| |qdel_1,2| |qdel_1,3| |qdel_1,4|)))
 (=> |qdel_0,4| $x397)))
(assert
 (let (($x403 (not |qdel_2,4|)))
 (let (($x402 (not |qdel_2,3|)))
 (let (($x401 (not |qdel_2,2|)))
 (let (($x404 (and $x401 $x402 $x403)))
 (=> |qdel_1,0| $x404))))))
(assert
 (=> |qdel_1,0| (or |qdel_2,0| |qdel_2,1|)))
(assert
 (let (($x403 (not |qdel_2,4|)))
 (let (($x402 (not |qdel_2,3|)))
 (let (($x408 (and $x402 $x403)))
 (=> |qdel_1,1| $x408)))))
(assert
 (=> |qdel_1,1| (or |qdel_2,0| |qdel_2,1| |qdel_2,2|)))
(assert
 (=> |qdel_1,2| (and (not |qdel_2,4|))))
(assert
 (=> |qdel_1,2| (or |qdel_2,0| |qdel_2,1| |qdel_2,2| |qdel_2,3|)))
(assert
 (=> |qdel_1,3| and))
(assert
 (let (($x417 (or |qdel_2,0| |qdel_2,1| |qdel_2,2| |qdel_2,3| |qdel_2,4|)))
 (=> |qdel_1,3| $x417)))
(assert
 (=> |qdel_1,4| and))
(assert
 (let (($x417 (or |qdel_2,0| |qdel_2,1| |qdel_2,2| |qdel_2,3| |qdel_2,4|)))
 (=> |qdel_1,4| $x417)))
(assert
 (let (($x423 (not |qdel_3,4|)))
 (let (($x422 (not |qdel_3,3|)))
 (let (($x421 (not |qdel_3,2|)))
 (let (($x424 (and $x421 $x422 $x423)))
 (=> |qdel_2,0| $x424))))))
(assert
 (=> |qdel_2,0| (or |qdel_3,0| |qdel_3,1|)))
(assert
 (let (($x423 (not |qdel_3,4|)))
 (let (($x422 (not |qdel_3,3|)))
 (let (($x428 (and $x422 $x423)))
 (=> |qdel_2,1| $x428)))))
(assert
 (=> |qdel_2,1| (or |qdel_3,0| |qdel_3,1| |qdel_3,2|)))
(assert
 (=> |qdel_2,2| (and (not |qdel_3,4|))))
(assert
 (=> |qdel_2,2| (or |qdel_3,0| |qdel_3,1| |qdel_3,2| |qdel_3,3|)))
(assert
 (=> |qdel_2,3| and))
(assert
 (let (($x437 (or |qdel_3,0| |qdel_3,1| |qdel_3,2| |qdel_3,3| |qdel_3,4|)))
 (=> |qdel_2,3| $x437)))
(assert
 (=> |qdel_2,4| and))
(assert
 (let (($x437 (or |qdel_3,0| |qdel_3,1| |qdel_3,2| |qdel_3,3| |qdel_3,4|)))
 (=> |qdel_2,4| $x437)))
(assert
 (let (($x443 (not |qdel_4,4|)))
 (let (($x442 (not |qdel_4,3|)))
 (let (($x444 (and (not |qdel_4,2|) $x442 $x443)))
 (=> |qdel_3,0| $x444)))))
(assert
 (=> |qdel_3,0| (or |qdel_4,0| |qdel_4,1|)))
(assert
 (let (($x443 (not |qdel_4,4|)))
 (let (($x442 (not |qdel_4,3|)))
 (let (($x448 (and $x442 $x443)))
 (=> |qdel_3,1| $x448)))))
(assert
 (=> |qdel_3,1| (or |qdel_4,0| |qdel_4,1| |qdel_4,2|)))
(assert
 (=> |qdel_3,2| (and (not |qdel_4,4|))))
(assert
 (=> |qdel_3,2| (or |qdel_4,0| |qdel_4,1| |qdel_4,2| |qdel_4,3|)))
(assert
 (=> |qdel_3,3| and))
(assert
 (let (($x457 (or |qdel_4,0| |qdel_4,1| |qdel_4,2| |qdel_4,3| |qdel_4,4|)))
 (=> |qdel_3,3| $x457)))
(assert
 (=> |qdel_3,4| and))
(assert
 (let (($x457 (or |qdel_4,0| |qdel_4,1| |qdel_4,2| |qdel_4,3| |qdel_4,4|)))
 (=> |qdel_3,4| $x457)))
(assert
 (= a 1.0))
(check-sat)
