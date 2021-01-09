(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= v0 (str.++ "A" (str.++ "B" (str.++ "A" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "D" (str.++ "F" (str.++ "A" "G")))))))))))

(check-sat)
(get-model)
