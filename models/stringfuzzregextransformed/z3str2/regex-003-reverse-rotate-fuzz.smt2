(set-logic QF_S)
(declare-const x String)
(assert (= x "cdaf!:"))
(assert (str.in.re x (re.* (re.union (str.to.re "nJm![") (str.to.re "=")))))
(check-sat)
