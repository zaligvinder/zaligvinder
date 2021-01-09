(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "C" (str.++ "D" (str.++ "C" (str.++ "E" (str.++ "F" (str.++ "G" "A"))))))))))))
(assert (= v0 (str.++ "H" (str.++ "H" (str.++ "I" (str.++ "D" (str.++ "J" (str.++ "C" (str.++ "K" (str.++ "L" (str.++ "M" "N")))))))))))

(check-sat)
(get-model)
