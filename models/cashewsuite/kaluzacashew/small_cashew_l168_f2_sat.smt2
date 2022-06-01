(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "G" (str.++ "H" (str.++ "I" "J"))))))))))))
(assert (= v0 (str.++ "I" (str.++ "K" (str.++ "L" (str.++ "C" (str.++ "H" (str.++ "A" (str.++ "M" (str.++ "N" (str.++ "O" "P")))))))))))

(check-sat)
(get-model)
