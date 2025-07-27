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
(declare-fun I_6 () Real)
(declare-fun A_6 () Real)
(declare-fun L_6 () Real)
(declare-fun I_7 () Real)
(declare-fun A_7 () Real)
(declare-fun L_7 () Real)
(declare-fun S_0 () Real)
(declare-fun S_1 () Real)
(declare-fun S_2 () Real)
(declare-fun S_3 () Real)
(declare-fun S_4 () Real)
(declare-fun S_5 () Real)
(declare-fun S_6 () Real)
(declare-fun S_7 () Real)
(declare-fun Ld_1 () Real)
(declare-fun Ld_2 () Real)
(declare-fun Ld_3 () Real)
(declare-fun Ld_4 () Real)
(declare-fun Ld_5 () Real)
(declare-fun Ld_6 () Real)
(declare-fun Ld_7 () Real)
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
(declare-fun |qdel_6,0| () Bool)
(declare-fun |qdel_6,1| () Bool)
(declare-fun |qdel_6,2| () Bool)
(declare-fun |qdel_6,3| () Bool)
(declare-fun |qdel_6,4| () Bool)
(declare-fun |qdel_6,5| () Bool)
(declare-fun |qdel_5,5| () Bool)
(declare-fun |qdel_7,0| () Bool)
(declare-fun |qdel_7,1| () Bool)
(declare-fun |qdel_7,2| () Bool)
(declare-fun |qdel_7,3| () Bool)
(declare-fun |qdel_7,4| () Bool)
(declare-fun |qdel_7,5| () Bool)
(declare-fun |qdel_7,6| () Bool)
(declare-fun |qdel_6,6| () Bool)
(declare-fun |qdel_0,7| () Bool)
(declare-fun |qdel_0,6| () Bool)
(declare-fun |qdel_0,5| () Bool)
(declare-fun |qdel_0,4| () Bool)
(declare-fun |qdel_0,3| () Bool)
(declare-fun |qdel_0,2| () Bool)
(declare-fun |qdel_0,1| () Bool)
(declare-fun |qdel_1,7| () Bool)
(declare-fun |qdel_1,6| () Bool)
(declare-fun |qdel_1,5| () Bool)
(declare-fun |qdel_1,4| () Bool)
(declare-fun |qdel_1,3| () Bool)
(declare-fun |qdel_1,2| () Bool)
(declare-fun |qdel_2,7| () Bool)
(declare-fun |qdel_2,6| () Bool)
(declare-fun |qdel_2,5| () Bool)
(declare-fun |qdel_2,4| () Bool)
(declare-fun |qdel_2,3| () Bool)
(declare-fun |qdel_3,7| () Bool)
(declare-fun |qdel_3,6| () Bool)
(declare-fun |qdel_3,5| () Bool)
(declare-fun |qdel_3,4| () Bool)
(declare-fun |qdel_4,7| () Bool)
(declare-fun |qdel_4,6| () Bool)
(declare-fun |qdel_4,5| () Bool)
(declare-fun |qdel_5,7| () Bool)
(declare-fun |qdel_5,6| () Bool)
(declare-fun |qdel_6,7| () Bool)
(declare-fun |qdel_7,7| () Bool)
(assert
 (> C 0.0))
(assert
 (> B 0.0))
(assert
 (>= L_0 0.0))
(assert
 (>= Ld_0 0.0))
(assert
 (let ((?x117 (- A_0 L_0)))
 (<= I_0 ?x117)))
(assert
 (<= a (/ C 5.0)))
(assert
 (< a C))
(assert
 (> a 0.0))
(assert
 (let ((?x129 (ite (> (- (- A_1 L_0) I_1) B) (- (- A_1 I_1) B) L_0)))
 (= L_1 ?x129)))
(assert
 (let ((?x136 (ite (> (- (- A_2 L_1) I_2) B) (- (- A_2 I_2) B) L_1)))
 (= L_2 ?x136)))
(assert
 (let ((?x143 (ite (> (- (- A_3 L_2) I_3) B) (- (- A_3 I_3) B) L_2)))
 (= L_3 ?x143)))
(assert
 (let ((?x150 (ite (> (- (- A_4 L_3) I_4) B) (- (- A_4 I_4) B) L_3)))
 (= L_4 ?x150)))
(assert
 (let ((?x157 (ite (> (- (- A_5 L_4) I_5) B) (- (- A_5 I_5) B) L_4)))
 (= L_5 ?x157)))
(assert
 (let ((?x164 (ite (> (- (- A_6 L_5) I_6) B) (- (- A_6 I_6) B) L_5)))
 (= L_6 ?x164)))
(assert
 (let ((?x171 (ite (> (- (- A_7 L_6) I_7) B) (- (- A_7 I_7) B) L_6)))
 (= L_7 ?x171)))
(assert
 (let ((?x129 (ite (> (- (- A_1 L_0) I_1) B) (- (- A_1 I_1) B) L_0)))
 (= L_1 ?x129)))
(assert
 (let ((?x136 (ite (> (- (- A_2 L_1) I_2) B) (- (- A_2 I_2) B) L_1)))
 (= L_2 ?x136)))
(assert
 (let ((?x143 (ite (> (- (- A_3 L_2) I_3) B) (- (- A_3 I_3) B) L_2)))
 (= L_3 ?x143)))
(assert
 (let ((?x150 (ite (> (- (- A_4 L_3) I_4) B) (- (- A_4 I_4) B) L_3)))
 (= L_4 ?x150)))
(assert
 (let ((?x157 (ite (> (- (- A_5 L_4) I_5) B) (- (- A_5 I_5) B) L_4)))
 (= L_5 ?x157)))
(assert
 (let ((?x164 (ite (> (- (- A_6 L_5) I_6) B) (- (- A_6 I_6) B) L_5)))
 (= L_6 ?x164)))
(assert
 (let ((?x171 (ite (> (- (- A_7 L_6) I_7) B) (- (- A_7 I_7) B) L_6)))
 (= L_7 ?x171)))
(assert
 (let ((?x176 (- A_1 L_1)))
 (let ((?x174 (* C 1.0)))
 (let ((?x175 (+ I_0 ?x174)))
 (= I_1 (ite (< ?x175 ?x176) ?x175 ?x176))))))
(assert
 (let ((?x181 (- A_2 L_2)))
 (let ((?x174 (* C 1.0)))
 (let ((?x180 (+ I_1 ?x174)))
 (= I_2 (ite (< ?x180 ?x181) ?x180 ?x181))))))
(assert
 (let ((?x186 (- A_3 L_3)))
 (let ((?x174 (* C 1.0)))
 (let ((?x185 (+ I_2 ?x174)))
 (= I_3 (ite (< ?x185 ?x186) ?x185 ?x186))))))
(assert
 (let ((?x191 (- A_4 L_4)))
 (let ((?x174 (* C 1.0)))
 (let ((?x190 (+ I_3 ?x174)))
 (= I_4 (ite (< ?x190 ?x191) ?x190 ?x191))))))
(assert
 (let ((?x196 (- A_5 L_5)))
 (let ((?x174 (* C 1.0)))
 (let ((?x195 (+ I_4 ?x174)))
 (= I_5 (ite (< ?x195 ?x196) ?x195 ?x196))))))
(assert
 (let ((?x201 (- A_6 L_6)))
 (let ((?x174 (* C 1.0)))
 (let ((?x200 (+ I_5 ?x174)))
 (= I_6 (ite (< ?x200 ?x201) ?x200 ?x201))))))
(assert
 (let ((?x206 (- A_7 L_7)))
 (let ((?x174 (* C 1.0)))
 (let ((?x205 (+ I_6 ?x174)))
 (= I_7 (ite (< ?x205 ?x206) ?x205 ?x206))))))
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
 (>= S_6 I_5))
(assert
 (>= S_6 S_5))
(assert
 (<= S_6 I_6))
(assert
 (>= S_7 I_6))
(assert
 (>= S_7 S_6))
(assert
 (<= S_7 I_7))
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
 (>= A_6 (+ A_5 a)))
(assert
 (>= A_7 (+ A_6 a)))
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
 (>= Ld_6 Ld_5))
(assert
 (>= Ld_7 Ld_6))
