; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_3 () Real)
(declare-fun L_0 () Real)
(declare-fun A_0 () Real)
(declare-fun A_1 () Real)
(declare-fun A_4 () Real)
(declare-fun loss_rate_tol () Real)
(declare-fun A_3 () Real)
(declare-fun A_2 () Real)
(declare-fun S_2 () Real)
(declare-fun S_1 () Real)
(declare-fun S_0 () Real)
(declare-fun a () Real)
(assert
 (exists ((I_0 Real) (I_1 Real) (I_2 Real) (I_3 Real) (I_4 Real) (L_1 Real) (L_2 Real) (L_3 Real) (L_4 Real) (C Real) (B Real) (S_4 Real) )(let ((?x35 (- A_0 L_0)))
 (let (($x124 (<= ?x35 S_3)))
 (let (($x155 (and (<= (- L_4 L_3) loss_rate_tol) (<= (- (- A_4 L_4) I_4) (* C 3.0)))))
 (let (($x122 (>= A_4 A_3)))
 (let (($x121 (>= A_3 A_2)))
 (let (($x120 (>= A_2 A_1)))
 (let (($x119 (>= A_1 A_0)))
 (let (($x114 (>= S_3 S_2)))
 (let (($x111 (>= S_2 S_1)))
 (let (($x108 (>= S_1 S_0)))
 (let ((?x150 (- A_4 L_4)))
 (let ((?x167 (* C 1.0)))
 (let ((?x170 (+ I_3 ?x167)))
 (let (($x178 (= I_3 (ite (< (+ I_2 ?x167) (- A_3 L_3)) (+ I_2 ?x167) (- A_3 L_3)))))
 (let (($x183 (= I_2 (ite (< (+ I_1 ?x167) (- A_2 L_2)) (+ I_1 ?x167) (- A_2 L_2)))))
 (let (($x187 (= I_1 (ite (< (+ I_0 ?x167) (- A_1 L_1)) (+ I_0 ?x167) (- A_1 L_1)))))
 (let (($x188 (= L_4 L_3)))
 (let (($x193 (=> (not (> (- (- A_4 L_3) I_4) B)) $x188)))
 (let (($x191 (> (- (- A_4 L_3) I_4) B)))
 (let (($x197 (=> $x191 (= L_4 (- (- A_4 I_4) B)))))
 (let (($x198 (= L_3 L_2)))
 (let (($x203 (=> (not (> (- (- A_3 L_2) I_3) B)) $x198)))
 (let (($x201 (> (- (- A_3 L_2) I_3) B)))
 (let (($x207 (=> $x201 (= L_3 (- (- A_3 I_3) B)))))
 (let (($x208 (= L_2 L_1)))
 (let (($x213 (=> (not (> (- (- A_2 L_1) I_2) B)) $x208)))
 (let (($x211 (> (- (- A_2 L_1) I_2) B)))
 (let (($x217 (=> $x211 (= L_2 (- (- A_2 I_2) B)))))
 (let (($x218 (= L_1 L_0)))
 (let (($x222 (=> (not (> (- (- A_1 L_0) I_1) B)) $x218)))
 (let (($x220 (> (- (- A_1 L_0) I_1) B)))
 (let (($x226 (=> $x220 (= L_1 (- (- A_1 I_1) B)))))
 (let (($x42 (= a 1.0)))
 (let (($x34 (>= L_0 0.0)))
 (and $x34 (<= I_0 ?x35) (>= C (* 5.0 a)) (>= B (* 5.0 a)) $x42 $x226 $x222 $x217 $x213 $x207 $x203 $x197 $x193 $x226 $x222 $x217 $x213 $x207 $x203 $x197 $x193 $x187 $x183 $x178 (= I_4 (ite (< ?x170 ?x150) ?x170 ?x150)) (>= S_0 (- I_0 ?x167)) (<= S_0 I_0) (>= S_1 I_0) $x108 (<= S_1 I_1) (>= S_2 I_1) $x111 (<= S_2 I_2) (>= S_3 I_2) $x114 (<= S_3 I_3) (>= S_4 I_3) (>= S_4 S_3) (<= S_4 I_4) $x119 $x120 $x121 $x122 (not $x155) (> (- A_1 L_1) S_3) $x124))))))))))))))))))))))))))))))))))))
 )
(check-sat)
