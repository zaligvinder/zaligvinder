(set-logic ALL)
(set-info :status sat)
(declare-const a String)

(assert (= (str.++ a "llo") "testhello" ) )

(check-sat)
(get-model)