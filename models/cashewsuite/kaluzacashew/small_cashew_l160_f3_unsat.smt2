(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= v0 (str.++ "A" (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "G" (str.++ "H" "I")))))))))))
(assert (= v0 (str.++ "J" (str.++ "K" (str.++ "E" (str.++ "E" (str.++ "C" (str.++ "E" (str.++ "L" (str.++ "M" (str.++ "N" "J")))))))))))

(check-sat)
(get-model)
