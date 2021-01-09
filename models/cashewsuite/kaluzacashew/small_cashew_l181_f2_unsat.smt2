(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "D" (str.++ "G" (str.++ "H" "H")))))))))))
(assert (= v0 (str.++ "I" (str.++ "J" (str.++ "K" (str.++ "L" (str.++ "M" (str.++ "N" (str.++ "O" (str.++ "C" (str.++ "P" "Q")))))))))))

(check-sat)
(get-model)
