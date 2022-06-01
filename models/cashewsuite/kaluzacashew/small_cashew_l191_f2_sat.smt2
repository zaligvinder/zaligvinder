(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "D" (str.++ "F" (str.++ "G" (str.++ "H" "D")))))))))))

(check-sat)
(get-model)
