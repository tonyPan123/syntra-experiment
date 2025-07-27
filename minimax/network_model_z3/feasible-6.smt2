; benchmark generated from python API
(set-info :status unknown)
(declare-fun C () Real)
(declare-fun B () Real)
(declare-fun L_0 () Real)
(declare-fun Ld_0 () Real)
(declare-fun A_0 () Real)
(declare-fun I_0 () Real)
(declare-fun a () Real)
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
(declare-fun I_5 () Real)
(declare-fun A_5 () Real)
(declare-fun L_5 () Real)
(declare-fun S_0 () Real)
(declare-fun S_1 () Real)
(declare-fun S_2 () Real)
(declare-fun S_3 () Real)
(declare-fun S_4 () Real)
(declare-fun S_5 () Real)
(declare-fun Ld_1 () Real)
(declare-fun Ld_2 () Real)
(declare-fun Ld_3 () Real)
(declare-fun Ld_4 () Real)
(declare-fun Ld_5 () Real)
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
(declare-fun |qdel_5,0| () Bool)
(declare-fun |qdel_5,1| () Bool)
(declare-fun |qdel_5,2| () Bool)
(declare-fun |qdel_5,3| () Bool)
(declare-fun |qdel_5,4| () Bool)
(declare-fun |qdel_4,4| () Bool)
(declare-fun |qdel_0,5| () Bool)
(declare-fun |qdel_0,4| () Bool)
(declare-fun |qdel_0,3| () Bool)
(declare-fun |qdel_0,2| () Bool)
(declare-fun |qdel_0,1| () Bool)
(declare-fun |qdel_1,5| () Bool)
(declare-fun |qdel_1,4| () Bool)
(declare-fun |qdel_1,3| () Bool)
(declare-fun |qdel_1,2| () Bool)
(declare-fun |qdel_2,5| () Bool)
(declare-fun |qdel_2,4| () Bool)
(declare-fun |qdel_2,3| () Bool)
(declare-fun |qdel_3,5| () Bool)
(declare-fun |qdel_3,4| () Bool)
(declare-fun |qdel_4,5| () Bool)
(declare-fun |qdel_5,5| () Bool)
(assert
 (> C 0.0))
(assert
 (> B 0.0))
(assert
 (>= L_0 0.0))
(assert
 (>= Ld_0 0.0))
(assert
 (let ((?x79 (- A_0 L_0)))
 (<= I_0 ?x79)))
(assert
 (<= a (/ C 5.0)))
(assert
 (< a C))
(assert
 (> a 0.0))
(assert
 (let ((?x91 (ite (> (- (- A_1 L_0) I_1) B) (- (- A_1 I_1) B) L_0)))
 (= L_1 ?x91)))
(assert
 (let ((?x98 (ite (> (- (- A_2 L_1) I_2) B) (- (- A_2 I_2) B) L_1)))
 (= L_2 ?x98)))
(assert
 (let ((?x105 (ite (> (- (- A_3 L_2) I_3) B) (- (- A_3 I_3) B) L_2)))
 (= L_3 ?x105)))
(assert
 (let ((?x112 (ite (> (- (- A_4 L_3) I_4) B) (- (- A_4 I_4) B) L_3)))
 (= L_4 ?x112)))
(assert
 (let ((?x119 (ite (> (- (- A_5 L_4) I_5) B) (- (- A_5 I_5) B) L_4)))
 (= L_5 ?x119)))
(assert
 (let ((?x91 (ite (> (- (- A_1 L_0) I_1) B) (- (- A_1 I_1) B) L_0)))
 (= L_1 ?x91)))
(assert
 (let ((?x98 (ite (> (- (- A_2 L_1) I_2) B) (- (- A_2 I_2) B) L_1)))
 (= L_2 ?x98)))
(assert
 (let ((?x105 (ite (> (- (- A_3 L_2) I_3) B) (- (- A_3 I_3) B) L_2)))
 (= L_3 ?x105)))
(assert
 (let ((?x112 (ite (> (- (- A_4 L_3) I_4) B) (- (- A_4 I_4) B) L_3)))
 (= L_4 ?x112)))
(assert
 (let ((?x119 (ite (> (- (- A_5 L_4) I_5) B) (- (- A_5 I_5) B) L_4)))
 (= L_5 ?x119)))
(assert
 (let ((?x124 (- A_1 L_1)))
 (let ((?x122 (* C 1.0)))
 (let ((?x123 (+ I_0 ?x122)))
 (= I_1 (ite (< ?x123 ?x124) ?x123 ?x124))))))
