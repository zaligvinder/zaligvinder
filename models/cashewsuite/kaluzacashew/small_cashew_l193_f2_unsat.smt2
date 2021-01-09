(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "A" (str.++ "F" (str.++ "G" (str.++ "H" "I")))))))))))
(assert (= v0 (str.++ "E" (str.++ "J" (str.++ "K" (str.++ "C" (str.++ "L" (str.++ "I" (str.++ "M" (str.++ "N" (str.++ "O" "P")))))))))))

(check-sat)
(get-model)
