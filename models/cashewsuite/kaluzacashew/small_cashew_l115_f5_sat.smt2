(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= (str.len v0) 0))
(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "G" "H"))))))))))
(assert (not (= v0 (str.++ "I" (str.++ "J" (str.++ "K" (str.++ "L" (str.++ "F" (str.++ "B" (str.++ "M" (str.++ "N" (str.++ "O" "G"))))))))))))

(check-sat)
(get-model)
