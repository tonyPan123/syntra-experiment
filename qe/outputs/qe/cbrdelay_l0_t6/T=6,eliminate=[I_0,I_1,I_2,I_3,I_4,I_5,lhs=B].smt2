; benchmark generated from python API
(set-info :status unknown)
(declare-fun S_2 () Real)
(declare-fun S_1 () Real)
(declare-fun C () Real)
(declare-fun S_0 () Real)
(declare-fun A_0 () Real)
(declare-fun L_0 () Real)
(declare-fun L0 () Real)
(declare-fun B () Real)
(declare-fun A_5 () Real)
(declare-fun L_3 () Real)
(declare-fun L_4 () Real)
(declare-fun L_2 () Real)
(declare-fun L_1 () Real)
(declare-fun S_4 () Real)
(declare-fun A_1 () Real)
(declare-fun S_3 () Real)
(declare-fun A_2 () Real)
(declare-fun A_3 () Real)
(declare-fun A_4 () Real)
(declare-fun S_5 () Real)
(assert
 (let (($x42 (>= L0 0.0)))
 (let (($x890 (>= C 5.0)))
 (let (($x670 (>= B 5.0)))
 (let (($x983 (not (<= L_4 L_3))))
 (let (($x978 (<= L_3 L_2)))
 (let (($x979 (not $x978)))
 (let (($x977 (not (<= L_2 L_1))))
 (let (($x975 (not (<= L_1 L_0))))
 (let (($x24941 (or $x975 $x977 $x979 $x983 (<= (+ (* (- 5.0) C) (* (- 1.0) A_0) A_5) 0.0))))
 (let (($x14894 (<= (+ (* (- 5.0) C) (* (- 1.0) L_0) (* (- 1.0) S_1) A_5) 0.0)))
 (let (($x25438 (or $x977 $x979 $x983 (<= (+ (* (- 4.0) C) (* (- 1.0) A_1) A_5) 0.0))))
 (let (($x14900 (<= (+ (* (- 6.0) C) (* (- 1.0) L_0) (* (- 1.0) S_0) A_5) 0.0)))
 (let (($x14871 (<= (+ (* (- 4.0) C) (* (- 1.0) L_0) (* (- 1.0) S_2) A_5) 0.0)))
 (let (($x14889 (<= (+ (* (- 2.0) C) (* (- 1.0) L_0) A_5 (* (- 1.0) S_4)) 0.0)))
 (let (($x14866 (<= (+ (* (- 3.0) C) (* (- 1.0) L_0) A_5 (* (- 1.0) S_3)) 0.0)))
 (let (($x15243 (<= (+ (* (- 1.0) C) (* (- 1.0) L_0) (* (- 1.0) S_1) A_2) 0.0)))
 (let (($x4432 (not (= L_0 L_2))))
 (let (($x25276 (or $x4432 (>= S_4 (+ A_3 (* (- 1.0) L_0))) (>= S_4 (+ A_2 (* (- 1.0) L_0) C)) (not $x15243))))
 (let (($x1607 (not (= L_1 L_3))))
 (let (($x15521 (<= (+ (* 2.0 C) A_1 (* (- 1.0) L_0) (* (- 1.0) S_4)) 0.0)))
 (let ((?x375 (* (- 1.0) L_1)))
 (let ((?x12369 (+ A_2 ?x375 C)))
 (let (($x13962 (>= S_4 ?x12369)))
 (let ((?x322 (* (- 1.0) L_2)))
 (let ((?x1049 (+ A_3 ?x322)))
 (let (($x2296 (>= S_4 ?x1049)))
 (let (($x24618 (or $x2296 $x13962 (<= (+ (* 3.0 C) S_0 (* (- 1.0) S_4)) 0.0) $x15521)))
 (let (($x2364 (not (= L_2 L_4))))
 (let (($x25782 (or $x975 $x2296 (<= (+ (* 2.0 C) S_1 (* (- 1.0) S_4)) 0.0) $x15243)))
 (let (($x14258 (<= 0.0 (+ C (* (- 1.0) A_1) L_0 S_0))))
 (let (($x14261 (not $x14258)))
 (let (($x25551 (or (>= S_3 (+ A_2 (* (- 1.0) L_0))) $x14261 (<= (+ C (* (- 1.0) L_0) A_1 (* (- 1.0) S_3)) 0.0))))
 (let ((?x1037 (+ A_2 ?x375)))
 (let (($x2144 (>= S_3 ?x1037)))
 (let (($x24931 (or $x2144 $x14258 (<= (+ (* 2.0 C) S_0 (* (- 1.0) S_3)) 0.0))))
 (let (($x2174 (<= L_3 L_1)))
 (let (($x1993 (not $x2174)))
 (let (($x1432 (not (= L_3 L_4))))
 (let ((?x452 (* (- 1.0) B)))
 (let ((?x251 (* (- 1.0) L_4)))
 (let ((?x967 (+ A_4 ?x251 ?x452)))
 (let ((?x815 (* (- 2.0) C)))
 (let ((?x14316 (+ ?x452 ?x251 A_4 ?x815)))
 (let ((?x674 (* (- 1.0) L_0)))
 (let ((?x2008 (+ A_2 ?x674)))
 (let (($x14317 (<= ?x2008 ?x14316)))
 (let ((?x357 (* (- 1.0) C)))
 (let ((?x569 (* (- 1.0) A_2)))
 (let ((?x13828 (+ A_3 ?x569 ?x357)))
 (let (($x13829 (<= ?x13828 0.0)))
 (let (($x89 (= L_4 L_3)))
 (let (($x25652 (or $x89 $x13829 (not (<= (+ A_2 (* (- 1.0) A_1) ?x357) 0.0)) $x14261 $x14317)))
 (let ((?x1950 (* (- 3.0) C)))
 (let ((?x14384 (+ ?x452 ?x251 A_4 ?x1950)))
 (let ((?x1024 (+ A_1 ?x674)))
 (let (($x14708 (<= ?x1024 ?x14384)))
 (let ((?x14301 (+ ?x452 ?x251 A_4 ?x357)))
 (let ((?x4406 (+ A_3 ?x674)))
 (let (($x14371 (<= ?x4406 ?x14301)))
 (let (($x13966 (not $x13829)))
 (let (($x1935 (not (<= L_2 L_0))))
 (let (($x1874 (= L_4 L_2)))
 (let (($x13889 (<= (+ A_2 (* (- 1.0) A_1) ?x357) 0.0)))
 (let (($x25833 (or $x89 $x975 $x977 $x14258 $x14317 $x14371 (<= S_0 (+ ?x452 ?x251 A_4 (* (- 4.0) C))))))
 (let (($x25305 (or $x89 $x1935 $x14317 $x14371 (<= (+ A_1 ?x674 L_4 (* (- 1.0) A_4) (* 3.0 C)) 0.0))))
 (let (($x14029 (or (= (+ (* 3.0 C) A_1 (* (- 1.0) A_4) B L_4 ?x674) 0.0) (not $x14708))))
 (let (($x1861 (not (= L_2 L_3))))
 (let (($x14682 (or $x975 $x977 $x1861 $x1874 (= (+ A_4 ?x251) (+ A_3 ?x322 C)) (not (<= 0.0 (+ C (* (- 1.0) A_4) A_3 L_4 ?x674))))))
 (let ((?x387 (* (- 1.0) L_3)))
 (let ((?x14106 (+ ?x452 ?x387 A_3 ?x357)))
 (let (($x14161 (<= ?x2008 ?x14106)))
 (let (($x5212 (= L_3 L_0)))
 (let (($x16226 (or $x4432 $x5212 $x14161 (<= (+ A_1 ?x674 L_3 (* (- 1.0) A_3) (* 2.0 C)) 0.0))))
 (let (($x1979 (= L_3 L_1)))
 (let (($x1446 (not (= L_1 L_2))))
 (let (($x14493 (or $x975 $x1446 $x1979 (<= (+ A_2 ?x674 L_3 (* (- 1.0) A_3) C) 0.0))))
 (let (($x17332 (or (<= (+ A_1 ?x674 (* (- 1.0) S_2)) 0.0) (<= (+ C (* (- 1.0) S_2) S_0) 0.0))))
 (let (($x24722 (or $x89 $x975 $x1993 $x14371 (<= (+ A_2 ?x674 L_4 (* (- 1.0) A_4) (* 2.0 C)) 0.0))))
 (let (($x79 (= L_3 L_2)))
 (let (($x17934 (or (not (<= ?x1024 (+ ?x452 ?x387 A_3 ?x815))) (= (+ ?x815 ?x387 A_3 ?x452 L_0 (* (- 1.0) A_1)) 0.0))))
 (let (($x59 (= L_1 L_0)))
 (let (($x13620 (<= A_2 (+ A_1 ?x452 C))))
 (let (($x13521 (not $x13620)))
 (let (($x18162 (or $x59 $x977 $x979 $x1432 (<= (+ A_4 (* (- 1.0) A_1) ?x1950) 0.0))))
 (let (($x13921 (= ?x967 (+ A_3 ?x375 C))))
 (let (($x1862 (= L_4 L_1)))
 (let (($x16751 (or $x1607 $x1862 $x13620 $x13921 (not (<= A_3 (+ A_1 ?x452 (* 2.0 C)))))))
 (let (($x13915 (<= A_3 (+ A_1 ?x452 (* 2.0 C)))))
 (let (($x25604 (or $x59 $x89 $x977 $x13620 (= (+ A_4 ?x251) (+ A_1 ?x375 (* 3.0 C))) $x13915)))
 (let (($x69 (= L_2 L_1)))
 (let (($x13795 (<= A_3 (+ A_2 ?x452 C))))
 (let (($x18199 (or $x69 $x89 $x13795 (= (+ A_2 ?x322 (* 2.0 C)) (+ A_4 ?x251)))))
 (let (($x2828 (= L_2 L_0)))
 (let (($x1295 (not (= L_0 L_1))))
 (let (($x14464 (or $x59 $x79 $x13620 (= (+ A_3 ?x387) (+ A_1 ?x375 (* 2.0 C))))))
 (let (($x25492 (or (= (+ ?x357 A_2 ?x322 ?x452 (* (- 1.0) A_1) L_0) 0.0) (not (<= ?x1024 (+ ?x452 ?x322 A_2 ?x357))))))
 (let ((?x13462 (+ ?x452 ?x322 A_2 ?x357)))
 (let (($x13547 (<= ?x1024 ?x13462)))
 (let (($x41 (>= L_0 L0)))
 (let (($x131 (>= S_1 S_0)))
 (let (($x134 (>= S_2 S_1)))
 (let (($x137 (>= S_3 S_2)))
 (let (($x140 (>= S_4 S_3)))
 (let (($x145 (>= A_1 A_0)))
 (let (($x146 (>= A_2 A_1)))
 (let (($x147 (>= A_3 A_2)))
 (let (($x148 (>= A_4 A_3)))
 (let (($x149 (>= A_5 A_4)))
 (and (<= (+ A_5 ?x251) S_5) $x149 $x148 $x147 $x146 $x145 $x140 $x137 $x134 $x131 $x41 (or $x89 (<= S_4 ?x967)) (or $x79 (<= S_3 (+ A_3 ?x387 ?x452))) (or $x69 (<= S_2 (+ A_2 ?x322 ?x452))) (>= S_2 (+ A_1 ?x375 ?x452)) (>= S_3 (+ A_2 ?x322 ?x452)) (or $x59 $x975) (or $x59 (<= S_1 (+ A_1 ?x375 ?x452))) (>= S_0 (+ ?x452 ?x375 A_1 ?x815)) (<= (+ ?x452 ?x375 A_1 ?x357) (+ A_0 ?x674)) (or $x59 (<= S_0 (+ ?x452 ?x375 A_1 ?x357))) (or $x89 (<= A_5 (+ A_4 ?x452 C))) (or $x59 $x69 (= (+ A_2 ?x322) (+ A_1 ?x375 C))) (or $x69 $x79 (= (+ A_3 ?x387) (+ A_2 ?x322 C))) (or $x79 $x979) (>= S_4 (+ A_3 ?x387 ?x452)) (>= S_1 (+ ?x452 ?x375 A_1 ?x357)) (or $x79 (<= (+ A_4 (* (- 1.0) A_3) ?x357) 0.0) $x983) (or $x89 $x983) (or $x59 (<= S_2 (+ A_1 ?x375 ?x452 C))) (or $x69 $x977) (<= S_4 (+ A_4 ?x387)) (or (>= S_3 (+ A_1 ?x375 ?x452 C)) $x13620) (or $x2144 $x13521) (<= S_3 ?x1049) (or $x69 (<= S_1 ?x13462)) (or $x69 (<= S_0 (+ ?x452 ?x322 A_2 ?x815)) $x13547) (>= S_2 ?x13462) (<= (+ (* (- 1.0) A_1) L_0 S_1) 0.0) (>= S_0 (+ ?x452 ?x322 A_2 ?x1950)) (<= (+ ?x452 ?x322 A_2 ?x815) (+ A_0 ?x674)) (>= S_1 (+ ?x452 ?x322 A_2 ?x815)) $x25492 (or $x79 (<= A_5 (+ A_3 ?x452 (* 2.0 C))) $x983) $x14464 (<= S_5 (+ A_5 ?x251)) (or $x89 $x978 (= (+ A_4 ?x251) (+ A_3 ?x387 C))) (or $x69 (<= S_3 (+ A_2 ?x322 ?x452 C))) (<= A_5 (+ A_4 C)) (or $x1295 $x2828 (<= (+ A_1 ?x674 L_2 ?x569 C) 0.0)) (or $x79 (<= S_4 (+ A_3 ?x387 ?x452 C))) (or $x2174 (= (+ A_3 ?x387 ?x452) ?x12369) $x13521) (or $x1874 (not $x13795) (= ?x967 (+ A_3 ?x322 C))) $x18199 (or $x69 $x1861 $x13829) (or $x69 $x979 $x983 (<= (+ A_4 ?x569 ?x815) 0.0)) (or $x69 $x979 $x983 (<= A_5 (+ A_2 ?x452 (* 3.0 C)))) (or $x2296 (>= S_4 (+ A_1 ?x375 ?x452 (* 2.0 C))) $x13620) (or $x59 $x1446 $x13889) (or $x59 (<= S_3 (+ A_1 ?x375 ?x452 (* 2.0 C)))) $x25604 $x16751 (or $x2296 (>= S_4 (+ A_2 ?x322 ?x452 C))) (or $x69 (<= S_4 (+ A_2 ?x322 ?x452 (* 2.0 C)))) (or (>= S_4 (+ A_3 ?x375)) $x13521 $x13962) (or $x1862 $x13521 $x13921 $x13966) (or $x59 (<= S_4 (+ A_1 ?x375 ?x452 (* 3.0 C)))) $x18162 (<= S_4 (+ A_3 ?x322 C)) (or $x89 $x13521 $x13829 (= ?x967 (+ A_2 ?x375 (* 2.0 C)))) (or $x59 $x977 $x979 $x983 (<= A_5 (+ A_1 ?x452 (* 4.0 C)))) (or $x59 $x1861 $x13829 (<= (+ A_3 (* (- 1.0) A_1) ?x815) 0.0)) (or $x79 (<= S_2 ?x14106)) (>= S_3 ?x14106) (<= S_2 ?x1037) (or (= (+ A_3 ?x387 ?x452) (+ A_2 ?x674 C)) (not $x14161)) (<= (+ ?x452 ?x387 A_3 ?x1950) (+ A_0 ?x674)) (or $x13889 (not $x14161)) (<= (+ ?x357 L_0 S_1 (* (- 1.0) A_0)) 0.0) (>= S_2 (+ ?x452 ?x387 A_3 ?x815)) (>= S_1 (+ ?x452 ?x387 A_3 ?x1950)) $x17934 (or $x79 $x975 (<= S_0 (+ ?x452 ?x387 A_3 ?x1950)) $x14161 $x14258) (or $x79 $x14161 (<= ?x1024 (+ ?x452 ?x387 A_3 ?x815)) $x14261) (or $x79 $x975 (<= S_1 (+ ?x452 ?x387 A_3 ?x815)) $x14161) (<= (+ ?x815 S_1 (* (- 1.0) S_0)) 0.0) (>= S_4 ?x14301) $x24722 (>= S_3 ?x14316) (or $x89 $x975 $x977 $x14371 (<= S_2 ?x14316)) (or $x89 (<= S_3 ?x14301)) (or (= ?x967 (+ A_3 ?x674 C)) (not $x14371)) $x17332 (>= S_0 (+ ?x452 ?x387 A_3 (* (- 4.0) C))) $x14493 $x16226 $x14682 (>= S_2 ?x14384) (>= S_0 (+ ?x452 ?x251 A_4 (* (- 5.0) C))) $x14029 (or $x89 $x975 $x977 $x14317 $x14371 (<= S_1 ?x14384)) $x25305 $x25833 (or $x89 $x1935 $x13889 $x14261 $x14371 $x14708) (or $x1874 $x1935 $x13966 $x14261 $x14371 $x14708) $x25652 (<= (+ ?x452 ?x251 A_4 (* (- 4.0) C)) (+ A_0 ?x674)) (or $x13829 (not (= (+ A_3 ?x674 C) ?x967))) (or (not $x14317) (= ?x967 (+ A_2 ?x674 (* 2.0 C)))) (>= S_1 (+ ?x452 ?x251 A_4 (* (- 4.0) C))) (or $x2144 (<= (+ C S_1 (* (- 1.0) S_3)) 0.0)) (<= (+ ?x357 L_0 (* (- 1.0) A_1) S_2) 0.0) (<= S_3 ?x12369) (or $x1432 $x1993 (<= (+ A_4 ?x569 ?x815) B)) $x24931 $x25551 (<= (+ ?x1950 S_2 (* (- 1.0) S_0)) 0.0) (<= (+ ?x815 L_0 (* (- 1.0) A_0) S_2) 0.0) (or $x2296 (<= (+ C S_2 (* (- 1.0) S_4)) 0.0)) $x25782 (or $x983 (<= A_5 (+ A_3 (* 2.0 C)))) (<= (+ ?x1950 (* (- 1.0) S_2) S_4) 0.0) (<= (+ ?x1950 (* (- 1.0) S_1) S_3) 0.0) (<= (+ ?x815 (* (- 1.0) S_2) S_3) 0.0) (or $x2364 (<= (+ A_4 (* (- 1.0) A_3) ?x357) B)) (<= S_4 (+ A_2 ?x375 (* 2.0 C))) (<= (+ ?x815 (* (- 1.0) S_3) S_4) 0.0) $x24618 (<= (+ ?x1950 L_0 (* (- 1.0) A_0) S_3) 0.0) (or $x1607 (<= ?x13828 B)) $x25276 (<= (+ ?x815 (* (- 1.0) A_1) L_0 S_3) 0.0) (<= (+ (* (- 4.0) C) (* (- 1.0) S_0) S_3) 0.0) (or $x979 $x983 (<= A_5 (+ A_2 (* 3.0 C)))) (or $x975 $x977 $x979 $x983 $x14866) (or $x975 $x977 $x979 $x983 $x14889) (or $x975 $x977 $x979 $x983 $x14871) (<= (+ (* (- 4.0) C) L_0 (* (- 1.0) A_0) S_4) 0.0) (<= (+ (* (- 4.0) C) (* (- 1.0) S_1) S_4) 0.0) (<= (+ ?x1950 (* (- 1.0) A_1) L_0 S_4) 0.0) (or $x975 $x977 $x979 $x983 $x14900) $x25438 (<= (+ (* (- 5.0) C) (* (- 1.0) S_0) S_4) 0.0) (or $x975 $x977 $x979 $x983 $x14894) $x24941 $x670 $x890 $x42 (<= (+ L_0 (* (- 1.0) A_0) S_0) 0.0) (<= (+ ?x815 (* (- 1.0) S_1) S_2) 0.0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
