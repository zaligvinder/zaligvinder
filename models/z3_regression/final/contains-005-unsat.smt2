(set-logic ALL)
(set-info :status unsat)
(declare-const x String)

(assert (not (str.contains x "ef" ) ) )
(assert (str.contains x "efg" ) )


(check-sat)
(get-model)