(assert
 (let ((?x117 (- A_0 L_0)))
 (let ((?x255 (+ ?x117 a)))
 (let (($x256 (>= S_0 ?x255)))
 (=> $x256 (>= Ld_0 L_0))))))
(assert
 (let (($x260 (<= Ld_0 L_0)))
 (=> (not (>= S_0 (+ (- A_0 L_0) a))) $x260)))
(assert
 (<= Ld_0 L_0))
(assert
 (let ((?x176 (- A_1 L_1)))
 (let ((?x262 (+ ?x176 a)))
 (let (($x263 (>= S_1 ?x262)))
 (=> $x263 (>= Ld_1 L_1))))))
(assert
 (let (($x267 (<= Ld_1 L_1)))
 (=> (not (>= S_1 (+ (- A_1 L_1) a))) $x267)))
(assert
 (let ((?x117 (- A_0 L_0)))
 (let ((?x255 (+ ?x117 a)))
 (let (($x269 (>= S_1 ?x255)))
 (=> $x269 (>= Ld_1 L_0))))))
(assert
 (=> (not (>= S_1 (+ (- A_0 L_0) a))) (<= Ld_1 L_0)))
(assert
 (<= Ld_0 Ld_1))
(assert
 (<= Ld_1 L_1))
(assert
 (let ((?x181 (- A_2 L_2)))
 (let ((?x276 (+ ?x181 a)))
 (let (($x277 (>= S_2 ?x276)))
 (=> $x277 (>= Ld_2 L_2))))))
(assert
 (let (($x281 (<= Ld_2 L_2)))
 (=> (not (>= S_2 (+ (- A_2 L_2) a))) $x281)))
(assert
 (let ((?x176 (- A_1 L_1)))
 (let ((?x262 (+ ?x176 a)))
 (let (($x283 (>= S_2 ?x262)))
 (=> $x283 (>= Ld_2 L_1))))))
(assert
 (=> (not (>= S_2 (+ (- A_1 L_1) a))) (<= Ld_2 L_1)))
(assert
 (let ((?x117 (- A_0 L_0)))
 (let ((?x255 (+ ?x117 a)))
 (let (($x289 (>= S_2 ?x255)))
 (=> $x289 (>= Ld_2 L_0))))))
(assert
 (=> (not (>= S_2 (+ (- A_0 L_0) a))) (<= Ld_2 L_0)))
(assert
 (<= Ld_1 Ld_2))
(assert
 (<= Ld_2 L_2))
(assert
 (let ((?x186 (- A_3 L_3)))
 (let ((?x296 (+ ?x186 a)))
 (let (($x297 (>= S_3 ?x296)))
 (=> $x297 (>= Ld_3 L_3))))))
(assert
 (let (($x301 (<= Ld_3 L_3)))
 (=> (not (>= S_3 (+ (- A_3 L_3) a))) $x301)))
(assert
 (let ((?x181 (- A_2 L_2)))
 (let ((?x276 (+ ?x181 a)))
 (let (($x303 (>= S_3 ?x276)))
 (=> $x303 (>= Ld_3 L_2))))))
(assert
 (=> (not (>= S_3 (+ (- A_2 L_2) a))) (<= Ld_3 L_2)))
(assert
 (let ((?x176 (- A_1 L_1)))
 (let ((?x262 (+ ?x176 a)))
 (let (($x309 (>= S_3 ?x262)))
 (=> $x309 (>= Ld_3 L_1))))))
(assert
 (=> (not (>= S_3 (+ (- A_1 L_1) a))) (<= Ld_3 L_1)))
(assert
 (let ((?x117 (- A_0 L_0)))
 (let ((?x255 (+ ?x117 a)))
 (let (($x315 (>= S_3 ?x255)))
 (=> $x315 (>= Ld_3 L_0))))))
(assert
 (=> (not (>= S_3 (+ (- A_0 L_0) a))) (<= Ld_3 L_0)))
(assert
 (<= Ld_2 Ld_3))
(assert
 (<= Ld_3 L_3))
(assert
 (let ((?x191 (- A_4 L_4)))
 (let ((?x322 (+ ?x191 a)))
 (let (($x323 (>= S_4 ?x322)))
 (=> $x323 (>= Ld_4 L_4))))))
(assert
 (let (($x327 (<= Ld_4 L_4)))
 (=> (not (>= S_4 (+ (- A_4 L_4) a))) $x327)))
(assert
 (let ((?x186 (- A_3 L_3)))
 (let ((?x296 (+ ?x186 a)))
 (let (($x329 (>= S_4 ?x296)))
 (=> $x329 (>= Ld_4 L_3))))))
(assert
 (=> (not (>= S_4 (+ (- A_3 L_3) a))) (<= Ld_4 L_3)))
(assert
 (let ((?x181 (- A_2 L_2)))
 (let ((?x276 (+ ?x181 a)))
 (let (($x335 (>= S_4 ?x276)))
 (=> $x335 (>= Ld_4 L_2))))))
(assert
 (=> (not (>= S_4 (+ (- A_2 L_2) a))) (<= Ld_4 L_2)))
(assert
 (let ((?x176 (- A_1 L_1)))
 (let ((?x262 (+ ?x176 a)))
 (let (($x341 (>= S_4 ?x262)))
 (=> $x341 (>= Ld_4 L_1))))))
(assert
 (=> (not (>= S_4 (+ (- A_1 L_1) a))) (<= Ld_4 L_1)))
(assert
 (let ((?x117 (- A_0 L_0)))
 (let ((?x255 (+ ?x117 a)))
 (let (($x347 (>= S_4 ?x255)))
 (=> $x347 (>= Ld_4 L_0))))))
(assert
 (=> (not (>= S_4 (+ (- A_0 L_0) a))) (<= Ld_4 L_0)))
(assert
 (<= Ld_3 Ld_4))
(assert
 (<= Ld_4 L_4))
(assert
 (let ((?x196 (- A_5 L_5)))
 (let ((?x354 (+ ?x196 a)))
 (let (($x355 (>= S_5 ?x354)))
 (=> $x355 (>= Ld_5 L_5))))))
(assert
 (let (($x359 (<= Ld_5 L_5)))
 (=> (not (>= S_5 (+ (- A_5 L_5) a))) $x359)))
(assert
 (let ((?x191 (- A_4 L_4)))
 (let ((?x322 (+ ?x191 a)))
 (let (($x361 (>= S_5 ?x322)))
 (=> $x361 (>= Ld_5 L_4))))))
(assert
 (=> (not (>= S_5 (+ (- A_4 L_4) a))) (<= Ld_5 L_4)))
(assert
 (let ((?x186 (- A_3 L_3)))
 (let ((?x296 (+ ?x186 a)))
 (let (($x367 (>= S_5 ?x296)))
 (=> $x367 (>= Ld_5 L_3))))))
(assert
 (=> (not (>= S_5 (+ (- A_3 L_3) a))) (<= Ld_5 L_3)))
(assert
 (let ((?x181 (- A_2 L_2)))
 (let ((?x276 (+ ?x181 a)))
 (let (($x373 (>= S_5 ?x276)))
 (=> $x373 (>= Ld_5 L_2))))))
(assert
 (=> (not (>= S_5 (+ (- A_2 L_2) a))) (<= Ld_5 L_2)))
(assert
 (let ((?x176 (- A_1 L_1)))
 (let ((?x262 (+ ?x176 a)))
 (let (($x379 (>= S_5 ?x262)))
 (=> $x379 (>= Ld_5 L_1))))))
(assert
 (=> (not (>= S_5 (+ (- A_1 L_1) a))) (<= Ld_5 L_1)))
(assert
 (let ((?x117 (- A_0 L_0)))
 (let ((?x255 (+ ?x117 a)))
 (let (($x385 (>= S_5 ?x255)))
 (=> $x385 (>= Ld_5 L_0))))))
(assert
 (=> (not (>= S_5 (+ (- A_0 L_0) a))) (<= Ld_5 L_0)))
(assert
 (<= Ld_4 Ld_5))
(assert
 (<= Ld_5 L_5))
(assert
 (let ((?x201 (- A_6 L_6)))
 (let ((?x392 (+ ?x201 a)))
 (let (($x393 (>= S_6 ?x392)))
 (=> $x393 (>= Ld_6 L_6))))))
