(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "E" (str.++ "G" (str.++ "H" (str.++ "I" (str.++ "B" (str.++ "J" (str.++ "B" (str.++ "K" (str.++ "B" (str.++ "D" (str.++ "D" (str.++ "H" (str.++ "D" (str.++ "L" (str.++ "J" (str.++ "K" (str.++ "M" (str.++ "L" "N")))))))))))))))))))))))))))

(check-sat)
(get-model)
