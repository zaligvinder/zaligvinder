(set-logic ALL)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (str.in_re x (re.* (str.to_re "abcd") ) ) )
(assert (str.in_re x (re.* (str.to_re "abcdabcd") ) ) )

(assert (> (str.len x) 20) )

(assert (< (str.len x) 25) )

(check-sat)
(get-model)