(assert
 (let (($x397 (<= Ld_6 L_6)))
 (=> (not (>= S_6 (+ (- A_6 L_6) a))) $x397)))
(assert
 (let ((?x196 (- A_5 L_5)))
 (let ((?x354 (+ ?x196 a)))
 (let (($x399 (>= S_6 ?x354)))
 (=> $x399 (>= Ld_6 L_5))))))
(assert
 (=> (not (>= S_6 (+ (- A_5 L_5) a))) (<= Ld_6 L_5)))
(assert
 (let ((?x191 (- A_4 L_4)))
 (let ((?x322 (+ ?x191 a)))
 (let (($x405 (>= S_6 ?x322)))
 (=> $x405 (>= Ld_6 L_4))))))
(assert
 (=> (not (>= S_6 (+ (- A_4 L_4) a))) (<= Ld_6 L_4)))
(assert
 (let ((?x186 (- A_3 L_3)))
 (let ((?x296 (+ ?x186 a)))
 (let (($x411 (>= S_6 ?x296)))
 (=> $x411 (>= Ld_6 L_3))))))
(assert
 (=> (not (>= S_6 (+ (- A_3 L_3) a))) (<= Ld_6 L_3)))
(assert
 (let ((?x181 (- A_2 L_2)))
 (let ((?x276 (+ ?x181 a)))
 (let (($x417 (>= S_6 ?x276)))
 (=> $x417 (>= Ld_6 L_2))))))
(assert
 (=> (not (>= S_6 (+ (- A_2 L_2) a))) (<= Ld_6 L_2)))
(assert
 (let ((?x176 (- A_1 L_1)))
 (let ((?x262 (+ ?x176 a)))
 (let (($x423 (>= S_6 ?x262)))
 (=> $x423 (>= Ld_6 L_1))))))
(assert
 (=> (not (>= S_6 (+ (- A_1 L_1) a))) (<= Ld_6 L_1)))
(assert
 (let ((?x117 (- A_0 L_0)))
 (let ((?x255 (+ ?x117 a)))
 (let (($x429 (>= S_6 ?x255)))
 (=> $x429 (>= Ld_6 L_0))))))
(assert
 (=> (not (>= S_6 (+ (- A_0 L_0) a))) (<= Ld_6 L_0)))
(assert
 (<= Ld_5 Ld_6))
(assert
 (<= Ld_6 L_6))
(assert
 (let (($x437 (>= S_7 (+ (- A_7 L_7) a))))
 (=> $x437 (>= Ld_7 L_7))))
(assert
 (let (($x441 (<= Ld_7 L_7)))
 (=> (not (>= S_7 (+ (- A_7 L_7) a))) $x441)))
(assert
 (let ((?x201 (- A_6 L_6)))
 (let ((?x392 (+ ?x201 a)))
 (let (($x443 (>= S_7 ?x392)))
 (=> $x443 (>= Ld_7 L_6))))))
(assert
 (=> (not (>= S_7 (+ (- A_6 L_6) a))) (<= Ld_7 L_6)))
(assert
 (let ((?x196 (- A_5 L_5)))
 (let ((?x354 (+ ?x196 a)))
 (let (($x449 (>= S_7 ?x354)))
 (=> $x449 (>= Ld_7 L_5))))))
(assert
 (=> (not (>= S_7 (+ (- A_5 L_5) a))) (<= Ld_7 L_5)))
(assert
 (let ((?x191 (- A_4 L_4)))
 (let ((?x322 (+ ?x191 a)))
 (let (($x455 (>= S_7 ?x322)))
 (=> $x455 (>= Ld_7 L_4))))))
(assert
 (=> (not (>= S_7 (+ (- A_4 L_4) a))) (<= Ld_7 L_4)))
(assert
 (let ((?x186 (- A_3 L_3)))
 (let ((?x296 (+ ?x186 a)))
 (let (($x461 (>= S_7 ?x296)))
 (=> $x461 (>= Ld_7 L_3))))))
(assert
 (=> (not (>= S_7 (+ (- A_3 L_3) a))) (<= Ld_7 L_3)))
(assert
 (let ((?x181 (- A_2 L_2)))
 (let ((?x276 (+ ?x181 a)))
 (let (($x467 (>= S_7 ?x276)))
 (=> $x467 (>= Ld_7 L_2))))))
(assert
 (=> (not (>= S_7 (+ (- A_2 L_2) a))) (<= Ld_7 L_2)))
(assert
 (let ((?x176 (- A_1 L_1)))
 (let ((?x262 (+ ?x176 a)))
 (let (($x473 (>= S_7 ?x262)))
 (=> $x473 (>= Ld_7 L_1))))))
(assert
 (=> (not (>= S_7 (+ (- A_1 L_1) a))) (<= Ld_7 L_1)))
(assert
 (let ((?x117 (- A_0 L_0)))
 (let ((?x255 (+ ?x117 a)))
 (let (($x479 (>= S_7 ?x255)))
 (=> $x479 (>= Ld_7 L_0))))))
(assert
 (=> (not (>= S_7 (+ (- A_0 L_0) a))) (<= Ld_7 L_0)))
(assert
 (<= Ld_6 Ld_7))
(assert
 (<= Ld_7 L_7))
(assert
 (let (($x490 (= |qdel_1,0| (and (< (- A_0 L_0) S_1) (>= (- A_1 L_1) S_1)))))
 (=> (and (distinct S_1 S_0) true) $x490)))
(assert
 (let (($x493 (= |qdel_1,0| |qdel_0,0|)))
 (let (($x492 (= S_1 S_0)))
 (=> $x492 $x493))))
(assert
 (let (($x499 (= |qdel_2,0| (and (< (- A_1 L_1) S_2) (>= (- A_2 L_2) S_2)))))
 (let (($x495 (and (distinct S_2 S_1) true)))
 (=> $x495 $x499))))
(assert
 (let (($x502 (= |qdel_2,0| |qdel_1,0|)))
 (let (($x501 (= S_2 S_1)))
 (=> $x501 $x502))))
(assert
 (let (($x507 (= |qdel_2,1| (and (< (- A_0 L_0) S_2) (>= (- A_1 L_1) S_2)))))
 (let (($x495 (and (distinct S_2 S_1) true)))
 (=> $x495 $x507))))
(assert
 (let (($x509 (= |qdel_2,1| |qdel_1,1|)))
 (let (($x501 (= S_2 S_1)))
 (=> $x501 $x509))))
(assert
 (let (($x515 (= |qdel_3,0| (and (< (- A_2 L_2) S_3) (>= (- A_3 L_3) S_3)))))
 (let (($x511 (and (distinct S_3 S_2) true)))
 (=> $x511 $x515))))
(assert
 (let (($x518 (= |qdel_3,0| |qdel_2,0|)))
 (let (($x517 (= S_3 S_2)))
 (=> $x517 $x518))))
(assert
 (let (($x523 (= |qdel_3,1| (and (< (- A_1 L_1) S_3) (>= (- A_2 L_2) S_3)))))
 (let (($x511 (and (distinct S_3 S_2) true)))
 (=> $x511 $x523))))
(assert
 (let (($x525 (= |qdel_3,1| |qdel_2,1|)))
 (let (($x517 (= S_3 S_2)))
 (=> $x517 $x525))))
(assert
 (let (($x530 (= |qdel_3,2| (and (< (- A_0 L_0) S_3) (>= (- A_1 L_1) S_3)))))
 (let (($x511 (and (distinct S_3 S_2) true)))
 (=> $x511 $x530))))
(assert
 (let (($x532 (= |qdel_3,2| |qdel_2,2|)))
 (let (($x517 (= S_3 S_2)))
 (=> $x517 $x532))))
(assert
 (let (($x538 (= |qdel_4,0| (and (< (- A_3 L_3) S_4) (>= (- A_4 L_4) S_4)))))
 (let (($x534 (and (distinct S_4 S_3) true)))
 (=> $x534 $x538))))
(assert
 (let (($x541 (= |qdel_4,0| |qdel_3,0|)))
 (let (($x540 (= S_4 S_3)))
 (=> $x540 $x541))))
(assert
 (let (($x546 (= |qdel_4,1| (and (< (- A_2 L_2) S_4) (>= (- A_3 L_3) S_4)))))
 (let (($x534 (and (distinct S_4 S_3) true)))
 (=> $x534 $x546))))
