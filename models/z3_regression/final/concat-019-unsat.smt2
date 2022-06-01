(set-logic ALL)
(set-info :status unsat)
(declare-const a String)

(assert (= (str.++ a "testhello") "test" ) )

(check-sat)
(get-model)