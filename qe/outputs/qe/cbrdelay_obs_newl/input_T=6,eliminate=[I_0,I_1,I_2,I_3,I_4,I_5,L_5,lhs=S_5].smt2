; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_4 () Real)
(declare-fun L_4 () Real)
(declare-fun A_4 () Real)
(declare-fun A_5 () Real)
(declare-fun A_3 () Real)
(declare-fun A_2 () Real)
(declare-fun A_1 () Real)
(declare-fun A_0 () Real)
(declare-fun S_5 () Real)
(declare-fun S_3 () Real)
(declare-fun S_2 () Real)
(declare-fun S_1 () Real)
(declare-fun S_0 () Real)
(declare-fun C () Real)
(declare-fun L_3 () Real)
(declare-fun L_2 () Real)
(declare-fun L_1 () Real)
(declare-fun B () Real)
(declare-fun L_0 () Real)
(declare-fun a () Real)
(assert
 (exists ((I_0 Real) (I_1 Real) (I_2 Real) (I_3 Real) (I_4 Real) (I_5 Real) (L_5 Real) )(let ((?x115 (- A_4 L_4)))
 (let (($x147 (<= ?x115 S_4)))
 (let (($x146 (>= A_5 A_4)))
 (let (($x145 (>= A_4 A_3)))
 (let (($x144 (>= A_3 A_2)))
 (let (($x143 (>= A_2 A_1)))
 (let (($x142 (>= A_1 A_0)))
 (let (($x140 (>= S_5 S_4)))
 (let (($x137 (>= S_4 S_3)))
 (let (($x134 (>= S_3 S_2)))
 (let (($x131 (>= S_2 S_1)))
 (let (($x128 (>= S_1 S_0)))
 (let ((?x169 (- A_5 L_5)))
 (let ((?x98 (* C 1.0)))
 (let ((?x170 (+ I_4 ?x98)))
 (let ((?x110 (- A_3 L_3)))
 (let ((?x178 (+ I_2 ?x98)))
 (let ((?x105 (- A_2 L_2)))
 (let ((?x182 (+ I_1 ?x98)))
 (let ((?x100 (- A_1 L_1)))
 (let ((?x186 (+ I_0 ?x98)))
 (let (($x190 (= L_5 L_4)))
 (let (($x194 (=> (not (> (- (- A_5 L_4) I_5) B)) $x190)))
 (let (($x192 (> (- (- A_5 L_4) I_5) B)))
 (let (($x198 (=> $x192 (= L_5 (- (- A_5 I_5) B)))))
 (let (($x86 (= L_4 L_3)))
 (let (($x202 (=> (not (> (- (- A_4 L_3) I_4) B)) $x86)))
 (let (($x200 (> (- (- A_4 L_3) I_4) B)))
 (let (($x206 (=> $x200 (= L_4 (- (- A_4 I_4) B)))))
 (let (($x76 (= L_3 L_2)))
 (let (($x210 (=> (not (> (- (- A_3 L_2) I_3) B)) $x76)))
 (let (($x208 (> (- (- A_3 L_2) I_3) B)))
 (let (($x214 (=> $x208 (= L_3 (- (- A_3 I_3) B)))))
 (let (($x66 (= L_2 L_1)))
 (let (($x218 (=> (not (> (- (- A_2 L_1) I_2) B)) $x66)))
 (let (($x216 (> (- (- A_2 L_1) I_2) B)))
 (let (($x222 (=> $x216 (= L_2 (- (- A_2 I_2) B)))))
 (let (($x56 (= L_1 L_0)))
 (let (($x226 (=> (not (> (- (- A_1 L_0) I_1) B)) $x56)))
 (let (($x224 (> (- (- A_1 L_0) I_1) B)))
 (let (($x230 (=> $x224 (= L_1 (- (- A_1 I_1) B)))))
 (let (($x47 (= a 1.0)))
 (let ((?x43 (* 5.0 a)))
 (let (($x45 (>= B ?x43)))
 (let (($x44 (>= C ?x43)))
 (let (($x39 (>= L_0 0.0)))
 (and $x39 (<= I_0 (- A_0 L_0)) $x44 $x45 $x47 $x230 $x226 $x222 $x218 $x214 $x210 $x206 $x202 $x198 $x194 $x230 $x226 $x222 $x218 $x214 $x210 $x206 $x202 $x198 $x194 (= I_1 (ite (< ?x186 ?x100) ?x186 ?x100)) (= I_2 (ite (< ?x182 ?x105) ?x182 ?x105)) (= I_3 (ite (< ?x178 ?x110) ?x178 ?x110)) (= I_4 (ite (< (+ I_3 ?x98) ?x115) (+ I_3 ?x98) ?x115)) (= I_5 (ite (< ?x170 ?x169) ?x170 ?x169)) (>= S_0 (- I_0 ?x98)) (<= S_0 I_0) (>= S_1 I_0) $x128 (<= S_1 I_1) (>= S_2 I_1) $x131 (<= S_2 I_2) (>= S_3 I_2) $x134 (<= S_3 I_3) (>= S_4 I_3) $x137 (<= S_4 I_4) (>= S_5 I_4) $x140 (<= S_5 I_5) $x142 $x143 $x144 $x145 $x146 $x147))))))))))))))))))))))))))))))))))))))))))))))))
 )
(check-sat)
