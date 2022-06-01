(set-logic ALL)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (str.in_re x (re.* (str.to_re "ab") ) ) )
(assert (str.in_re x (re.* (str.to_re "abab") ) ) )
(assert (str.in_re x (re.* (str.to_re "ababac") ) ) )


(check-sat)
(get-model)

