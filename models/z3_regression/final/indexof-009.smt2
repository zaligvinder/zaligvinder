(set-logic ALL)
(set-info :status sat)
(declare-const i Int)
(declare-const X String)

(assert (= i (str.indexof "original" X 0) ) )
(assert (= (str.len X) 7))
(assert (>= i 1) )


(check-sat)
(get-model)