(assert
 (let ((?x129 (- A_2 L_2)))
 (let ((?x122 (* C 1.0)))
 (let ((?x128 (+ I_1 ?x122)))
 (= I_2 (ite (< ?x128 ?x129) ?x128 ?x129))))))
(assert
 (let ((?x134 (- A_3 L_3)))
 (let ((?x122 (* C 1.0)))
 (let ((?x133 (+ I_2 ?x122)))
 (= I_3 (ite (< ?x133 ?x134) ?x133 ?x134))))))
(assert
 (let ((?x139 (- A_4 L_4)))
 (let ((?x122 (* C 1.0)))
 (let ((?x138 (+ I_3 ?x122)))
 (= I_4 (ite (< ?x138 ?x139) ?x138 ?x139))))))
(assert
 (let ((?x144 (- A_5 L_5)))
 (let ((?x122 (* C 1.0)))
 (let ((?x143 (+ I_4 ?x122)))
 (= I_5 (ite (< ?x143 ?x144) ?x143 ?x144))))))
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
 (>= S_5 I_4))
(assert
 (>= S_5 S_4))
(assert
 (<= S_5 I_5))
(assert
 (>= A_1 (+ A_0 a)))
(assert
 (>= A_2 (+ A_1 a)))
(assert
 (>= A_3 (+ A_2 a)))
(assert
 (>= A_4 (+ A_3 a)))
(assert
 (>= A_5 (+ A_4 a)))
(assert
 (>= Ld_1 Ld_0))
(assert
 (>= Ld_2 Ld_1))
(assert
 (>= Ld_3 Ld_2))
(assert
 (>= Ld_4 Ld_3))
(assert
 (>= Ld_5 Ld_4))
(assert
 (let ((?x79 (- A_0 L_0)))
 (let ((?x181 (+ ?x79 a)))
 (let (($x182 (>= S_0 ?x181)))
 (=> $x182 (>= Ld_0 L_0))))))
(assert
 (let (($x186 (<= Ld_0 L_0)))
 (=> (not (>= S_0 (+ (- A_0 L_0) a))) $x186)))
(assert
 (<= Ld_0 L_0))
(assert
 (let ((?x124 (- A_1 L_1)))
 (let ((?x188 (+ ?x124 a)))
 (let (($x189 (>= S_1 ?x188)))
 (=> $x189 (>= Ld_1 L_1))))))
(assert
 (let (($x193 (<= Ld_1 L_1)))
 (=> (not (>= S_1 (+ (- A_1 L_1) a))) $x193)))
(assert
 (let ((?x79 (- A_0 L_0)))
 (let ((?x181 (+ ?x79 a)))
 (let (($x195 (>= S_1 ?x181)))
 (=> $x195 (>= Ld_1 L_0))))))
(assert
 (=> (not (>= S_1 (+ (- A_0 L_0) a))) (<= Ld_1 L_0)))
(assert
 (<= Ld_0 Ld_1))
(assert
 (<= Ld_1 L_1))
(assert
 (let ((?x129 (- A_2 L_2)))
 (let ((?x202 (+ ?x129 a)))
 (let (($x203 (>= S_2 ?x202)))
 (=> $x203 (>= Ld_2 L_2))))))
(assert
 (let (($x207 (<= Ld_2 L_2)))
 (=> (not (>= S_2 (+ (- A_2 L_2) a))) $x207)))
(assert
 (let ((?x124 (- A_1 L_1)))
 (let ((?x188 (+ ?x124 a)))
 (let (($x209 (>= S_2 ?x188)))
 (=> $x209 (>= Ld_2 L_1))))))
(assert
 (=> (not (>= S_2 (+ (- A_1 L_1) a))) (<= Ld_2 L_1)))
(assert
 (let ((?x79 (- A_0 L_0)))
 (let ((?x181 (+ ?x79 a)))
 (let (($x215 (>= S_2 ?x181)))
 (=> $x215 (>= Ld_2 L_0))))))
(assert
 (=> (not (>= S_2 (+ (- A_0 L_0) a))) (<= Ld_2 L_0)))
(assert
 (<= Ld_1 Ld_2))
(assert
 (<= Ld_2 L_2))
(assert
 (let ((?x134 (- A_3 L_3)))
 (let ((?x222 (+ ?x134 a)))
 (let (($x223 (>= S_3 ?x222)))
 (=> $x223 (>= Ld_3 L_3))))))
