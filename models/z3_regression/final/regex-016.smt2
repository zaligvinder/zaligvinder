(set-logic ALL)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (str.in_re x (re.* (re.union (str.to_re "abcd") (str.to_re "123") ) ) ) )

(assert (= 11 (str.len x)))

(assert (not (= x "abcd123abcd")))

(assert (not (= x "abcdabcd123")))




(check-sat)
(get-model)

