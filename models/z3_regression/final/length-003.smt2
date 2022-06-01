(set-logic ALL)
(set-info :status sat)
(declare-const x String)
(declare-const y String)

(assert (= y "abcde") )
(assert (= y x) )
(assert (<= (str.len x) 5) )


(check-sat)
(get-model)
