(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "2!:"))))
(assert (str.in.re x (re.+ (str.to.re "]a9~t"))))
(assert (str.in.re x (re.* (str.to.re "bba"))))
(assert (> (str.to.int x) 1))
(check-sat)
