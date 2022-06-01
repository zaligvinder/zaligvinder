(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "D" (str.++ "A" (str.++ "F" (str.++ "G" "H")))))))))))

(check-sat)
(get-model)
