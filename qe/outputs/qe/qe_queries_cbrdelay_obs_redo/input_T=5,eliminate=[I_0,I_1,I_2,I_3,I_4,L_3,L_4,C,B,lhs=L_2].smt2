; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_3 () Real)
(declare-fun L_1 () Real)
(declare-fun A_1 () Real)
(declare-fun L_2 () Real)
(declare-fun A_2 () Real)
(declare-fun A_3 () Real)
(declare-fun A_4 () Real)
(declare-fun A_0 () Real)
(declare-fun S_4 () Real)
(declare-fun S_2 () Real)
(declare-fun S_1 () Real)
(declare-fun S_0 () Real)
(declare-fun L_0 () Real)
(declare-fun a () Real)
(assert
 (exists ((I_0 Real) (I_1 Real) (I_2 Real) (I_3 Real) (I_4 Real) (L_3 Real) (L_4 Real) (C Real) (B Real) )(let ((?x85 (- A_1 L_1)))
 (let (($x124 (<= ?x85 S_3)))
 (let ((?x90 (- A_2 L_2)))
 (let (($x123 (> ?x90 S_3)))
 (let (($x122 (>= A_4 A_3)))
 (let (($x121 (>= A_3 A_2)))
 (let (($x120 (>= A_2 A_1)))
 (let (($x119 (>= A_1 A_0)))
 (let (($x117 (>= S_4 S_3)))
 (let (($x114 (>= S_3 S_2)))
 (let (($x111 (>= S_2 S_1)))
 (let (($x108 (>= S_1 S_0)))
 (let ((?x147 (- A_4 L_4)))
 (let ((?x144 (* C 1.0)))
 (let ((?x148 (+ I_3 ?x144)))
 (let (($x156 (= I_3 (ite (< (+ I_2 ?x144) (- A_3 L_3)) (+ I_2 ?x144) (- A_3 L_3)))))
 (let (($x165 (= L_4 L_3)))
 (let (($x170 (=> (not (> (- (- A_4 L_3) I_4) B)) $x165)))
 (let (($x168 (> (- (- A_4 L_3) I_4) B)))
 (let (($x174 (=> $x168 (= L_4 (- (- A_4 I_4) B)))))
 (let (($x175 (= L_3 L_2)))
 (let (($x179 (=> (not (> (- (- A_3 L_2) I_3) B)) $x175)))
 (let (($x177 (> (- (- A_3 L_2) I_3) B)))
 (let (($x183 (=> $x177 (= L_3 (- (- A_3 I_3) B)))))
 (let (($x61 (= L_2 L_1)))
 (let (($x187 (=> (not (> (- (- A_2 L_1) I_2) B)) $x61)))
 (let (($x185 (> (- (- A_2 L_1) I_2) B)))
 (let (($x191 (=> $x185 (= L_2 (- (- A_2 I_2) B)))))
 (let (($x51 (= L_1 L_0)))
 (let (($x195 (=> (not (> (- (- A_1 L_0) I_1) B)) $x51)))
 (let (($x193 (> (- (- A_1 L_0) I_1) B)))
 (let (($x199 (=> $x193 (= L_1 (- (- A_1 I_1) B)))))
 (let (($x42 (= a 1.0)))
 (let (($x34 (>= L_0 0.0)))
 (and $x34 (<= I_0 (- A_0 L_0)) (>= C (* 5.0 a)) (>= B (* 5.0 a)) $x42 $x199 $x195 $x191 $x187 $x183 $x179 $x174 $x170 $x199 $x195 $x191 $x187 $x183 $x179 $x174 $x170 (= I_1 (ite (< (+ I_0 ?x144) ?x85) (+ I_0 ?x144) ?x85)) (= I_2 (ite (< (+ I_1 ?x144) ?x90) (+ I_1 ?x144) ?x90)) $x156 (= I_4 (ite (< ?x148 ?x147) ?x148 ?x147)) (>= S_0 (- I_0 ?x144)) (<= S_0 I_0) (>= S_1 I_0) $x108 (<= S_1 I_1) (>= S_2 I_1) $x111 (<= S_2 I_2) (>= S_3 I_2) $x114 (<= S_3 I_3) (>= S_4 I_3) $x117 (<= S_4 I_4) $x119 $x120 $x121 $x122 $x123 $x124))))))))))))))))))))))))))))))))))))
 )
(check-sat)
