(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "A" (str.++ "E" (str.++ "F" (str.++ "G" (str.++ "H" "I"))))))))))))

(check-sat)
(get-model)
