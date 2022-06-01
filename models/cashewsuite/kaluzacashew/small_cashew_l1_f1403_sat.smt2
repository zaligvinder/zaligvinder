(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= v0 "A"))

(check-sat)
(get-model)