(assert
 (let (($x227 (<= Ld_3 L_3)))
 (=> (not (>= S_3 (+ (- A_3 L_3) a))) $x227)))
(assert
 (let ((?x129 (- A_2 L_2)))
 (let ((?x202 (+ ?x129 a)))
 (let (($x229 (>= S_3 ?x202)))
 (=> $x229 (>= Ld_3 L_2))))))
(assert
 (=> (not (>= S_3 (+ (- A_2 L_2) a))) (<= Ld_3 L_2)))
(assert
 (let ((?x124 (- A_1 L_1)))
 (let ((?x188 (+ ?x124 a)))
 (let (($x235 (>= S_3 ?x188)))
 (=> $x235 (>= Ld_3 L_1))))))
(assert
 (=> (not (>= S_3 (+ (- A_1 L_1) a))) (<= Ld_3 L_1)))
(assert
 (let ((?x79 (- A_0 L_0)))
 (let ((?x181 (+ ?x79 a)))
 (let (($x241 (>= S_3 ?x181)))
 (=> $x241 (>= Ld_3 L_0))))))
(assert
 (=> (not (>= S_3 (+ (- A_0 L_0) a))) (<= Ld_3 L_0)))
(assert
 (<= Ld_2 Ld_3))
(assert
 (<= Ld_3 L_3))
(assert
 (let ((?x139 (- A_4 L_4)))
 (let ((?x248 (+ ?x139 a)))
 (let (($x249 (>= S_4 ?x248)))
 (=> $x249 (>= Ld_4 L_4))))))
(assert
 (let (($x253 (<= Ld_4 L_4)))
 (=> (not (>= S_4 (+ (- A_4 L_4) a))) $x253)))
(assert
 (let ((?x134 (- A_3 L_3)))
 (let ((?x222 (+ ?x134 a)))
 (let (($x255 (>= S_4 ?x222)))
 (=> $x255 (>= Ld_4 L_3))))))
(assert
 (=> (not (>= S_4 (+ (- A_3 L_3) a))) (<= Ld_4 L_3)))
(assert
 (let ((?x129 (- A_2 L_2)))
 (let ((?x202 (+ ?x129 a)))
 (let (($x261 (>= S_4 ?x202)))
 (=> $x261 (>= Ld_4 L_2))))))
(assert
 (=> (not (>= S_4 (+ (- A_2 L_2) a))) (<= Ld_4 L_2)))
(assert
 (let ((?x124 (- A_1 L_1)))
 (let ((?x188 (+ ?x124 a)))
 (let (($x267 (>= S_4 ?x188)))
 (=> $x267 (>= Ld_4 L_1))))))
(assert
 (=> (not (>= S_4 (+ (- A_1 L_1) a))) (<= Ld_4 L_1)))
(assert
 (let ((?x79 (- A_0 L_0)))
 (let ((?x181 (+ ?x79 a)))
 (let (($x273 (>= S_4 ?x181)))
 (=> $x273 (>= Ld_4 L_0))))))
(assert
 (=> (not (>= S_4 (+ (- A_0 L_0) a))) (<= Ld_4 L_0)))
(assert
 (<= Ld_3 Ld_4))
(assert
 (<= Ld_4 L_4))
(assert
 (let (($x281 (>= S_5 (+ (- A_5 L_5) a))))
 (=> $x281 (>= Ld_5 L_5))))
(assert
 (let (($x285 (<= Ld_5 L_5)))
 (=> (not (>= S_5 (+ (- A_5 L_5) a))) $x285)))
(assert
 (let ((?x139 (- A_4 L_4)))
 (let ((?x248 (+ ?x139 a)))
 (let (($x287 (>= S_5 ?x248)))
 (=> $x287 (>= Ld_5 L_4))))))
(assert
 (=> (not (>= S_5 (+ (- A_4 L_4) a))) (<= Ld_5 L_4)))
(assert
 (let ((?x134 (- A_3 L_3)))
 (let ((?x222 (+ ?x134 a)))
 (let (($x293 (>= S_5 ?x222)))
 (=> $x293 (>= Ld_5 L_3))))))
(assert
 (=> (not (>= S_5 (+ (- A_3 L_3) a))) (<= Ld_5 L_3)))
(assert
 (let ((?x129 (- A_2 L_2)))
 (let ((?x202 (+ ?x129 a)))
 (let (($x299 (>= S_5 ?x202)))
 (=> $x299 (>= Ld_5 L_2))))))
