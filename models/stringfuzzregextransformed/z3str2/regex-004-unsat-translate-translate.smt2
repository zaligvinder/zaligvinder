(set-logic QF_S)
(declare-const x String)
(assert (= x "{-uVuVoks0$o"))
(assert (str.in.re x (re.union (re.* (str.to.re "{-uV")) (re.* (str.to.re "uVoks0$o")))))
(check-sat)