(assert
 (let (($x548 (= |qdel_4,1| |qdel_3,1|)))
 (let (($x540 (= S_4 S_3)))
 (=> $x540 $x548))))
(assert
 (let (($x553 (= |qdel_4,2| (and (< (- A_1 L_1) S_4) (>= (- A_2 L_2) S_4)))))
 (let (($x534 (and (distinct S_4 S_3) true)))
 (=> $x534 $x553))))
(assert
 (let (($x555 (= |qdel_4,2| |qdel_3,2|)))
 (let (($x540 (= S_4 S_3)))
 (=> $x540 $x555))))
(assert
 (let (($x560 (= |qdel_4,3| (and (< (- A_0 L_0) S_4) (>= (- A_1 L_1) S_4)))))
 (let (($x534 (and (distinct S_4 S_3) true)))
 (=> $x534 $x560))))
(assert
 (let (($x562 (= |qdel_4,3| |qdel_3,3|)))
 (let (($x540 (= S_4 S_3)))
 (=> $x540 $x562))))
(assert
 (let (($x568 (= |qdel_5,0| (and (< (- A_4 L_4) S_5) (>= (- A_5 L_5) S_5)))))
 (let (($x564 (and (distinct S_5 S_4) true)))
 (=> $x564 $x568))))
(assert
 (let (($x571 (= |qdel_5,0| |qdel_4,0|)))
 (let (($x570 (= S_5 S_4)))
 (=> $x570 $x571))))
(assert
 (let (($x576 (= |qdel_5,1| (and (< (- A_3 L_3) S_5) (>= (- A_4 L_4) S_5)))))
 (let (($x564 (and (distinct S_5 S_4) true)))
 (=> $x564 $x576))))
(assert
 (let (($x578 (= |qdel_5,1| |qdel_4,1|)))
 (let (($x570 (= S_5 S_4)))
 (=> $x570 $x578))))
(assert
 (let (($x583 (= |qdel_5,2| (and (< (- A_2 L_2) S_5) (>= (- A_3 L_3) S_5)))))
 (let (($x564 (and (distinct S_5 S_4) true)))
 (=> $x564 $x583))))
(assert
 (let (($x585 (= |qdel_5,2| |qdel_4,2|)))
 (let (($x570 (= S_5 S_4)))
 (=> $x570 $x585))))
(assert
 (let (($x590 (= |qdel_5,3| (and (< (- A_1 L_1) S_5) (>= (- A_2 L_2) S_5)))))
 (let (($x564 (and (distinct S_5 S_4) true)))
 (=> $x564 $x590))))
(assert
 (let (($x592 (= |qdel_5,3| |qdel_4,3|)))
 (let (($x570 (= S_5 S_4)))
 (=> $x570 $x592))))
(assert
 (let (($x597 (= |qdel_5,4| (and (< (- A_0 L_0) S_5) (>= (- A_1 L_1) S_5)))))
 (let (($x564 (and (distinct S_5 S_4) true)))
 (=> $x564 $x597))))
(assert
 (let (($x599 (= |qdel_5,4| |qdel_4,4|)))
 (let (($x570 (= S_5 S_4)))
 (=> $x570 $x599))))
(assert
 (let (($x605 (= |qdel_6,0| (and (< (- A_5 L_5) S_6) (>= (- A_6 L_6) S_6)))))
 (let (($x601 (and (distinct S_6 S_5) true)))
 (=> $x601 $x605))))
(assert
 (let (($x608 (= |qdel_6,0| |qdel_5,0|)))
 (let (($x607 (= S_6 S_5)))
 (=> $x607 $x608))))
(assert
 (let (($x613 (= |qdel_6,1| (and (< (- A_4 L_4) S_6) (>= (- A_5 L_5) S_6)))))
 (let (($x601 (and (distinct S_6 S_5) true)))
 (=> $x601 $x613))))
(assert
 (let (($x615 (= |qdel_6,1| |qdel_5,1|)))
 (let (($x607 (= S_6 S_5)))
 (=> $x607 $x615))))
(assert
 (let (($x620 (= |qdel_6,2| (and (< (- A_3 L_3) S_6) (>= (- A_4 L_4) S_6)))))
 (let (($x601 (and (distinct S_6 S_5) true)))
 (=> $x601 $x620))))
(assert
 (let (($x622 (= |qdel_6,2| |qdel_5,2|)))
 (let (($x607 (= S_6 S_5)))
 (=> $x607 $x622))))
(assert
 (let (($x627 (= |qdel_6,3| (and (< (- A_2 L_2) S_6) (>= (- A_3 L_3) S_6)))))
 (let (($x601 (and (distinct S_6 S_5) true)))
 (=> $x601 $x627))))
(assert
 (let (($x629 (= |qdel_6,3| |qdel_5,3|)))
 (let (($x607 (= S_6 S_5)))
 (=> $x607 $x629))))
(assert
 (let (($x634 (= |qdel_6,4| (and (< (- A_1 L_1) S_6) (>= (- A_2 L_2) S_6)))))
 (let (($x601 (and (distinct S_6 S_5) true)))
 (=> $x601 $x634))))
(assert
 (let (($x636 (= |qdel_6,4| |qdel_5,4|)))
 (let (($x607 (= S_6 S_5)))
 (=> $x607 $x636))))
(assert
 (let (($x641 (= |qdel_6,5| (and (< (- A_0 L_0) S_6) (>= (- A_1 L_1) S_6)))))
 (let (($x601 (and (distinct S_6 S_5) true)))
 (=> $x601 $x641))))
(assert
 (let (($x643 (= |qdel_6,5| |qdel_5,5|)))
 (let (($x607 (= S_6 S_5)))
 (=> $x607 $x643))))
(assert
 (let (($x649 (= |qdel_7,0| (and (< (- A_6 L_6) S_7) (>= (- A_7 L_7) S_7)))))
 (let (($x645 (and (distinct S_7 S_6) true)))
 (=> $x645 $x649))))
(assert
 (let (($x652 (= |qdel_7,0| |qdel_6,0|)))
 (let (($x651 (= S_7 S_6)))
 (=> $x651 $x652))))
(assert
 (let (($x657 (= |qdel_7,1| (and (< (- A_5 L_5) S_7) (>= (- A_6 L_6) S_7)))))
 (let (($x645 (and (distinct S_7 S_6) true)))
 (=> $x645 $x657))))
(assert
 (let (($x659 (= |qdel_7,1| |qdel_6,1|)))
 (let (($x651 (= S_7 S_6)))
 (=> $x651 $x659))))
(assert
 (let (($x664 (= |qdel_7,2| (and (< (- A_4 L_4) S_7) (>= (- A_5 L_5) S_7)))))
 (let (($x645 (and (distinct S_7 S_6) true)))
 (=> $x645 $x664))))
(assert
 (let (($x666 (= |qdel_7,2| |qdel_6,2|)))
 (let (($x651 (= S_7 S_6)))
 (=> $x651 $x666))))
(assert
 (let (($x671 (= |qdel_7,3| (and (< (- A_3 L_3) S_7) (>= (- A_4 L_4) S_7)))))
 (let (($x645 (and (distinct S_7 S_6) true)))
 (=> $x645 $x671))))
(assert
 (let (($x673 (= |qdel_7,3| |qdel_6,3|)))
 (let (($x651 (= S_7 S_6)))
 (=> $x651 $x673))))
(assert
 (let (($x678 (= |qdel_7,4| (and (< (- A_2 L_2) S_7) (>= (- A_3 L_3) S_7)))))
 (let (($x645 (and (distinct S_7 S_6) true)))
 (=> $x645 $x678))))
(assert
 (let (($x680 (= |qdel_7,4| |qdel_6,4|)))
 (let (($x651 (= S_7 S_6)))
 (=> $x651 $x680))))
(assert
 (let (($x685 (= |qdel_7,5| (and (< (- A_1 L_1) S_7) (>= (- A_2 L_2) S_7)))))
 (let (($x645 (and (distinct S_7 S_6) true)))
 (=> $x645 $x685))))
(assert
 (let (($x687 (= |qdel_7,5| |qdel_6,5|)))
 (let (($x651 (= S_7 S_6)))
 (=> $x651 $x687))))
