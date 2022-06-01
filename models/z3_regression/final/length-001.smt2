(set-logic ALL)
(set-info :status sat)
(declare-const i Int)
(declare-const x String)

(assert (>= 3 ( str.len x ) ) )


(check-sat)
(get-model)