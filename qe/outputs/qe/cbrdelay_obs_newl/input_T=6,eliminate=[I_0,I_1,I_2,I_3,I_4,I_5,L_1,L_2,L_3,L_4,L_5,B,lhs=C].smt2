; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_5 () Real)
(declare-fun L_0 () Real)
(declare-fun A_0 () Real)
(declare-fun A_1 () Real)
(declare-fun A_4 () Real)
(declare-fun A_5 () Real)
(declare-fun A_3 () Real)
(declare-fun A_2 () Real)
(declare-fun S_4 () Real)
(declare-fun S_3 () Real)
(declare-fun S_2 () Real)
(declare-fun S_1 () Real)
(declare-fun S_0 () Real)
(declare-fun C () Real)
(declare-fun a () Real)
(assert
 (exists ((I_0 Real) (I_1 Real) (I_2 Real) (I_3 Real) (I_4 Real) (I_5 Real) (L_1 Real) (L_2 Real) (L_3 Real) (L_4 Real) (L_5 Real) (B Real) )(let ((?x40 (- A_0 L_0)))
 (let (($x148 (<= ?x40 S_5)))
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
 (let ((?x177 (- A_5 L_5)))
 (let ((?x98 (* C 1.0)))
 (let ((?x178 (+ I_4 ?x98)))
 (let (($x186 (= I_4 (ite (< (+ I_3 ?x98) (- A_4 L_4)) (+ I_3 ?x98) (- A_4 L_4)))))
 (let (($x191 (= I_3 (ite (< (+ I_2 ?x98) (- A_3 L_3)) (+ I_2 ?x98) (- A_3 L_3)))))
 (let (($x196 (= I_2 (ite (< (+ I_1 ?x98) (- A_2 L_2)) (+ I_1 ?x98) (- A_2 L_2)))))
 (let (($x200 (= I_1 (ite (< (+ I_0 ?x98) (- A_1 L_1)) (+ I_0 ?x98) (- A_1 L_1)))))
 (let (($x201 (= L_5 L_4)))
 (let (($x206 (=> (not (> (- (- A_5 L_4) I_5) B)) $x201)))
 (let (($x204 (> (- (- A_5 L_4) I_5) B)))
 (let (($x210 (=> $x204 (= L_5 (- (- A_5 I_5) B)))))
 (let (($x211 (= L_4 L_3)))
 (let (($x216 (=> (not (> (- (- A_4 L_3) I_4) B)) $x211)))
 (let (($x214 (> (- (- A_4 L_3) I_4) B)))
 (let (($x220 (=> $x214 (= L_4 (- (- A_4 I_4) B)))))
 (let (($x221 (= L_3 L_2)))
 (let (($x226 (=> (not (> (- (- A_3 L_2) I_3) B)) $x221)))
 (let (($x224 (> (- (- A_3 L_2) I_3) B)))
 (let (($x230 (=> $x224 (= L_3 (- (- A_3 I_3) B)))))
 (let (($x231 (= L_2 L_1)))
 (let (($x236 (=> (not (> (- (- A_2 L_1) I_2) B)) $x231)))
 (let (($x234 (> (- (- A_2 L_1) I_2) B)))
 (let (($x240 (=> $x234 (= L_2 (- (- A_2 I_2) B)))))
 (let (($x241 (= L_1 L_0)))
 (let (($x245 (=> (not (> (- (- A_1 L_0) I_1) B)) $x241)))
 (let (($x243 (> (- (- A_1 L_0) I_1) B)))
 (let (($x249 (=> $x243 (= L_1 (- (- A_1 I_1) B)))))
 (let (($x47 (= a 1.0)))
 (let ((?x43 (* 5.0 a)))
 (let (($x44 (>= C ?x43)))
 (let (($x39 (>= L_0 0.0)))
 (and $x39 (<= I_0 ?x40) $x44 (>= B ?x43) $x47 $x249 $x245 $x240 $x236 $x230 $x226 $x220 $x216 $x210 $x206 $x249 $x245 $x240 $x236 $x230 $x226 $x220 $x216 $x210 $x206 $x200 $x196 $x191 $x186 (= I_5 (ite (< ?x178 ?x177) ?x178 ?x177)) (>= S_0 (- I_0 ?x98)) (<= S_0 I_0) (>= S_1 I_0) $x128 (<= S_1 I_1) (>= S_2 I_1) $x131 (<= S_2 I_2) (>= S_3 I_2) $x134 (<= S_3 I_3) (>= S_4 I_3) $x137 (<= S_4 I_4) (>= S_5 I_4) $x140 (<= S_5 I_5) $x142 $x143 $x144 $x145 $x146 (> (- A_1 L_1) S_5) $x148)))))))))))))))))))))))))))))))))))))))))))))
 )
(check-sat)