(assert
 (=> (not (>= S_5 (+ (- A_2 L_2) a))) (<= Ld_5 L_2)))
(assert
 (let ((?x124 (- A_1 L_1)))
 (let ((?x188 (+ ?x124 a)))
 (let (($x305 (>= S_5 ?x188)))
 (=> $x305 (>= Ld_5 L_1))))))
(assert
 (=> (not (>= S_5 (+ (- A_1 L_1) a))) (<= Ld_5 L_1)))
(assert
 (let ((?x79 (- A_0 L_0)))
 (let ((?x181 (+ ?x79 a)))
 (let (($x311 (>= S_5 ?x181)))
 (=> $x311 (>= Ld_5 L_0))))))
(assert
 (=> (not (>= S_5 (+ (- A_0 L_0) a))) (<= Ld_5 L_0)))
(assert
 (<= Ld_4 Ld_5))
(assert
 (<= Ld_5 L_5))
(assert
 (let (($x322 (= |qdel_1,0| (and (< (- A_0 L_0) S_1) (>= (- A_1 L_1) S_1)))))
 (=> (and (distinct S_1 S_0) true) $x322)))
(assert
 (let (($x325 (= |qdel_1,0| |qdel_0,0|)))
 (let (($x324 (= S_1 S_0)))
 (=> $x324 $x325))))
(assert
 (let (($x331 (= |qdel_2,0| (and (< (- A_1 L_1) S_2) (>= (- A_2 L_2) S_2)))))
 (let (($x327 (and (distinct S_2 S_1) true)))
 (=> $x327 $x331))))
(assert
 (let (($x334 (= |qdel_2,0| |qdel_1,0|)))
 (let (($x333 (= S_2 S_1)))
 (=> $x333 $x334))))
(assert
 (let (($x339 (= |qdel_2,1| (and (< (- A_0 L_0) S_2) (>= (- A_1 L_1) S_2)))))
 (let (($x327 (and (distinct S_2 S_1) true)))
 (=> $x327 $x339))))
(assert
 (let (($x341 (= |qdel_2,1| |qdel_1,1|)))
 (let (($x333 (= S_2 S_1)))
 (=> $x333 $x341))))
(assert
 (let (($x347 (= |qdel_3,0| (and (< (- A_2 L_2) S_3) (>= (- A_3 L_3) S_3)))))
 (let (($x343 (and (distinct S_3 S_2) true)))
 (=> $x343 $x347))))
(assert
 (let (($x350 (= |qdel_3,0| |qdel_2,0|)))
 (let (($x349 (= S_3 S_2)))
 (=> $x349 $x350))))
(assert
 (let (($x355 (= |qdel_3,1| (and (< (- A_1 L_1) S_3) (>= (- A_2 L_2) S_3)))))
 (let (($x343 (and (distinct S_3 S_2) true)))
 (=> $x343 $x355))))
(assert
 (let (($x357 (= |qdel_3,1| |qdel_2,1|)))
 (let (($x349 (= S_3 S_2)))
 (=> $x349 $x357))))
(assert
 (let (($x362 (= |qdel_3,2| (and (< (- A_0 L_0) S_3) (>= (- A_1 L_1) S_3)))))
 (let (($x343 (and (distinct S_3 S_2) true)))
 (=> $x343 $x362))))
(assert
 (let (($x364 (= |qdel_3,2| |qdel_2,2|)))
 (let (($x349 (= S_3 S_2)))
 (=> $x349 $x364))))
(assert
 (let (($x370 (= |qdel_4,0| (and (< (- A_3 L_3) S_4) (>= (- A_4 L_4) S_4)))))
 (let (($x366 (and (distinct S_4 S_3) true)))
 (=> $x366 $x370))))
(assert
 (let (($x373 (= |qdel_4,0| |qdel_3,0|)))
 (let (($x372 (= S_4 S_3)))
 (=> $x372 $x373))))
(assert
 (let (($x378 (= |qdel_4,1| (and (< (- A_2 L_2) S_4) (>= (- A_3 L_3) S_4)))))
 (let (($x366 (and (distinct S_4 S_3) true)))
 (=> $x366 $x378))))
(assert
 (let (($x380 (= |qdel_4,1| |qdel_3,1|)))
 (let (($x372 (= S_4 S_3)))
 (=> $x372 $x380))))
