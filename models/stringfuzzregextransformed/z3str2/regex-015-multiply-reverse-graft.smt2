(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "2211bbaa"))))
(assert (str.in.re y (re.* (str.to.re "2211bbaa"))))
(assert (= (str.len x) (str.len y)))
(assert (= 8 16))
(check-sat)