(assert
 (let (($x692 (= |qdel_7,6| (and (< (- A_0 L_0) S_7) (>= (- A_1 L_1) S_7)))))
 (let (($x645 (and (distinct S_7 S_6) true)))
 (=> $x645 $x692))))
(assert
 (let (($x694 (= |qdel_7,6| |qdel_6,6|)))
 (let (($x651 (= S_7 S_6)))
 (=> $x651 $x694))))
(assert
 (let ((?x706 (+ (ite |qdel_0,0| 1 0) (ite |qdel_0,1| 1 0) (ite |qdel_0,2| 1 0) (ite |qdel_0,3| 1 0) (ite |qdel_0,4| 1 0) (ite |qdel_0,5| 1 0) (ite |qdel_0,6| 1 0) (ite |qdel_0,7| 1 0))))
 (<= ?x706 1)))
(assert
 (let ((?x716 (+ (ite |qdel_1,0| 1 0) (ite |qdel_1,1| 1 0) (ite |qdel_1,2| 1 0) (ite |qdel_1,3| 1 0) (ite |qdel_1,4| 1 0) (ite |qdel_1,5| 1 0) (ite |qdel_1,6| 1 0) (ite |qdel_1,7| 1 0))))
 (<= ?x716 1)))
(assert
 (let ((?x726 (+ (ite |qdel_2,0| 1 0) (ite |qdel_2,1| 1 0) (ite |qdel_2,2| 1 0) (ite |qdel_2,3| 1 0) (ite |qdel_2,4| 1 0) (ite |qdel_2,5| 1 0) (ite |qdel_2,6| 1 0) (ite |qdel_2,7| 1 0))))
 (<= ?x726 1)))
(assert
 (let ((?x736 (+ (ite |qdel_3,0| 1 0) (ite |qdel_3,1| 1 0) (ite |qdel_3,2| 1 0) (ite |qdel_3,3| 1 0) (ite |qdel_3,4| 1 0) (ite |qdel_3,5| 1 0) (ite |qdel_3,6| 1 0) (ite |qdel_3,7| 1 0))))
 (<= ?x736 1)))
(assert
 (let ((?x746 (+ (ite |qdel_4,0| 1 0) (ite |qdel_4,1| 1 0) (ite |qdel_4,2| 1 0) (ite |qdel_4,3| 1 0) (ite |qdel_4,4| 1 0) (ite |qdel_4,5| 1 0) (ite |qdel_4,6| 1 0) (ite |qdel_4,7| 1 0))))
 (<= ?x746 1)))
(assert
 (let ((?x756 (+ (ite |qdel_5,0| 1 0) (ite |qdel_5,1| 1 0) (ite |qdel_5,2| 1 0) (ite |qdel_5,3| 1 0) (ite |qdel_5,4| 1 0) (ite |qdel_5,5| 1 0) (ite |qdel_5,6| 1 0) (ite |qdel_5,7| 1 0))))
 (<= ?x756 1)))
(assert
 (let ((?x766 (+ (ite |qdel_6,0| 1 0) (ite |qdel_6,1| 1 0) (ite |qdel_6,2| 1 0) (ite |qdel_6,3| 1 0) (ite |qdel_6,4| 1 0) (ite |qdel_6,5| 1 0) (ite |qdel_6,6| 1 0) (ite |qdel_6,7| 1 0))))
 (<= ?x766 1)))
(assert
 (let ((?x776 (+ (ite |qdel_7,0| 1 0) (ite |qdel_7,1| 1 0) (ite |qdel_7,2| 1 0) (ite |qdel_7,3| 1 0) (ite |qdel_7,4| 1 0) (ite |qdel_7,5| 1 0) (ite |qdel_7,6| 1 0) (ite |qdel_7,7| 1 0))))
 (<= ?x776 1)))
(assert
 (let (($x778 (= |qdel_1,1| |qdel_0,1|)))
 (let (($x492 (= S_1 S_0)))
 (=> $x492 $x778))))
(assert
 (let (($x780 (= |qdel_1,2| |qdel_0,2|)))
 (let (($x492 (= S_1 S_0)))
 (=> $x492 $x780))))
(assert
 (let (($x782 (= |qdel_1,3| |qdel_0,3|)))
 (let (($x492 (= S_1 S_0)))
 (=> $x492 $x782))))
(assert
 (let (($x784 (= |qdel_1,4| |qdel_0,4|)))
 (let (($x492 (= S_1 S_0)))
 (=> $x492 $x784))))
(assert
 (let (($x786 (= |qdel_1,5| |qdel_0,5|)))
 (let (($x492 (= S_1 S_0)))
 (=> $x492 $x786))))
(assert
 (let (($x788 (= |qdel_1,6| |qdel_0,6|)))
 (let (($x492 (= S_1 S_0)))
 (=> $x492 $x788))))
(assert
 (let (($x790 (= |qdel_1,7| |qdel_0,7|)))
 (let (($x492 (= S_1 S_0)))
 (=> $x492 $x790))))
(assert
 (let (($x792 (= |qdel_2,2| |qdel_1,2|)))
 (let (($x501 (= S_2 S_1)))
 (=> $x501 $x792))))
(assert
 (let (($x794 (= |qdel_2,3| |qdel_1,3|)))
 (let (($x501 (= S_2 S_1)))
 (=> $x501 $x794))))
(assert
 (let (($x796 (= |qdel_2,4| |qdel_1,4|)))
 (let (($x501 (= S_2 S_1)))
 (=> $x501 $x796))))
(assert
 (let (($x798 (= |qdel_2,5| |qdel_1,5|)))
 (let (($x501 (= S_2 S_1)))
 (=> $x501 $x798))))
(assert
 (let (($x800 (= |qdel_2,6| |qdel_1,6|)))
 (let (($x501 (= S_2 S_1)))
 (=> $x501 $x800))))
(assert
 (let (($x802 (= |qdel_2,7| |qdel_1,7|)))
 (let (($x501 (= S_2 S_1)))
 (=> $x501 $x802))))
(assert
 (let (($x804 (= |qdel_3,3| |qdel_2,3|)))
 (let (($x517 (= S_3 S_2)))
 (=> $x517 $x804))))
(assert
 (let (($x806 (= |qdel_3,4| |qdel_2,4|)))
 (let (($x517 (= S_3 S_2)))
 (=> $x517 $x806))))
(assert
 (let (($x808 (= |qdel_3,5| |qdel_2,5|)))
 (let (($x517 (= S_3 S_2)))
 (=> $x517 $x808))))
(assert
 (let (($x810 (= |qdel_3,6| |qdel_2,6|)))
 (let (($x517 (= S_3 S_2)))
 (=> $x517 $x810))))
(assert
 (let (($x812 (= |qdel_3,7| |qdel_2,7|)))
 (let (($x517 (= S_3 S_2)))
 (=> $x517 $x812))))
(assert
 (let (($x814 (= |qdel_4,4| |qdel_3,4|)))
 (let (($x540 (= S_4 S_3)))
 (=> $x540 $x814))))
(assert
 (let (($x816 (= |qdel_4,5| |qdel_3,5|)))
 (let (($x540 (= S_4 S_3)))
 (=> $x540 $x816))))
(assert
 (let (($x818 (= |qdel_4,6| |qdel_3,6|)))
 (let (($x540 (= S_4 S_3)))
 (=> $x540 $x818))))
(assert
 (let (($x820 (= |qdel_4,7| |qdel_3,7|)))
 (let (($x540 (= S_4 S_3)))
 (=> $x540 $x820))))
(assert
 (let (($x822 (= |qdel_5,5| |qdel_4,5|)))
 (let (($x570 (= S_5 S_4)))
 (=> $x570 $x822))))
(assert
 (let (($x824 (= |qdel_5,6| |qdel_4,6|)))
 (let (($x570 (= S_5 S_4)))
 (=> $x570 $x824))))
(assert
 (let (($x826 (= |qdel_5,7| |qdel_4,7|)))
 (let (($x570 (= S_5 S_4)))
 (=> $x570 $x826))))
(assert
 (let (($x828 (= |qdel_6,6| |qdel_5,6|)))
 (let (($x607 (= S_6 S_5)))
 (=> $x607 $x828))))
