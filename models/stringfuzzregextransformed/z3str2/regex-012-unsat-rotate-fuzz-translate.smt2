(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "!/5") (str.to.re "1VqRO&")))))
(assert (= 8 (str.len x)))
(check-sat)
