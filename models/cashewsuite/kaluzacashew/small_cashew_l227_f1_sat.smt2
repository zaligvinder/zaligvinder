(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)
(declare-fun v1 () String)
(declare-fun v2 () String)

(assert (= v0 v0))
(assert (= v0 v1))
(assert (= v1 v1))
(assert (= v2 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "F" "G"))))))))

(check-sat)
(get-model)
