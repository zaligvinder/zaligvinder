(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "h""hh""hh""hh""hh""hh""hh""hh""hh""h"))
(assert (str.in.re x (re.* (re.* (str.to.re "DhUd0WhC")))))
(check-sat)
