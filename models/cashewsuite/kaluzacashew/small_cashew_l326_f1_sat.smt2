(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)
(declare-fun v1 () String)
(declare-fun v2 () String)
(declare-fun v3 () String)
(declare-fun v4 () String)

(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "D" (str.++ "B" (str.++ "E" (str.++ "G" (str.++ "H" (str.++ "C" (str.++ "I" (str.++ "H" (str.++ "B" (str.++ "J" (str.++ "D" "K")))))))))))))))))))))
(assert (= v1 v1))
(assert (= v2 v2))
(assert (= v3 (str.++ "J" (str.++ "D" "K"))))
(assert (= v1 (str.++ v2 v4)))
(assert (= v0 (str.++ v1 v3)))
(assert (= v4 (str.++ "E" (str.++ "G" (str.++ "H" (str.++ "C" (str.++ "I" (str.++ "H" "B"))))))))

(check-sat)
(get-model)
