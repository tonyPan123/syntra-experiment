; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_4 () Real)
(declare-fun L_3 () Real)
(declare-fun A_3 () Real)
(declare-fun A_4 () Real)
(declare-fun A_2 () Real)
(declare-fun A_1 () Real)
(declare-fun A_0 () Real)
(declare-fun S_3 () Real)
(declare-fun S_2 () Real)
(declare-fun S_1 () Real)
(declare-fun S_0 () Real)
(declare-fun C () Real)
(declare-fun L_2 () Real)
(declare-fun L_1 () Real)
(declare-fun B () Real)
(declare-fun L_0 () Real)
(declare-fun a () Real)
(declare-fun L0 () Real)
(assert
 (exists ((I_0 Real) (I_1 Real) (I_2 Real) (I_3 Real) (I_4 Real) (L_4 Real) )(let ((?x98 (- A_3 L_3)))
 (let (($x127 (<= ?x98 S_4)))
 (let (($x125 (>= A_4 A_3)))
 (let (($x124 (>= A_3 A_2)))
 (let (($x123 (>= A_2 A_1)))
 (let (($x122 (>= A_1 A_0)))
 (let (($x120 (>= S_4 S_3)))
 (let (($x117 (>= S_3 S_2)))
 (let (($x114 (>= S_2 S_1)))
 (let (($x111 (>= S_1 S_0)))
 (let ((?x135 (- A_4 L_4)))
 (let ((?x86 (* C 1.0)))
 (let ((?x148 (+ I_3 ?x86)))
 (let ((?x93 (- A_2 L_2)))
 (let ((?x156 (+ I_1 ?x86)))
 (let ((?x88 (- A_1 L_1)))
 (let ((?x160 (+ I_0 ?x86)))
 (let (($x166 (> (- (- A_4 L_3) I_4) B)))
 (let (($x174 (> (- (- A_3 L_2) I_3) B)))
 (let (($x182 (> (- (- A_2 L_1) I_2) B)))
 (let (($x190 (> (- (- A_1 L_0) I_1) B)))
 (let (($x45 (= a 1.0)))
 (let ((?x41 (* 5.0 a)))
 (let (($x43 (>= B ?x41)))
 (let (($x42 (>= C ?x41)))
 (let (($x37 (>= L0 0.0)))
 (let (($x36 (>= L_0 L0)))
 (let (($x35 (>= L_0 0.0)))
 (and $x35 $x36 $x37 (<= I_0 (- A_0 L_0)) $x42 $x43 $x45 (=> $x190 (= L_1 (- (- A_1 I_1) B))) (=> (not $x190) (= L_1 L_0)) (=> $x182 (= L_2 (- (- A_2 I_2) B))) (=> (not $x182) (= L_2 L_1)) (=> $x174 (= L_3 (- (- A_3 I_3) B))) (=> (not $x174) (= L_3 L_2)) (=> $x166 (= L_4 (- (- A_4 I_4) B))) (=> (not $x166) (= L_4 L_3)) (= I_1 (ite (< ?x160 ?x88) ?x160 ?x88)) (= I_2 (ite (< ?x156 ?x93) ?x156 ?x93)) (= I_3 (ite (< (+ I_2 ?x86) ?x98) (+ I_2 ?x86) ?x98)) (= I_4 (ite (< ?x148 ?x135) ?x148 ?x135)) (>= S_0 (- I_0 ?x86)) (<= S_0 I_0) (>= S_1 I_0) $x111 (<= S_1 I_1) (>= S_2 I_1) $x114 (<= S_2 I_2) (>= S_3 I_2) $x117 (<= S_3 I_3) (>= S_4 I_3) $x120 (<= S_4 I_4) $x122 $x123 $x124 $x125 (> ?x135 S_4) $x127))))))))))))))))))))))))))))))
 )
(check-sat)
