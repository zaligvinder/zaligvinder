(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)
(declare-fun v1 () String)
(declare-fun v2 () String)
(declare-fun v3 () String)
(declare-fun v4 () String)

(assert (= (str.len v0) 0))
(assert (= (str.len v1) 0))
(assert (not (= (str.len v2) 0)))
(assert (not (= v3 "A")))
(assert (= v4 v4))
(assert (= v4 v4))
(assert (= v3 (str.++ v0 v4)))
(assert (= v2 (str.++ v1 v4)))

(check-sat)
(get-model)
