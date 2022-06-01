(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "B" (str.++ "E" (str.++ "A" (str.++ "F" (str.++ "G" "D"))))))))))))

(check-sat)
(get-model)
