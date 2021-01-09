(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)
(declare-fun v1 () String)
(declare-fun v2 () String)
(declare-fun v3 () String)

(assert (= (str.len v0) 0))
(assert (= v1 v1))
(assert (= v2 v2))
(assert (= v3 (str.++ v2 v0)))
(assert (not (str.in.re v1 (str.to.re "A"))))

(check-sat)
(get-model)
