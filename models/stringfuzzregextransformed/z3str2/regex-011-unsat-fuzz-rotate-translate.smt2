(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "Uc[H'\x0b'm"))))
(assert (str.in.re y (re.* (str.to.re "U/XkZr"))))
(assert (= (str.len x) 4))
(check-sat)
