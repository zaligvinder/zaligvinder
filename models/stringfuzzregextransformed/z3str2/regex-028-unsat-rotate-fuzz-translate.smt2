(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "t(Q[WQ"))))
(assert (str.in.re x (re.* (str.to.re ",<"))))
(assert (str.in.re x (re.* (str.to.re ",u,v"))))
(assert (> (str.to.int x) 2))
(check-sat)
