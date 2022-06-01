(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "G" (str.++ "H" (str.++ "I" "J")))))))))))
(assert (= v0 (str.++ "K" (str.++ "L" (str.++ "M" (str.++ "N" (str.++ "J" (str.++ "O" (str.++ "P" (str.++ "Q" (str.++ "R" "S")))))))))))

(check-sat)
(get-model)
