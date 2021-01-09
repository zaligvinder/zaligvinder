(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)
(declare-fun v1 () String)
(declare-fun v2 () String)
(declare-fun v3 () String)
(declare-fun v4 () String)

(assert (= (str.len v0) 0))
(assert (>= (str.len v1) 5))
(assert (= v2 (str.++ v3 v4)))
(assert (= v1 (str.++ v0 v2)))
(assert (= v3 (str.++ "A" (str.++ "B" (str.++ "C" (str.++ "C" "D"))))))

(check-sat)
(get-model)
