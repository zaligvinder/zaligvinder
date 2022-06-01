(set-logic ALL)
(set-option :produce-models true)

(declare-fun v0 () String)

(assert (not (= (str.len v0) 0)))

(check-sat)
(get-model)
