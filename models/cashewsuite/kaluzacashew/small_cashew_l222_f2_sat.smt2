(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= (str.len v0) 0))
(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "G" "H"))))))))))
(assert (not (= v0 (str.++ "I" (str.++ "J" (str.++ "A" (str.++ "K" (str.++ "G" (str.++ "L" (str.++ "M" (str.++ "A" (str.++ "G" "N"))))))))))))

(check-sat)
(get-model)
