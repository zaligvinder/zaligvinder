(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= (str.len v0) 0))
(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "G" "H"))))))))))
(assert (not (= v0 (str.++ "I" (str.++ "J" (str.++ "K" (str.++ "L" (str.++ "G" (str.++ "M" (str.++ "N" (str.++ "O" (str.++ "P" "K"))))))))))))

(check-sat)
(get-model)
