(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "A" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "G" (str.++ "H" "I")))))))))))

(check-sat)
(get-model)
