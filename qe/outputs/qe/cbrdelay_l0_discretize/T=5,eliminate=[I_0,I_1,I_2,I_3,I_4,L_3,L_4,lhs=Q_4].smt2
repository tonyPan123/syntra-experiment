; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_4 () Real)
(declare-fun S_3 () Real)
(declare-fun B () Real)
(declare-fun C () Real)
(declare-fun S_2 () Real)
(declare-fun A_0 () Real)
(declare-fun S_0 () Real)
(declare-fun L_0 () Real)
(declare-fun L0 () Real)
(declare-fun L_1 () Real)
(declare-fun A_2 () Real)
(declare-fun A_1 () Real)
(declare-fun A_4 () Real)
(declare-fun Q_4 () Real)
(declare-fun S_1 () Real)
(declare-fun A_3 () Real)
(declare-fun L_2 () Real)
(assert
 (let (($x14536 (>= (+ (* (- 1.0) C) (* (- 1.0) B) (* (- 1.0) S_3) S_4) 0.0)))
 (let (($x37 (>= L0 0.0)))
 (let (($x795 (>= C 5.0)))
 (let (($x797 (>= B 5.0)))
 (let (($x16524 (<= 0.0 (+ (* (- 2.0) C) (* (- 1.0) A_1) (* (- 1.0) B) L_0 S_4))))
 (let (($x16346 (<= 0.0 (+ (* (- 2.0) C) (* (- 1.0) B) (* (- 1.0) S_2) S_4))))
 (let (($x15783 (<= A_1 (+ (* (- 3.0) C) (* (- 1.0) Q_4) A_4))))
 (let ((?x509 (* (- 1.0) Q_4)))
 (let ((?x4728 (* (- 4.0) C)))
 (let ((?x594 (* (- 1.0) L_0)))
 (let ((?x15098 (+ ?x594 ?x4728 ?x509 A_4)))
 (let (($x14869 (<= A_2 (+ (* (- 2.0) C) ?x509 A_4))))
 (let (($x957 (= Q_4 0.0)))
 (let (($x16369 (<= 0.0 (+ (* (- 3.0) C) (* (- 1.0) B) S_4 (* (- 1.0) S_1)))))
 (let (($x16232 (<= 0.0 (+ (* (- 3.0) C) (* (- 1.0) B) L_0 (* (- 1.0) A_0) S_4))))
 (let (($x15099 (>= S_1 ?x15098)))
 (let (($x14424 (<= (+ ?x509 B (* (- 1.0) C) (* (- 1.0) A_3) A_4) 0.0)))
 (let (($x14244 (<= 0.0 (+ C B A_3 ?x509 (* (- 1.0) A_4)))))
 (let (($x14245 (not $x14244)))
 (let (($x840 (not (<= L_2 L_1))))
 (let (($x838 (not (<= L_1 L_0))))
 (let (($x15800 (= (+ (* 3.0 C) A_1 (* (- 1.0) A_4) Q_4) 0.0)))
 (let (($x15784 (not $x15783)))
 (let ((?x399 (* (- 1.0) L_1)))
 (let ((?x898 (+ A_2 ?x399)))
 (let (($x1210 (>= S_3 ?x898)))
 (let (($x28710 (or $x1210 (<= (+ C A_1 ?x594 (* (- 1.0) S_3)) 0.0) (<= (+ (* 2.0 C) S_0 (* (- 1.0) S_3)) 0.0))))
 (let (($x15034 (not $x14869)))
 (let ((?x513 (* (- 1.0) A_4)))
 (let ((?x743 (* 2.0 C)))
 (let ((?x14255 (+ ?x743 A_2 ?x513 Q_4)))
 (let (($x14256 (= ?x14255 0.0)))
 (let (($x15104 (>= S_0 (+ ?x594 (* (- 5.0) C) ?x509 A_4))))
 (let ((?x1087 (* (- 2.0) C)))
 (let ((?x15054 (+ ?x594 ?x1087 ?x509 A_4)))
 (let (($x15055 (>= S_3 ?x15054)))
 (let ((?x1835 (* (- 3.0) C)))
 (let ((?x15114 (+ ?x594 ?x1835 ?x509 A_4)))
 (let (($x15115 (>= S_2 ?x15114)))
 (let ((?x238 (* (- 1.0) C)))
 (let ((?x15006 (+ ?x594 ?x238 ?x509 A_4)))
 (let (($x15007 (>= S_4 ?x15006)))
 (let ((?x14122 (+ A_2 ?x399 C)))
 (let (($x14131 (>= S_4 ?x14122)))
 (let (($x28630 (or $x14131 (<= (+ ?x743 A_1 ?x594 (* (- 1.0) S_4)) 0.0) (<= (+ (* 3.0 C) S_0 (* (- 1.0) S_4)) 0.0))))
 (let ((?x550 (* (- 1.0) B)))
 (let (($x1286 (= ?x509 ?x550)))
 (let (($x17464 (or $x1286 $x14244 (<= 0.0 (+ C A_1 (* (- 1.0) A_2) L_2 ?x594)) (not (= 0.0 ?x14255)))))
 (let (($x14482 (= (+ (* (- 1.0) A_1) B ?x1835 ?x509 A_4) 0.0)))
 (let (($x14193 (<= (+ A_3 (* (- 1.0) A_1) ?x1087) 0.0)))
 (let (($x14248 (not $x14193)))
 (let (($x1310 (not (= L_1 L_2))))
 (let (($x1306 (not (<= Q_4 0.0))))
 (let (($x54 (= L_1 L_0)))
 (let (($x29225 (or $x54 $x1306 $x1310 $x14248 $x14482 (not (<= (+ A_1 (* 3.0 C) Q_4 ?x513) B)))))
 (let (($x14851 (<= (+ A_1 (* 3.0 C) Q_4 ?x513) B)))
 (let (($x14102 (<= A_2 (+ A_1 ?x550 C))))
 (let (($x14065 (<= (+ A_3 (* (- 1.0) A_2) ?x238) 0.0)))
 (let (($x14417 (not $x14065)))
 (let (($x64 (= L_2 L_1)))
 (let (($x18786 (or (not (= ?x550 ?x509)) (= (+ (* (- 1.0) A_2) ?x1087 A_4) 0.0) (not (<= (+ A_4 (* (- 1.0) A_2) ?x1087) 0.0)))))
 (let ((?x487 (* (- 1.0) L_2)))
 (let ((?x14018 (+ ?x550 ?x487 A_2 ?x238)))
 (let (($x14345 (<= (+ A_1 ?x594) ?x14018)))
 (let (($x28531 (or (not $x14345) (= (+ ?x550 ?x238 (* (- 1.0) A_1) A_2 ?x487 L_0) 0.0))))
 (let (($x14564 (or $x64 $x957 $x1286 $x14417 (= (+ (* (- 1.0) A_2) B ?x1087 ?x509 A_4) 0.0))))
 (let (($x14475 (or $x957 (= (+ ?x550 C) (+ ?x509 A_4 (* (- 1.0) A_3))) (not $x14424))))
 (let (($x2868 (<= (+ A_1 (* (- 1.0) S_2) ?x594) 0.0)))
 (let (($x1811 (= L_2 L_0)))
 (let (($x1160 (not (= L_0 L_1))))
 (let (($x13887 (or $x1160 $x1811 (<= (+ A_1 ?x594 L_2 (* (- 1.0) A_2) C) 0.0))))
 (let (($x1447 (or $x957 $x1306)))
 (let (($x36 (>= L_0 L0)))
 (let (($x111 (>= S_1 S_0)))
 (let (($x114 (>= S_2 S_1)))
 (let (($x117 (>= S_3 S_2)))
 (let (($x120 (>= S_4 S_3)))
 (let (($x122 (>= A_1 A_0)))
 (let (($x123 (>= A_2 A_1)))
 (let (($x125 (>= A_4 A_3)))
 (and (<= (+ A_2 ?x487) S_4) $x125 $x123 $x122 $x120 $x117 $x114 $x111 $x36 (or $x64 (<= S_2 (+ A_2 ?x487 ?x550))) (or $x64 (<= S_3 (+ A_2 ?x487 ?x550 C))) (<= Q_4 B) (<= (+ ?x550 ?x399 A_1 ?x238) (+ A_0 ?x594)) (or $x54 $x838) (>= S_0 (+ ?x550 ?x399 A_1 ?x1087)) (>= S_1 (+ ?x550 ?x399 A_1 ?x238)) (or $x64 $x840) (or $x1310 (>= S_4 (+ A_2 ?x399 ?x550 C))) (>= S_4 (+ A_2 ?x487 ?x550 C)) (>= S_3 (+ A_2 ?x487 ?x550)) $x1447 (or $x54 $x64 (= (+ A_2 ?x487) (+ A_1 ?x399 C))) (or $x54 (<= S_1 (+ A_1 ?x399 ?x550))) (or $x54 (<= S_0 (+ ?x550 ?x399 A_1 ?x238))) (not (<= (+ A_3 ?x487) S_4)) $x13887 (>= S_2 (+ A_1 ?x399 ?x550)) (<= S_3 ?x14122) (or $x54 (<= S_4 (+ A_1 ?x399 ?x550 (* 3.0 C)))) (or $x54 (<= S_3 (+ A_1 ?x399 ?x550 ?x743))) (<= S_2 ?x898) (<= S_4 (+ A_2 ?x399 ?x743)) (or $x2868 (<= (+ C S_0 (* (- 1.0) S_2)) 0.0)) (or $x14131 (>= S_4 (+ A_1 ?x399 ?x550 ?x743))) (<= (+ ?x238 L_0 (* (- 1.0) A_0) S_1) 0.0) (<= (+ (* (- 1.0) A_1) L_0 S_1) 0.0) (or $x64 (not (<= (+ A_2 ?x487 C) S_4))) (or $x64 (<= S_4 (+ A_2 ?x487 ?x550 ?x743))) (>= S_2 ?x14018) (or $x64 (<= S_1 ?x14018)) (or $x64 $x14065 $x14245 $x14424) (or $x1210 (>= S_3 (+ A_1 ?x399 ?x550 C))) $x14475 (or $x54 (<= S_2 (+ A_1 ?x399 ?x550 C))) (or $x64 $x1286 $x14065 $x14244) $x14564 (>= S_0 (+ ?x550 ?x487 A_2 ?x1835)) $x28531 (or $x64 (<= S_0 (+ ?x550 ?x487 A_2 ?x1087)) $x14345) $x18786 (<= (+ ?x550 ?x487 A_2 ?x1087) (+ A_0 ?x594)) (>= S_1 (+ ?x550 ?x487 A_2 ?x1087)) (or $x64 $x1306 $x14417 (<= A_4 (+ A_2 ?x550 ?x743))) (or $x54 $x840 $x1286 $x14193 $x14244) (or $x54 $x840 $x14193 $x14245 $x14424) (or $x54 $x957 $x1286 $x1310 $x14102 $x14248 $x14482) (or $x54 $x840 (<= (+ A_2 (* (- 1.0) A_1) ?x238) 0.0)) (or $x54 (not (<= (+ A_1 ?x399 ?x743) S_4))) (or $x957 $x14102 $x14851) (or $x957 (not $x14102) $x14869) (or $x957 (<= S_3 ?x15006)) (<= S_4 (+ ?x594 ?x509 A_4)) (<= (+ ?x1087 (* (- 1.0) S_0) S_1) 0.0) (or $x957 (<= (+ A_2 ?x743 Q_4 ?x513) B)) (or $x957 (<= S_2 ?x15054)) $x29225 (or $x838 $x840 $x1286 $x14244 $x15055) (or $x838 $x840 $x1286 $x14244 $x15007) (or $x838 $x840 $x1286 $x14244 $x15115) (<= (+ ?x1835 (* (- 1.0) S_0) S_2) 0.0) (or $x838 $x840 $x1286 $x14244 $x15104) (or $x1286 $x14244 $x14256 $x15034) (or $x838 $x840 $x1286 $x14244 (<= (+ ?x4728 ?x509 A_4) A_0)) (or $x838 $x840 $x1286 $x14244 $x15099) $x17464 (or $x840 $x1286 $x14244 $x15784 $x15800) (or $x14131 (<= (+ ?x743 (* (- 1.0) S_4) S_1) 0.0)) $x28630 (<= (+ ?x1087 S_2 (* (- 1.0) S_1)) 0.0) (<= (+ ?x238 (* (- 1.0) A_1) L_0 S_2) 0.0) (<= (+ ?x1835 (* (- 1.0) A_1) L_0 S_4) 0.0) (or $x838 $x840 $x14245 $x14424 $x15007) (or $x838 $x840 $x14245 $x14424 $x15115) (not (<= 0.0 (+ ?x4728 ?x550 (* (- 1.0) S_0) S_4))) (or $x1210 (<= (+ C (* (- 1.0) S_3) S_1) 0.0)) (<= (+ ?x4728 (* (- 1.0) S_0) S_3) 0.0) (or $x838 $x840 $x14245 $x14424 $x15055) (or $x838 $x840 $x14245 $x14424 $x15104) (or $x14245 $x14256 $x14424 $x15034) (<= (+ ?x1087 (* (- 1.0) A_1) S_3 L_0) 0.0) (<= (+ ?x1835 S_3 (* (- 1.0) S_1)) 0.0) (<= (+ (* (- 5.0) C) (* (- 1.0) S_0) S_4) 0.0) (<= (+ ?x1835 L_0 (* (- 1.0) A_0) S_3) 0.0) $x28710 (or $x838 $x840 $x14245 $x14424 (<= (+ ?x4728 ?x509 A_4) A_0)) (or $x840 $x14245 $x14424 $x15784 $x15800) (or $x838 $x840 $x14245 $x14424 $x15099) (not $x16232) (<= (+ ?x1087 L_0 (* (- 1.0) A_0) S_2) 0.0) (<= (+ ?x4728 S_4 (* (- 1.0) S_1)) 0.0) (not $x16369) (<= (+ ?x1835 (* (- 1.0) S_2) S_4) 0.0) (<= (+ ?x4728 L_0 (* (- 1.0) A_0) S_4) 0.0) (or $x957 $x14869 (<= S_1 ?x15114)) (or $x957 $x14869 (<= S_0 ?x15098) $x15783) (not $x16346) (not $x16524) (not (<= (+ A_2 ?x399 C B) S_4)) $x797 $x795 $x37 (<= (+ L_0 S_0 (* (- 1.0) A_0)) 0.0) (<= (+ ?x1087 (* (- 1.0) S_3) S_4) 0.0) (<= (+ ?x1087 (* (- 1.0) S_2) S_3) 0.0) (<= (+ C S_2 (* (- 1.0) S_4)) 0.0) (not $x14536)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
