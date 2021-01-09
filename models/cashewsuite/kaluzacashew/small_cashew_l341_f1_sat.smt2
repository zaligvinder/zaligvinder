(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= v0 (str.++ "A" (str.++ "B" (str.++ "A" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "B" (str.++ "G" "H")))))))))))

(check-sat)
(get-model)
