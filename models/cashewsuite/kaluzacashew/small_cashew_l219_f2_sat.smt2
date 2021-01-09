(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (not (= v0 (str.++ "A" (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "G" (str.++ "H" "I"))))))))))))
(assert (= v0 (str.++ "J" (str.++ "K" (str.++ "A" (str.++ "L" (str.++ "M" (str.++ "J" (str.++ "N" (str.++ "O" (str.++ "P" "Q")))))))))))

(check-sat)
(get-model)
