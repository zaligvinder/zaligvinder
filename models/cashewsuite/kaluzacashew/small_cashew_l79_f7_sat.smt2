(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "C" (str.++ "D" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "F" "G"))))))))))))

(check-sat)
(get-model)
