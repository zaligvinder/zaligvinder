(set-logic ALL)
(set-info :status sat)
(declare-const i Int)
(declare-const X String)

(assert (= i (str.indexof "a" "ab" 0) ) )


(check-sat)
(get-model)
