(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)
(declare-fun v1 () String)
(declare-fun v2 () String)

(assert (= (str.len v0) 0))
(assert (= v1 "A"))
(assert (= v2 v2))
(assert (= v1 (str.++ v0 v2)))

(check-sat)
(get-model)
