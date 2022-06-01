(set-logic ALL)
(set-option :produce-models true)


(assert (= true (= true false ) ))

(check-sat)
(get-model)