(assert
 (let (($x385 (= |qdel_4,2| (and (< (- A_1 L_1) S_4) (>= (- A_2 L_2) S_4)))))
 (let (($x366 (and (distinct S_4 S_3) true)))
 (=> $x366 $x385))))
(assert
 (let (($x387 (= |qdel_4,2| |qdel_3,2|)))
 (let (($x372 (= S_4 S_3)))
 (=> $x372 $x387))))
(assert
 (let (($x392 (= |qdel_4,3| (and (< (- A_0 L_0) S_4) (>= (- A_1 L_1) S_4)))))
 (let (($x366 (and (distinct S_4 S_3) true)))
 (=> $x366 $x392))))
(assert
 (let (($x394 (= |qdel_4,3| |qdel_3,3|)))
 (let (($x372 (= S_4 S_3)))
 (=> $x372 $x394))))
(assert
 (let (($x400 (= |qdel_5,0| (and (< (- A_4 L_4) S_5) (>= (- A_5 L_5) S_5)))))
 (let (($x396 (and (distinct S_5 S_4) true)))
 (=> $x396 $x400))))
(assert
 (let (($x403 (= |qdel_5,0| |qdel_4,0|)))
 (let (($x402 (= S_5 S_4)))
 (=> $x402 $x403))))
(assert
 (let (($x408 (= |qdel_5,1| (and (< (- A_3 L_3) S_5) (>= (- A_4 L_4) S_5)))))
 (let (($x396 (and (distinct S_5 S_4) true)))
 (=> $x396 $x408))))
(assert
 (let (($x410 (= |qdel_5,1| |qdel_4,1|)))
 (let (($x402 (= S_5 S_4)))
 (=> $x402 $x410))))
(assert
 (let (($x415 (= |qdel_5,2| (and (< (- A_2 L_2) S_5) (>= (- A_3 L_3) S_5)))))
 (let (($x396 (and (distinct S_5 S_4) true)))
 (=> $x396 $x415))))
(assert
 (let (($x417 (= |qdel_5,2| |qdel_4,2|)))
 (let (($x402 (= S_5 S_4)))
 (=> $x402 $x417))))
(assert
 (let (($x422 (= |qdel_5,3| (and (< (- A_1 L_1) S_5) (>= (- A_2 L_2) S_5)))))
 (let (($x396 (and (distinct S_5 S_4) true)))
 (=> $x396 $x422))))
(assert
 (let (($x424 (= |qdel_5,3| |qdel_4,3|)))
 (let (($x402 (= S_5 S_4)))
 (=> $x402 $x424))))
(assert
 (let (($x429 (= |qdel_5,4| (and (< (- A_0 L_0) S_5) (>= (- A_1 L_1) S_5)))))
 (let (($x396 (and (distinct S_5 S_4) true)))
 (=> $x396 $x429))))
(assert
 (let (($x431 (= |qdel_5,4| |qdel_4,4|)))
 (let (($x402 (= S_5 S_4)))
 (=> $x402 $x431))))
(assert
 (let ((?x441 (+ (ite |qdel_0,0| 1 0) (ite |qdel_0,1| 1 0) (ite |qdel_0,2| 1 0) (ite |qdel_0,3| 1 0) (ite |qdel_0,4| 1 0) (ite |qdel_0,5| 1 0))))
 (<= ?x441 1)))
(assert
 (let ((?x449 (+ (ite |qdel_1,0| 1 0) (ite |qdel_1,1| 1 0) (ite |qdel_1,2| 1 0) (ite |qdel_1,3| 1 0) (ite |qdel_1,4| 1 0) (ite |qdel_1,5| 1 0))))
 (<= ?x449 1)))
(assert
 (let ((?x457 (+ (ite |qdel_2,0| 1 0) (ite |qdel_2,1| 1 0) (ite |qdel_2,2| 1 0) (ite |qdel_2,3| 1 0) (ite |qdel_2,4| 1 0) (ite |qdel_2,5| 1 0))))
 (<= ?x457 1)))
(assert
 (let ((?x465 (+ (ite |qdel_3,0| 1 0) (ite |qdel_3,1| 1 0) (ite |qdel_3,2| 1 0) (ite |qdel_3,3| 1 0) (ite |qdel_3,4| 1 0) (ite |qdel_3,5| 1 0))))
 (<= ?x465 1)))
