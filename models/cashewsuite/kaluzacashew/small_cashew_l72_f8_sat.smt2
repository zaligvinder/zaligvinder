(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "B" (str.++ "C" (str.++ "B" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "G" "A"))))))))))))

(check-sat)
(get-model)
