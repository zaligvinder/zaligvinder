(set-logic ALL)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (str.in_re x (re.* (re.union (str.to_re "AB") (str.to_re "123") ) ) ) )

(assert (= 5 (str.len x)))

(assert (not (= x "123AB")))






(check-sat)
(get-model)

