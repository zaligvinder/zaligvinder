(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (= v0 v0))
(assert (not (str.in_re v0 (str.to_re "A"))))

(check-sat)
(get-model)