(assert
 (let ((?x473 (+ (ite |qdel_4,0| 1 0) (ite |qdel_4,1| 1 0) (ite |qdel_4,2| 1 0) (ite |qdel_4,3| 1 0) (ite |qdel_4,4| 1 0) (ite |qdel_4,5| 1 0))))
 (<= ?x473 1)))
(assert
 (let ((?x481 (+ (ite |qdel_5,0| 1 0) (ite |qdel_5,1| 1 0) (ite |qdel_5,2| 1 0) (ite |qdel_5,3| 1 0) (ite |qdel_5,4| 1 0) (ite |qdel_5,5| 1 0))))
 (<= ?x481 1)))
(assert
 (let (($x483 (= |qdel_1,1| |qdel_0,1|)))
 (let (($x324 (= S_1 S_0)))
 (=> $x324 $x483))))
(assert
 (let (($x485 (= |qdel_1,2| |qdel_0,2|)))
 (let (($x324 (= S_1 S_0)))
 (=> $x324 $x485))))
(assert
 (let (($x487 (= |qdel_1,3| |qdel_0,3|)))
 (let (($x324 (= S_1 S_0)))
 (=> $x324 $x487))))
(assert
 (let (($x489 (= |qdel_1,4| |qdel_0,4|)))
 (let (($x324 (= S_1 S_0)))
 (=> $x324 $x489))))
(assert
 (let (($x491 (= |qdel_1,5| |qdel_0,5|)))
 (let (($x324 (= S_1 S_0)))
 (=> $x324 $x491))))
(assert
 (let (($x493 (= |qdel_2,2| |qdel_1,2|)))
 (let (($x333 (= S_2 S_1)))
 (=> $x333 $x493))))
(assert
 (let (($x495 (= |qdel_2,3| |qdel_1,3|)))
 (let (($x333 (= S_2 S_1)))
 (=> $x333 $x495))))
(assert
 (let (($x497 (= |qdel_2,4| |qdel_1,4|)))
 (let (($x333 (= S_2 S_1)))
 (=> $x333 $x497))))
(assert
 (let (($x499 (= |qdel_2,5| |qdel_1,5|)))
 (let (($x333 (= S_2 S_1)))
 (=> $x333 $x499))))
(assert
 (let (($x501 (= |qdel_3,3| |qdel_2,3|)))
 (let (($x349 (= S_3 S_2)))
 (=> $x349 $x501))))
(assert
 (let (($x503 (= |qdel_3,4| |qdel_2,4|)))
 (let (($x349 (= S_3 S_2)))
 (=> $x349 $x503))))
(assert
 (let (($x505 (= |qdel_3,5| |qdel_2,5|)))
 (let (($x349 (= S_3 S_2)))
 (=> $x349 $x505))))
(assert
 (let (($x507 (= |qdel_4,4| |qdel_3,4|)))
 (let (($x372 (= S_4 S_3)))
 (=> $x372 $x507))))
(assert
 (let (($x509 (= |qdel_4,5| |qdel_3,5|)))
 (let (($x372 (= S_4 S_3)))
 (=> $x372 $x509))))
(assert
 (let (($x511 (= |qdel_5,5| |qdel_4,5|)))
 (let (($x402 (= S_5 S_4)))
 (=> $x402 $x511))))
(assert
 (let (($x516 (not |qdel_1,5|)))
 (let (($x515 (not |qdel_1,4|)))
 (let (($x514 (not |qdel_1,3|)))
 (let (($x513 (not |qdel_1,2|)))
 (let (($x517 (and $x513 $x514 $x515 $x516)))
 (=> |qdel_0,0| $x517)))))))
(assert
 (=> |qdel_0,0| (or |qdel_1,0| |qdel_1,1|)))
(assert
 (let (($x516 (not |qdel_1,5|)))
 (let (($x515 (not |qdel_1,4|)))
 (let (($x514 (not |qdel_1,3|)))
 (let (($x521 (and $x514 $x515 $x516)))
 (=> |qdel_0,1| $x521))))))
(assert
 (=> |qdel_0,1| (or |qdel_1,0| |qdel_1,1| |qdel_1,2|)))
(assert
 (let (($x516 (not |qdel_1,5|)))
 (let (($x515 (not |qdel_1,4|)))
 (let (($x525 (and $x515 $x516)))
 (=> |qdel_0,2| $x525)))))
(assert
 (=> |qdel_0,2| (or |qdel_1,0| |qdel_1,1| |qdel_1,2| |qdel_1,3|)))
(assert
 (=> |qdel_0,3| (and (not |qdel_1,5|))))
