(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)
(declare-fun v1 () String)
(declare-fun v2 () String)
(declare-fun v3 () String)
(declare-fun v4 () String)

(assert (= (str.len v0) 7))
(assert (>= (str.len v1) 20))
(assert (= v2 v2))
(assert (= v3 (str.++ v2 v4)))
(assert (= v1 (str.++ v0 v3)))

(check-sat)
(get-model)
