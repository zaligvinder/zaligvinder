(set-logic QF_S)
(declare-const x String)
(assert (= (str.len x) 27))
(assert (str.in.re x (re.+ (str.to.re "Rm{~1ZZ8m"))))
(assert (str.in.re x (re.* (str.to.re "Y!S'_q,:hB-h7E"))))
(check-sat)