(assert
 (=> |qdel_0,3| (or |qdel_1,0| |qdel_1,1| |qdel_1,2| |qdel_1,3| |qdel_1,4|)))
(assert
 (=> |qdel_0,4| and))
(assert
 (let (($x535 (or |qdel_1,0| |qdel_1,1| |qdel_1,2| |qdel_1,3| |qdel_1,4| |qdel_1,5|)))
 (=> |qdel_0,4| $x535)))
(assert
 (=> |qdel_0,5| and))
(assert
 (let (($x535 (or |qdel_1,0| |qdel_1,1| |qdel_1,2| |qdel_1,3| |qdel_1,4| |qdel_1,5|)))
 (=> |qdel_0,5| $x535)))
(assert
 (let (($x542 (not |qdel_2,5|)))
 (let (($x541 (not |qdel_2,4|)))
 (let (($x540 (not |qdel_2,3|)))
 (let (($x539 (not |qdel_2,2|)))
 (let (($x543 (and $x539 $x540 $x541 $x542)))
 (=> |qdel_1,0| $x543)))))))
(assert
 (=> |qdel_1,0| (or |qdel_2,0| |qdel_2,1|)))
(assert
 (let (($x542 (not |qdel_2,5|)))
 (let (($x541 (not |qdel_2,4|)))
 (let (($x540 (not |qdel_2,3|)))
 (let (($x547 (and $x540 $x541 $x542)))
 (=> |qdel_1,1| $x547))))))
(assert
 (=> |qdel_1,1| (or |qdel_2,0| |qdel_2,1| |qdel_2,2|)))
(assert
 (let (($x542 (not |qdel_2,5|)))
 (let (($x541 (not |qdel_2,4|)))
 (let (($x551 (and $x541 $x542)))
 (=> |qdel_1,2| $x551)))))
(assert
 (=> |qdel_1,2| (or |qdel_2,0| |qdel_2,1| |qdel_2,2| |qdel_2,3|)))
(assert
 (=> |qdel_1,3| (and (not |qdel_2,5|))))
(assert
 (=> |qdel_1,3| (or |qdel_2,0| |qdel_2,1| |qdel_2,2| |qdel_2,3| |qdel_2,4|)))
(assert
 (=> |qdel_1,4| and))
(assert
 (let (($x560 (or |qdel_2,0| |qdel_2,1| |qdel_2,2| |qdel_2,3| |qdel_2,4| |qdel_2,5|)))
 (=> |qdel_1,4| $x560)))
(assert
 (=> |qdel_1,5| and))
(assert
 (let (($x560 (or |qdel_2,0| |qdel_2,1| |qdel_2,2| |qdel_2,3| |qdel_2,4| |qdel_2,5|)))
 (=> |qdel_1,5| $x560)))
(assert
 (let (($x567 (not |qdel_3,5|)))
 (let (($x566 (not |qdel_3,4|)))
 (let (($x565 (not |qdel_3,3|)))
 (let (($x564 (not |qdel_3,2|)))
 (let (($x568 (and $x564 $x565 $x566 $x567)))
 (=> |qdel_2,0| $x568)))))))
(assert
 (=> |qdel_2,0| (or |qdel_3,0| |qdel_3,1|)))
(assert
 (let (($x567 (not |qdel_3,5|)))
 (let (($x566 (not |qdel_3,4|)))
 (let (($x565 (not |qdel_3,3|)))
 (let (($x572 (and $x565 $x566 $x567)))
 (=> |qdel_2,1| $x572))))))
(assert
 (=> |qdel_2,1| (or |qdel_3,0| |qdel_3,1| |qdel_3,2|)))
(assert
 (let (($x567 (not |qdel_3,5|)))
 (let (($x566 (not |qdel_3,4|)))
 (let (($x576 (and $x566 $x567)))
 (=> |qdel_2,2| $x576)))))
(assert
 (=> |qdel_2,2| (or |qdel_3,0| |qdel_3,1| |qdel_3,2| |qdel_3,3|)))
(assert
 (=> |qdel_2,3| (and (not |qdel_3,5|))))
(assert
 (=> |qdel_2,3| (or |qdel_3,0| |qdel_3,1| |qdel_3,2| |qdel_3,3| |qdel_3,4|)))
(assert
 (=> |qdel_2,4| and))
(assert
 (let (($x585 (or |qdel_3,0| |qdel_3,1| |qdel_3,2| |qdel_3,3| |qdel_3,4| |qdel_3,5|)))
 (=> |qdel_2,4| $x585)))
