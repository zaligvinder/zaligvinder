(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "C" (str.++ "F" (str.++ "C" (str.++ "G" "H"))))))))))))

(check-sat)
(get-model)
