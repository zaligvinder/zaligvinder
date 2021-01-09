(set-logic QF_S)
(set-option :produce-models true)


(assert (= true (= true false ) ))

(check-sat)
(get-model)