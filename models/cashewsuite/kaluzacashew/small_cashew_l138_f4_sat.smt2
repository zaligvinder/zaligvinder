(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)
(declare-fun v1 () String)
(declare-fun v2 () String)

(assert (= (str.len v0) 0))
(assert (= (str.len v1) 0))
(assert (= v1 (str.++ v0 v2)))
(assert (not (str.in.re v2 (str.to.re "A"))))

(check-sat)
(get-model)
