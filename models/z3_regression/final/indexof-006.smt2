(set-logic ALL)
(set-info :status sat)
(declare-const i Int)

(assert (= i (str.indexof "abcdefg" "hh" 0) ) )

(check-sat)
(get-model)
