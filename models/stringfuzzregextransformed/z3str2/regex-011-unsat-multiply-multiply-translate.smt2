(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "ttttrrrr^^^^>>>>"))))
(assert (str.in.re y (re.* (str.to.re "ttttrrrr^^^^>>>>"))))
(assert (= (str.len x) 24))
(check-sat)
