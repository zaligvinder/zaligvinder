(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "ddY7N97c6a"))))
(assert (str.in.re y (re.* (str.to.re "tD$)db]Y!'\x0c'8YQN+ncba\\8'v@"))))
(assert (= (str.to.int x) 0))
(check-sat)
