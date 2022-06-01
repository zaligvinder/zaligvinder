(set-logic ALL)
(set-info :status sat)
(declare-const i Int)

(assert (= i (str.indexof "abc" "b" 0) ) )

(check-sat)
(get-model)
