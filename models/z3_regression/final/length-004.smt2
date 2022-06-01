(set-logic ALL)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (= y x) )
(assert (= (str.len y) 4) )
(assert (or (= x "fg") (= x "abcd") ) )
;(assert (<= (str.len y) 5) )

(check-sat)
(get-model)
