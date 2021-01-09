(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)
(declare-fun v1 () String)
(declare-fun v2 () String)

(assert (not (= v0 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "D" (str.++ "E" (str.++ "F" "G")))))))))
(assert (= v1 v1))
(assert (= v1 v2))
(assert (= v2 v2))

(check-sat)
(get-model)
