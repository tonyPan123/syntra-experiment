; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_5 () Real)
(declare-fun L_2 () Real)
(declare-fun A_2 () Real)
(declare-fun A_3 () Real)
(declare-fun A_5 () Real)
(declare-fun Q_5 () Real)
(declare-fun A_4 () Real)
(declare-fun A_1 () Real)
(declare-fun A_0 () Real)
(declare-fun S_4 () Real)
(declare-fun S_3 () Real)
(declare-fun S_2 () Real)
(declare-fun S_1 () Real)
(declare-fun S_0 () Real)
(declare-fun L_1 () Real)
(declare-fun L_0 () Real)
(declare-fun a () Real)
(assert
 (exists ((I_0 Real) (I_1 Real) (I_2 Real) (I_3 Real) (I_4 Real) (I_5 Real) (L_3 Real) (L_4 Real) (L_5 Real) (C Real) (B Real) )(let ((?x105 (- A_2 L_2)))
 (let (($x148 (<= ?x105 S_5)))
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
 (let ((?x165 (- A_5 L_5)))
 (let ((?x179 (* C 1.0)))
 (let ((?x182 (+ I_4 ?x179)))
 (let (($x190 (= I_4 (ite (< (+ I_3 ?x179) (- A_4 L_4)) (+ I_3 ?x179) (- A_4 L_4)))))
 (let (($x194 (= I_3 (ite (< (+ I_2 ?x179) (- A_3 L_3)) (+ I_2 ?x179) (- A_3 L_3)))))
 (let ((?x100 (- A_1 L_1)))
 (let ((?x199 (+ I_0 ?x179)))
 (let (($x203 (= L_5 L_4)))
 (let (($x208 (=> (not (> (- (- A_5 L_4) I_5) B)) $x203)))
 (let (($x206 (> (- (- A_5 L_4) I_5) B)))
 (let (($x212 (=> $x206 (= L_5 (- (- A_5 I_5) B)))))
 (let (($x213 (= L_4 L_3)))
 (let (($x218 (=> (not (> (- (- A_4 L_3) I_4) B)) $x213)))
 (let (($x216 (> (- (- A_4 L_3) I_4) B)))
 (let (($x222 (=> $x216 (= L_4 (- (- A_4 I_4) B)))))
 (let (($x223 (= L_3 L_2)))
 (let (($x227 (=> (not (> (- (- A_3 L_2) I_3) B)) $x223)))
 (let (($x225 (> (- (- A_3 L_2) I_3) B)))
 (let (($x231 (=> $x225 (= L_3 (- (- A_3 I_3) B)))))
 (let (($x66 (= L_2 L_1)))
 (let (($x235 (=> (not (> (- (- A_2 L_1) I_2) B)) $x66)))
 (let (($x233 (> (- (- A_2 L_1) I_2) B)))
 (let (($x239 (=> $x233 (= L_2 (- (- A_2 I_2) B)))))
 (let (($x56 (= L_1 L_0)))
 (let (($x243 (=> (not (> (- (- A_1 L_0) I_1) B)) $x56)))
 (let (($x241 (> (- (- A_1 L_0) I_1) B)))
 (let (($x247 (=> $x241 (= L_1 (- (- A_1 I_1) B)))))
 (let (($x47 (= a 1.0)))
 (let (($x39 (>= L_0 0.0)))
 (and $x39 (<= I_0 (- A_0 L_0)) (>= C (* 5.0 a)) (>= B (* 5.0 a)) $x47 $x247 $x243 $x239 $x235 $x231 $x227 $x222 $x218 $x212 $x208 $x247 $x243 $x239 $x235 $x231 $x227 $x222 $x218 $x212 $x208 (= I_1 (ite (< ?x199 ?x100) ?x199 ?x100)) (= I_2 (ite (< (+ I_1 ?x179) ?x105) (+ I_1 ?x179) ?x105)) $x194 $x190 (= I_5 (ite (< ?x182 ?x165) ?x182 ?x165)) (>= S_0 (- I_0 ?x179)) (<= S_0 I_0) (>= S_1 I_0) $x128 (<= S_1 I_1) (>= S_2 I_1) $x131 (<= S_2 I_2) (>= S_3 I_2) $x134 (<= S_3 I_3) (>= S_4 I_3) $x137 (<= S_4 I_4) (>= S_5 I_4) $x140 (<= S_5 I_5) $x142 $x143 $x144 $x145 $x146 (= Q_5 (- ?x165 I_5)) (> (- A_3 L_3) S_5) $x148)))))))))))))))))))))))))))))))))))))))))))
 )
(check-sat)
