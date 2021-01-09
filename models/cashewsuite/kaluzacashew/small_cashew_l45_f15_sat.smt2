(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= (str.len v0) 0))
(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "C" (str.++ "D" (str.++ "C" (str.++ "E" (str.++ "F" (str.++ "G" "A"))))))))))))

(check-sat)
(get-model)
