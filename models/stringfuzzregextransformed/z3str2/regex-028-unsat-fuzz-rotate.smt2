(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "b"))))
(assert (str.in.re x (re.+ (str.to.re "aRN&>L7U"))))
(assert (str.in.re x (re.* (str.to.re "a4Ko.Ep'\\t'aa;P+@"))))
(assert (> (str.to.int x) 1))
(check-sat)
