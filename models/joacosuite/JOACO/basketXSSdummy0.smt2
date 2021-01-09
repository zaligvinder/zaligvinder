(set-option :produce-models true)

(assert (= true false ) )

(check-sat)
(get-model)
