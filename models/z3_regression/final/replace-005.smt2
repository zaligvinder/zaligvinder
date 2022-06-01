(set-logic ALL)
(set-info :status sat)
(declare-const x String)
(declare-const y String)

(assert (= y (str.replace x "efg" "abcd")  ) )
(assert (= y "abcd") )

(check-sat)
(get-model)