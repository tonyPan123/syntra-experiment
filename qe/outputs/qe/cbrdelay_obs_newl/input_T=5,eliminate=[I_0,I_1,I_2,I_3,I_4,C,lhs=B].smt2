; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_4 () Real)
(declare-fun L_4 () Real)
(declare-fun A_4 () Real)
(declare-fun A_3 () Real)
(declare-fun A_2 () Real)
(declare-fun A_1 () Real)
(declare-fun A_0 () Real)
(declare-fun S_3 () Real)
(declare-fun S_2 () Real)
(declare-fun S_1 () Real)
(declare-fun S_0 () Real)
(declare-fun L_3 () Real)
(declare-fun L_2 () Real)
(declare-fun L_1 () Real)
(declare-fun B () Real)
(declare-fun L_0 () Real)
(declare-fun a () Real)
(assert
 (exists ((I_0 Real) (I_1 Real) (I_2 Real) (I_3 Real) (I_4 Real) (C Real) )(let ((?x100 (- A_4 L_4)))
 (let (($x123 (<= ?x100 S_4)))
 (let (($x122 (>= A_4 A_3)))
 (let (($x121 (>= A_3 A_2)))
 (let (($x120 (>= A_2 A_1)))
 (let (($x119 (>= A_1 A_0)))
 (let (($x117 (>= S_4 S_3)))
 (let (($x114 (>= S_3 S_2)))
 (let (($x111 (>= S_2 S_1)))
 (let (($x108 (>= S_1 S_0)))
 (let ((?x140 (* C 1.0)))
 (let ((?x143 (+ I_3 ?x140)))
 (let ((?x95 (- A_3 L_3)))
 (let ((?x147 (+ I_2 ?x140)))
 (let ((?x90 (- A_2 L_2)))
 (let ((?x151 (+ I_1 ?x140)))
 (let ((?x85 (- A_1 L_1)))
 (let ((?x155 (+ I_0 ?x140)))
 (let (($x81 (= L_4 L_3)))
 (let (($x162 (=> (not (> (- (- A_4 L_3) I_4) B)) $x81)))
 (let (($x160 (> (- (- A_4 L_3) I_4) B)))
 (let (($x166 (=> $x160 (= L_4 (- (- A_4 I_4) B)))))
 (let (($x71 (= L_3 L_2)))
 (let (($x170 (=> (not (> (- (- A_3 L_2) I_3) B)) $x71)))
 (let (($x168 (> (- (- A_3 L_2) I_3) B)))
 (let (($x174 (=> $x168 (= L_3 (- (- A_3 I_3) B)))))
 (let (($x61 (= L_2 L_1)))
 (let (($x178 (=> (not (> (- (- A_2 L_1) I_2) B)) $x61)))
 (let (($x176 (> (- (- A_2 L_1) I_2) B)))
 (let (($x182 (=> $x176 (= L_2 (- (- A_2 I_2) B)))))
 (let (($x51 (= L_1 L_0)))
 (let (($x186 (=> (not (> (- (- A_1 L_0) I_1) B)) $x51)))
 (let (($x184 (> (- (- A_1 L_0) I_1) B)))
 (let (($x190 (=> $x184 (= L_1 (- (- A_1 I_1) B)))))
 (let (($x42 (= a 1.0)))
 (let ((?x38 (* 5.0 a)))
 (let (($x40 (>= B ?x38)))
 (let (($x34 (>= L_0 0.0)))
 (and $x34 (<= I_0 (- A_0 L_0)) (>= C ?x38) $x40 $x42 $x190 $x186 $x182 $x178 $x174 $x170 $x166 $x162 $x190 $x186 $x182 $x178 $x174 $x170 $x166 $x162 (= I_1 (ite (< ?x155 ?x85) ?x155 ?x85)) (= I_2 (ite (< ?x151 ?x90) ?x151 ?x90)) (= I_3 (ite (< ?x147 ?x95) ?x147 ?x95)) (= I_4 (ite (< ?x143 ?x100) ?x143 ?x100)) (>= S_0 (- I_0 ?x140)) (<= S_0 I_0) (>= S_1 I_0) $x108 (<= S_1 I_1) (>= S_2 I_1) $x111 (<= S_2 I_2) (>= S_3 I_2) $x114 (<= S_3 I_3) (>= S_4 I_3) $x117 (<= S_4 I_4) $x119 $x120 $x121 $x122 $x123))))))))))))))))))))))))))))))))))))))))
 )
(check-sat)
