(set-logic ALL)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (str.in_re x (re.* (str.to_re "ab12") ) ) )
(assert (str.in_re y (re.* (re.* (str.to_re "ab12") ) ) ) )

(assert (= (str.len x)  4) )
(assert (= (str.len y)  8) )

(check-sat)
(get-model)