(assert
 (=> |qdel_2,5| and))
(assert
 (let (($x585 (or |qdel_3,0| |qdel_3,1| |qdel_3,2| |qdel_3,3| |qdel_3,4| |qdel_3,5|)))
 (=> |qdel_2,5| $x585)))
(assert
 (let (($x592 (not |qdel_4,5|)))
 (let (($x591 (not |qdel_4,4|)))
 (let (($x590 (not |qdel_4,3|)))
 (let (($x589 (not |qdel_4,2|)))
 (let (($x593 (and $x589 $x590 $x591 $x592)))
 (=> |qdel_3,0| $x593)))))))
(assert
 (=> |qdel_3,0| (or |qdel_4,0| |qdel_4,1|)))
(assert
 (let (($x592 (not |qdel_4,5|)))
 (let (($x591 (not |qdel_4,4|)))
 (let (($x590 (not |qdel_4,3|)))
 (let (($x597 (and $x590 $x591 $x592)))
 (=> |qdel_3,1| $x597))))))
(assert
 (=> |qdel_3,1| (or |qdel_4,0| |qdel_4,1| |qdel_4,2|)))
(assert
 (let (($x592 (not |qdel_4,5|)))
 (let (($x591 (not |qdel_4,4|)))
 (let (($x601 (and $x591 $x592)))
 (=> |qdel_3,2| $x601)))))
(assert
 (=> |qdel_3,2| (or |qdel_4,0| |qdel_4,1| |qdel_4,2| |qdel_4,3|)))
(assert
 (=> |qdel_3,3| (and (not |qdel_4,5|))))
(assert
 (=> |qdel_3,3| (or |qdel_4,0| |qdel_4,1| |qdel_4,2| |qdel_4,3| |qdel_4,4|)))
(assert
 (=> |qdel_3,4| and))
(assert
 (let (($x610 (or |qdel_4,0| |qdel_4,1| |qdel_4,2| |qdel_4,3| |qdel_4,4| |qdel_4,5|)))
 (=> |qdel_3,4| $x610)))
(assert
 (=> |qdel_3,5| and))
(assert
 (let (($x610 (or |qdel_4,0| |qdel_4,1| |qdel_4,2| |qdel_4,3| |qdel_4,4| |qdel_4,5|)))
 (=> |qdel_3,5| $x610)))
(assert
 (let (($x617 (not |qdel_5,5|)))
 (let (($x616 (not |qdel_5,4|)))
 (let (($x615 (not |qdel_5,3|)))
 (let (($x618 (and (not |qdel_5,2|) $x615 $x616 $x617)))
 (=> |qdel_4,0| $x618))))))
(assert
 (=> |qdel_4,0| (or |qdel_5,0| |qdel_5,1|)))
(assert
 (let (($x617 (not |qdel_5,5|)))
 (let (($x616 (not |qdel_5,4|)))
 (let (($x615 (not |qdel_5,3|)))
 (let (($x622 (and $x615 $x616 $x617)))
 (=> |qdel_4,1| $x622))))))
(assert
 (=> |qdel_4,1| (or |qdel_5,0| |qdel_5,1| |qdel_5,2|)))
(assert
 (let (($x617 (not |qdel_5,5|)))
 (let (($x616 (not |qdel_5,4|)))
 (let (($x626 (and $x616 $x617)))
 (=> |qdel_4,2| $x626)))))
(assert
 (=> |qdel_4,2| (or |qdel_5,0| |qdel_5,1| |qdel_5,2| |qdel_5,3|)))
(assert
 (=> |qdel_4,3| (and (not |qdel_5,5|))))
(assert
 (=> |qdel_4,3| (or |qdel_5,0| |qdel_5,1| |qdel_5,2| |qdel_5,3| |qdel_5,4|)))
(assert
 (=> |qdel_4,4| and))
(assert
 (let (($x635 (or |qdel_5,0| |qdel_5,1| |qdel_5,2| |qdel_5,3| |qdel_5,4| |qdel_5,5|)))
 (=> |qdel_4,4| $x635)))
(assert
 (=> |qdel_4,5| and))
(assert
 (let (($x635 (or |qdel_5,0| |qdel_5,1| |qdel_5,2| |qdel_5,3| |qdel_5,4| |qdel_5,5|)))
 (=> |qdel_4,5| $x635)))
(assert
 (= a 1.0))
(check-sat)
