(set-logic QF_S)
(declare-const x String)
(assert (= x "'\x0c'p$f'\n'=f$f'\n'=fj"))
(assert (str.in.re x (re.union (re.* (re.* (str.to.re "$f'\n'=fj"))) (str.to.re "'\x0c'p$f'\n'=f"))))
(check-sat)
