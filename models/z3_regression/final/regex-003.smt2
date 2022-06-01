(set-logic ALL)
(set-info :status sat)
(declare-const x String)


(assert (= x "cdeabcdcde"))
(assert (str.in_re x (re.* (re.union (str.to_re "abcd") (str.to_re "cde") ) ) ) )



(check-sat)
(get-model)