(assert
 (let (($x830 (= |qdel_6,7| |qdel_5,7|)))
 (let (($x607 (= S_6 S_5)))
 (=> $x607 $x830))))
(assert
 (let (($x832 (= |qdel_7,7| |qdel_6,7|)))
 (let (($x651 (= S_7 S_6)))
 (=> $x651 $x832))))
(assert
 (let (($x839 (not |qdel_1,7|)))
 (let (($x838 (not |qdel_1,6|)))
 (let (($x837 (not |qdel_1,5|)))
 (let (($x836 (not |qdel_1,4|)))
 (let (($x835 (not |qdel_1,3|)))
 (let (($x834 (not |qdel_1,2|)))
 (let (($x840 (and $x834 $x835 $x836 $x837 $x838 $x839)))
 (=> |qdel_0,0| $x840)))))))))
(assert
 (=> |qdel_0,0| (or |qdel_1,0| |qdel_1,1|)))
(assert
 (let (($x839 (not |qdel_1,7|)))
 (let (($x838 (not |qdel_1,6|)))
 (let (($x837 (not |qdel_1,5|)))
 (let (($x836 (not |qdel_1,4|)))
 (let (($x835 (not |qdel_1,3|)))
 (let (($x844 (and $x835 $x836 $x837 $x838 $x839)))
 (=> |qdel_0,1| $x844))))))))
(assert
 (=> |qdel_0,1| (or |qdel_1,0| |qdel_1,1| |qdel_1,2|)))
(assert
 (let (($x839 (not |qdel_1,7|)))
 (let (($x838 (not |qdel_1,6|)))
 (let (($x837 (not |qdel_1,5|)))
 (let (($x836 (not |qdel_1,4|)))
 (let (($x848 (and $x836 $x837 $x838 $x839)))
 (=> |qdel_0,2| $x848)))))))
(assert
 (=> |qdel_0,2| (or |qdel_1,0| |qdel_1,1| |qdel_1,2| |qdel_1,3|)))
(assert
 (let (($x839 (not |qdel_1,7|)))
 (let (($x838 (not |qdel_1,6|)))
 (let (($x837 (not |qdel_1,5|)))
 (let (($x852 (and $x837 $x838 $x839)))
 (=> |qdel_0,3| $x852))))))
(assert
 (=> |qdel_0,3| (or |qdel_1,0| |qdel_1,1| |qdel_1,2| |qdel_1,3| |qdel_1,4|)))
(assert
 (let (($x839 (not |qdel_1,7|)))
 (let (($x838 (not |qdel_1,6|)))
 (let (($x856 (and $x838 $x839)))
 (=> |qdel_0,4| $x856)))))
(assert
 (=> |qdel_0,4| (or |qdel_1,0| |qdel_1,1| |qdel_1,2| |qdel_1,3| |qdel_1,4| |qdel_1,5|)))
(assert
 (=> |qdel_0,5| (and (not |qdel_1,7|))))
(assert
 (let (($x862 (or |qdel_1,0| |qdel_1,1| |qdel_1,2| |qdel_1,3| |qdel_1,4| |qdel_1,5| |qdel_1,6|)))
 (=> |qdel_0,5| $x862)))
(assert
 (=> |qdel_0,6| and))
(assert
 (let (($x866 (or |qdel_1,0| |qdel_1,1| |qdel_1,2| |qdel_1,3| |qdel_1,4| |qdel_1,5| |qdel_1,6| |qdel_1,7|)))
 (=> |qdel_0,6| $x866)))
(assert
 (=> |qdel_0,7| and))
(assert
 (let (($x866 (or |qdel_1,0| |qdel_1,1| |qdel_1,2| |qdel_1,3| |qdel_1,4| |qdel_1,5| |qdel_1,6| |qdel_1,7|)))
 (=> |qdel_0,7| $x866)))
(assert
 (let (($x875 (not |qdel_2,7|)))
 (let (($x874 (not |qdel_2,6|)))
 (let (($x873 (not |qdel_2,5|)))
 (let (($x872 (not |qdel_2,4|)))
 (let (($x871 (not |qdel_2,3|)))
 (let (($x870 (not |qdel_2,2|)))
 (let (($x876 (and $x870 $x871 $x872 $x873 $x874 $x875)))
 (=> |qdel_1,0| $x876)))))))))
(assert
 (=> |qdel_1,0| (or |qdel_2,0| |qdel_2,1|)))
(assert
 (let (($x875 (not |qdel_2,7|)))
 (let (($x874 (not |qdel_2,6|)))
 (let (($x873 (not |qdel_2,5|)))
 (let (($x872 (not |qdel_2,4|)))
 (let (($x871 (not |qdel_2,3|)))
 (let (($x880 (and $x871 $x872 $x873 $x874 $x875)))
 (=> |qdel_1,1| $x880))))))))
(assert
 (=> |qdel_1,1| (or |qdel_2,0| |qdel_2,1| |qdel_2,2|)))
(assert
 (let (($x875 (not |qdel_2,7|)))
 (let (($x874 (not |qdel_2,6|)))
 (let (($x873 (not |qdel_2,5|)))
 (let (($x872 (not |qdel_2,4|)))
 (let (($x884 (and $x872 $x873 $x874 $x875)))
 (=> |qdel_1,2| $x884)))))))
(assert
 (=> |qdel_1,2| (or |qdel_2,0| |qdel_2,1| |qdel_2,2| |qdel_2,3|)))
(assert
 (let (($x875 (not |qdel_2,7|)))
 (let (($x874 (not |qdel_2,6|)))
 (let (($x873 (not |qdel_2,5|)))
 (let (($x888 (and $x873 $x874 $x875)))
 (=> |qdel_1,3| $x888))))))
(assert
 (=> |qdel_1,3| (or |qdel_2,0| |qdel_2,1| |qdel_2,2| |qdel_2,3| |qdel_2,4|)))
(assert
 (let (($x875 (not |qdel_2,7|)))
 (let (($x874 (not |qdel_2,6|)))
 (let (($x892 (and $x874 $x875)))
 (=> |qdel_1,4| $x892)))))
(assert
 (=> |qdel_1,4| (or |qdel_2,0| |qdel_2,1| |qdel_2,2| |qdel_2,3| |qdel_2,4| |qdel_2,5|)))
(assert
 (=> |qdel_1,5| (and (not |qdel_2,7|))))
(assert
 (let (($x898 (or |qdel_2,0| |qdel_2,1| |qdel_2,2| |qdel_2,3| |qdel_2,4| |qdel_2,5| |qdel_2,6|)))
 (=> |qdel_1,5| $x898)))
(assert
 (=> |qdel_1,6| and))
(assert
 (let (($x901 (or |qdel_2,0| |qdel_2,1| |qdel_2,2| |qdel_2,3| |qdel_2,4| |qdel_2,5| |qdel_2,6| |qdel_2,7|)))
 (=> |qdel_1,6| $x901)))
(assert
 (=> |qdel_1,7| and))
(assert
 (let (($x901 (or |qdel_2,0| |qdel_2,1| |qdel_2,2| |qdel_2,3| |qdel_2,4| |qdel_2,5| |qdel_2,6| |qdel_2,7|)))
 (=> |qdel_1,7| $x901)))
(assert
 (let (($x910 (not |qdel_3,7|)))
 (let (($x909 (not |qdel_3,6|)))
 (let (($x908 (not |qdel_3,5|)))
 (let (($x907 (not |qdel_3,4|)))
 (let (($x906 (not |qdel_3,3|)))
 (let (($x905 (not |qdel_3,2|)))
 (let (($x911 (and $x905 $x906 $x907 $x908 $x909 $x910)))
 (=> |qdel_2,0| $x911)))))))))
(assert
 (=> |qdel_2,0| (or |qdel_3,0| |qdel_3,1|)))
(assert
 (let (($x910 (not |qdel_3,7|)))
 (let (($x909 (not |qdel_3,6|)))
 (let (($x908 (not |qdel_3,5|)))
 (let (($x907 (not |qdel_3,4|)))
 (let (($x906 (not |qdel_3,3|)))
 (let (($x915 (and $x906 $x907 $x908 $x909 $x910)))
 (=> |qdel_2,1| $x915))))))))
