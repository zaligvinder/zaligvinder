(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "BBAA") (str.to.re "332211")))))
(assert (= 10 (str.len x)))
(assert (not (= x "BBAA332211")))
(check-sat)
