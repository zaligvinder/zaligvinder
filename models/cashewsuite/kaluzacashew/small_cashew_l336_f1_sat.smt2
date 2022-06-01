(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "A" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "A" (str.++ "G" "H"))))))))))))

(check-sat)
(get-model)