(assert
 (=> |qdel_2,1| (or |qdel_3,0| |qdel_3,1| |qdel_3,2|)))
(assert
 (let (($x910 (not |qdel_3,7|)))
 (let (($x909 (not |qdel_3,6|)))
 (let (($x908 (not |qdel_3,5|)))
 (let (($x907 (not |qdel_3,4|)))
 (let (($x919 (and $x907 $x908 $x909 $x910)))
 (=> |qdel_2,2| $x919)))))))
(assert
 (=> |qdel_2,2| (or |qdel_3,0| |qdel_3,1| |qdel_3,2| |qdel_3,3|)))
(assert
 (let (($x910 (not |qdel_3,7|)))
 (let (($x909 (not |qdel_3,6|)))
 (let (($x908 (not |qdel_3,5|)))
 (let (($x923 (and $x908 $x909 $x910)))
 (=> |qdel_2,3| $x923))))))
(assert
 (=> |qdel_2,3| (or |qdel_3,0| |qdel_3,1| |qdel_3,2| |qdel_3,3| |qdel_3,4|)))
(assert
 (let (($x910 (not |qdel_3,7|)))
 (let (($x909 (not |qdel_3,6|)))
 (let (($x927 (and $x909 $x910)))
 (=> |qdel_2,4| $x927)))))
(assert
 (=> |qdel_2,4| (or |qdel_3,0| |qdel_3,1| |qdel_3,2| |qdel_3,3| |qdel_3,4| |qdel_3,5|)))
(assert
 (=> |qdel_2,5| (and (not |qdel_3,7|))))
(assert
 (let (($x933 (or |qdel_3,0| |qdel_3,1| |qdel_3,2| |qdel_3,3| |qdel_3,4| |qdel_3,5| |qdel_3,6|)))
 (=> |qdel_2,5| $x933)))
(assert
 (=> |qdel_2,6| and))
(assert
 (let (($x936 (or |qdel_3,0| |qdel_3,1| |qdel_3,2| |qdel_3,3| |qdel_3,4| |qdel_3,5| |qdel_3,6| |qdel_3,7|)))
 (=> |qdel_2,6| $x936)))
(assert
 (=> |qdel_2,7| and))
(assert
 (let (($x936 (or |qdel_3,0| |qdel_3,1| |qdel_3,2| |qdel_3,3| |qdel_3,4| |qdel_3,5| |qdel_3,6| |qdel_3,7|)))
 (=> |qdel_2,7| $x936)))
(assert
 (let (($x945 (not |qdel_4,7|)))
 (let (($x944 (not |qdel_4,6|)))
 (let (($x943 (not |qdel_4,5|)))
 (let (($x942 (not |qdel_4,4|)))
 (let (($x941 (not |qdel_4,3|)))
 (let (($x940 (not |qdel_4,2|)))
 (let (($x946 (and $x940 $x941 $x942 $x943 $x944 $x945)))
 (=> |qdel_3,0| $x946)))))))))
(assert
 (=> |qdel_3,0| (or |qdel_4,0| |qdel_4,1|)))
(assert
 (let (($x945 (not |qdel_4,7|)))
 (let (($x944 (not |qdel_4,6|)))
 (let (($x943 (not |qdel_4,5|)))
 (let (($x942 (not |qdel_4,4|)))
 (let (($x941 (not |qdel_4,3|)))
 (let (($x950 (and $x941 $x942 $x943 $x944 $x945)))
 (=> |qdel_3,1| $x950))))))))
(assert
 (=> |qdel_3,1| (or |qdel_4,0| |qdel_4,1| |qdel_4,2|)))
(assert
 (let (($x945 (not |qdel_4,7|)))
 (let (($x944 (not |qdel_4,6|)))
 (let (($x943 (not |qdel_4,5|)))
 (let (($x942 (not |qdel_4,4|)))
 (let (($x954 (and $x942 $x943 $x944 $x945)))
 (=> |qdel_3,2| $x954)))))))
(assert
 (=> |qdel_3,2| (or |qdel_4,0| |qdel_4,1| |qdel_4,2| |qdel_4,3|)))
(assert
 (let (($x945 (not |qdel_4,7|)))
 (let (($x944 (not |qdel_4,6|)))
 (let (($x943 (not |qdel_4,5|)))
 (let (($x958 (and $x943 $x944 $x945)))
 (=> |qdel_3,3| $x958))))))
(assert
 (=> |qdel_3,3| (or |qdel_4,0| |qdel_4,1| |qdel_4,2| |qdel_4,3| |qdel_4,4|)))
(assert
 (let (($x945 (not |qdel_4,7|)))
 (let (($x944 (not |qdel_4,6|)))
 (let (($x962 (and $x944 $x945)))
 (=> |qdel_3,4| $x962)))))
(assert
 (=> |qdel_3,4| (or |qdel_4,0| |qdel_4,1| |qdel_4,2| |qdel_4,3| |qdel_4,4| |qdel_4,5|)))
(assert
 (=> |qdel_3,5| (and (not |qdel_4,7|))))
(assert
 (let (($x968 (or |qdel_4,0| |qdel_4,1| |qdel_4,2| |qdel_4,3| |qdel_4,4| |qdel_4,5| |qdel_4,6|)))
 (=> |qdel_3,5| $x968)))
(assert
 (=> |qdel_3,6| and))
(assert
 (let (($x971 (or |qdel_4,0| |qdel_4,1| |qdel_4,2| |qdel_4,3| |qdel_4,4| |qdel_4,5| |qdel_4,6| |qdel_4,7|)))
 (=> |qdel_3,6| $x971)))
(assert
 (=> |qdel_3,7| and))
(assert
 (let (($x971 (or |qdel_4,0| |qdel_4,1| |qdel_4,2| |qdel_4,3| |qdel_4,4| |qdel_4,5| |qdel_4,6| |qdel_4,7|)))
 (=> |qdel_3,7| $x971)))
(assert
 (let (($x980 (not |qdel_5,7|)))
 (let (($x979 (not |qdel_5,6|)))
 (let (($x978 (not |qdel_5,5|)))
 (let (($x977 (not |qdel_5,4|)))
 (let (($x976 (not |qdel_5,3|)))
 (let (($x975 (not |qdel_5,2|)))
 (let (($x981 (and $x975 $x976 $x977 $x978 $x979 $x980)))
 (=> |qdel_4,0| $x981)))))))))
(assert
 (=> |qdel_4,0| (or |qdel_5,0| |qdel_5,1|)))
(assert
 (let (($x980 (not |qdel_5,7|)))
 (let (($x979 (not |qdel_5,6|)))
 (let (($x978 (not |qdel_5,5|)))
 (let (($x977 (not |qdel_5,4|)))
 (let (($x976 (not |qdel_5,3|)))
 (let (($x985 (and $x976 $x977 $x978 $x979 $x980)))
 (=> |qdel_4,1| $x985))))))))
(assert
 (=> |qdel_4,1| (or |qdel_5,0| |qdel_5,1| |qdel_5,2|)))
(assert
 (let (($x980 (not |qdel_5,7|)))
 (let (($x979 (not |qdel_5,6|)))
 (let (($x978 (not |qdel_5,5|)))
 (let (($x977 (not |qdel_5,4|)))
 (let (($x989 (and $x977 $x978 $x979 $x980)))
 (=> |qdel_4,2| $x989)))))))
(assert
 (=> |qdel_4,2| (or |qdel_5,0| |qdel_5,1| |qdel_5,2| |qdel_5,3|)))
(assert
 (let (($x980 (not |qdel_5,7|)))
 (let (($x979 (not |qdel_5,6|)))
 (let (($x978 (not |qdel_5,5|)))
 (let (($x993 (and $x978 $x979 $x980)))
 (=> |qdel_4,3| $x993))))))
(assert
 (=> |qdel_4,3| (or |qdel_5,0| |qdel_5,1| |qdel_5,2| |qdel_5,3| |qdel_5,4|)))
(assert
 (let (($x980 (not |qdel_5,7|)))
 (let (($x979 (not |qdel_5,6|)))
 (let (($x997 (and $x979 $x980)))
 (=> |qdel_4,4| $x997)))))
