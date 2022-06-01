(set-logic ALL)
(set-info :status unsat)
(declare-const x String)
(declare-const y String)


(assert (str.in_re x (re.* (str.to_re "ab") ) ) )
(assert (str.in_re x (re.* (str.to_re "abab") ) ) )
(assert (str.in_re x (re.* (str.to_re "ababac") ) ) )

(assert (> (str.len x)  1) )

(check-sat)
(get-model)

