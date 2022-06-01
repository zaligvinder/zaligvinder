(set-logic ALL)
(set-info :status unsat)
(declare-const x String)
(declare-const y String)


(assert (str.in_re x (re.* (re.union (str.to_re "abcd") (str.to_re "123") ) ) ) )

(assert (= 5 (str.len x)))


(check-sat)
(get-model)