(assert
 (=> |qdel_4,4| (or |qdel_5,0| |qdel_5,1| |qdel_5,2| |qdel_5,3| |qdel_5,4| |qdel_5,5|)))
(assert
 (=> |qdel_4,5| (and (not |qdel_5,7|))))
(assert
 (let (($x1003 (or |qdel_5,0| |qdel_5,1| |qdel_5,2| |qdel_5,3| |qdel_5,4| |qdel_5,5| |qdel_5,6|)))
 (=> |qdel_4,5| $x1003)))
(assert
 (=> |qdel_4,6| and))
(assert
 (let (($x1006 (or |qdel_5,0| |qdel_5,1| |qdel_5,2| |qdel_5,3| |qdel_5,4| |qdel_5,5| |qdel_5,6| |qdel_5,7|)))
 (=> |qdel_4,6| $x1006)))
(assert
 (=> |qdel_4,7| and))
(assert
 (let (($x1006 (or |qdel_5,0| |qdel_5,1| |qdel_5,2| |qdel_5,3| |qdel_5,4| |qdel_5,5| |qdel_5,6| |qdel_5,7|)))
 (=> |qdel_4,7| $x1006)))
(assert
 (let (($x1015 (not |qdel_6,7|)))
 (let (($x1014 (not |qdel_6,6|)))
 (let (($x1013 (not |qdel_6,5|)))
 (let (($x1012 (not |qdel_6,4|)))
 (let (($x1011 (not |qdel_6,3|)))
 (let (($x1010 (not |qdel_6,2|)))
 (let (($x1016 (and $x1010 $x1011 $x1012 $x1013 $x1014 $x1015)))
 (=> |qdel_5,0| $x1016)))))))))
(assert
 (=> |qdel_5,0| (or |qdel_6,0| |qdel_6,1|)))
(assert
 (let (($x1015 (not |qdel_6,7|)))
 (let (($x1014 (not |qdel_6,6|)))
 (let (($x1013 (not |qdel_6,5|)))
 (let (($x1012 (not |qdel_6,4|)))
 (let (($x1011 (not |qdel_6,3|)))
 (let (($x1020 (and $x1011 $x1012 $x1013 $x1014 $x1015)))
 (=> |qdel_5,1| $x1020))))))))
(assert
 (=> |qdel_5,1| (or |qdel_6,0| |qdel_6,1| |qdel_6,2|)))
(assert
 (let (($x1015 (not |qdel_6,7|)))
 (let (($x1014 (not |qdel_6,6|)))
 (let (($x1013 (not |qdel_6,5|)))
 (let (($x1012 (not |qdel_6,4|)))
 (let (($x1024 (and $x1012 $x1013 $x1014 $x1015)))
 (=> |qdel_5,2| $x1024)))))))
(assert
 (=> |qdel_5,2| (or |qdel_6,0| |qdel_6,1| |qdel_6,2| |qdel_6,3|)))
(assert
 (let (($x1015 (not |qdel_6,7|)))
 (let (($x1014 (not |qdel_6,6|)))
 (let (($x1013 (not |qdel_6,5|)))
 (let (($x1028 (and $x1013 $x1014 $x1015)))
 (=> |qdel_5,3| $x1028))))))
(assert
 (=> |qdel_5,3| (or |qdel_6,0| |qdel_6,1| |qdel_6,2| |qdel_6,3| |qdel_6,4|)))
(assert
 (let (($x1015 (not |qdel_6,7|)))
 (let (($x1014 (not |qdel_6,6|)))
 (let (($x1032 (and $x1014 $x1015)))
 (=> |qdel_5,4| $x1032)))))
(assert
 (=> |qdel_5,4| (or |qdel_6,0| |qdel_6,1| |qdel_6,2| |qdel_6,3| |qdel_6,4| |qdel_6,5|)))
(assert
 (=> |qdel_5,5| (and (not |qdel_6,7|))))
(assert
 (let (($x1038 (or |qdel_6,0| |qdel_6,1| |qdel_6,2| |qdel_6,3| |qdel_6,4| |qdel_6,5| |qdel_6,6|)))
 (=> |qdel_5,5| $x1038)))
(assert
 (=> |qdel_5,6| and))
(assert
 (let (($x1041 (or |qdel_6,0| |qdel_6,1| |qdel_6,2| |qdel_6,3| |qdel_6,4| |qdel_6,5| |qdel_6,6| |qdel_6,7|)))
 (=> |qdel_5,6| $x1041)))
(assert
 (=> |qdel_5,7| and))
(assert
 (let (($x1041 (or |qdel_6,0| |qdel_6,1| |qdel_6,2| |qdel_6,3| |qdel_6,4| |qdel_6,5| |qdel_6,6| |qdel_6,7|)))
 (=> |qdel_5,7| $x1041)))
(assert
 (let (($x1050 (not |qdel_7,7|)))
 (let (($x1049 (not |qdel_7,6|)))
 (let (($x1048 (not |qdel_7,5|)))
 (let (($x1047 (not |qdel_7,4|)))
 (let (($x1046 (not |qdel_7,3|)))
 (let (($x1051 (and (not |qdel_7,2|) $x1046 $x1047 $x1048 $x1049 $x1050)))
 (=> |qdel_6,0| $x1051))))))))
(assert
 (=> |qdel_6,0| (or |qdel_7,0| |qdel_7,1|)))
(assert
 (let (($x1050 (not |qdel_7,7|)))
 (let (($x1049 (not |qdel_7,6|)))
 (let (($x1048 (not |qdel_7,5|)))
 (let (($x1047 (not |qdel_7,4|)))
 (let (($x1046 (not |qdel_7,3|)))
 (let (($x1055 (and $x1046 $x1047 $x1048 $x1049 $x1050)))
 (=> |qdel_6,1| $x1055))))))))
(assert
 (=> |qdel_6,1| (or |qdel_7,0| |qdel_7,1| |qdel_7,2|)))
(assert
 (let (($x1050 (not |qdel_7,7|)))
 (let (($x1049 (not |qdel_7,6|)))
 (let (($x1048 (not |qdel_7,5|)))
 (let (($x1047 (not |qdel_7,4|)))
 (let (($x1059 (and $x1047 $x1048 $x1049 $x1050)))
 (=> |qdel_6,2| $x1059)))))))
(assert
 (=> |qdel_6,2| (or |qdel_7,0| |qdel_7,1| |qdel_7,2| |qdel_7,3|)))
(assert
 (let (($x1050 (not |qdel_7,7|)))
 (let (($x1049 (not |qdel_7,6|)))
 (let (($x1048 (not |qdel_7,5|)))
 (let (($x1063 (and $x1048 $x1049 $x1050)))
 (=> |qdel_6,3| $x1063))))))
(assert
 (=> |qdel_6,3| (or |qdel_7,0| |qdel_7,1| |qdel_7,2| |qdel_7,3| |qdel_7,4|)))
(assert
 (let (($x1050 (not |qdel_7,7|)))
 (let (($x1049 (not |qdel_7,6|)))
 (let (($x1067 (and $x1049 $x1050)))
 (=> |qdel_6,4| $x1067)))))
(assert
 (=> |qdel_6,4| (or |qdel_7,0| |qdel_7,1| |qdel_7,2| |qdel_7,3| |qdel_7,4| |qdel_7,5|)))
(assert
 (=> |qdel_6,5| (and (not |qdel_7,7|))))
(assert
 (let (($x1073 (or |qdel_7,0| |qdel_7,1| |qdel_7,2| |qdel_7,3| |qdel_7,4| |qdel_7,5| |qdel_7,6|)))
 (=> |qdel_6,5| $x1073)))
(assert
 (=> |qdel_6,6| and))
(assert
 (let (($x1076 (or |qdel_7,0| |qdel_7,1| |qdel_7,2| |qdel_7,3| |qdel_7,4| |qdel_7,5| |qdel_7,6| |qdel_7,7|)))
 (=> |qdel_6,6| $x1076)))
(assert
 (=> |qdel_6,7| and))
(assert
 (let (($x1076 (or |qdel_7,0| |qdel_7,1| |qdel_7,2| |qdel_7,3| |qdel_7,4| |qdel_7,5| |qdel_7,6| |qdel_7,7|)))
 (=> |qdel_6,7| $x1076)))
(assert
 (= a 1.0))
(check-sat)
