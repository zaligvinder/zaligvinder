(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "MMMMMMMMMMMMMMMMMM"))
(assert (str.in.re x (re.* (str.to.re "CCkk'\r''\r'"))))
(check-sat)
