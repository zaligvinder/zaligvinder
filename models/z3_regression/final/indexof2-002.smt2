(set-logic ALL)
(set-info :status sat)
(declare-const i Int)

(assert (= i (str.indexof "abc" "b" 1) ) )

(check-sat)
(get-model)
