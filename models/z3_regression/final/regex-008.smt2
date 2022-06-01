(set-logic ALL)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (str.in_re x (str.to_re "abc") ) )



(check-sat)
(get-model)

