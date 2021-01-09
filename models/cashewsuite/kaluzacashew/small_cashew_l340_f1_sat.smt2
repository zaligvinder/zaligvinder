(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "B" (str.++ "C" (str.++ "C" (str.++ "D" (str.++ "B" (str.++ "E" (str.++ "F" "G"))))))))))))

(check-sat)
(get-model)
