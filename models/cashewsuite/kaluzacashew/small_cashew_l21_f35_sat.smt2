(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= v0 v0))

(check-sat)
(get-model)
