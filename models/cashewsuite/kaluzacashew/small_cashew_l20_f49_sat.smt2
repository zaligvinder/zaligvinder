(set-logic QF_S)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= v0 v0))
(assert (not (str.in.re v0 (str.to.re "A"))))

(check-sat)
(get-model)
