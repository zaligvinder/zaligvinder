(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x ""))
(assert (str.in.re x (re.* (str.to.re "dX?V'\x0b'dA]o"))))
(check-sat)
