(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)
(declare-fun v1 () String)
(declare-fun v2 () String)
(declare-fun v3 () String)

(assert (= v0 v1))
(assert (= v2 v3))
(assert (= v3 v0))
(assert (= v3 v3))
(assert (= v1 v1))
(assert (= v2 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "F" (str.++ "G" (str.++ "H" (str.++ "I" (str.++ "B" (str.++ "J" (str.++ "K" (str.++ "G" (str.++ "L" "G"))))))))))))))))

(check-sat)
(get-model)
