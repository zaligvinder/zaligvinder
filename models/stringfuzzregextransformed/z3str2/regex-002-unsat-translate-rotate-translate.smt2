(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "yyyyyyyyy"))
(assert (str.in.re x (re.* (str.to.re "jU."))))
(check-sat)
