(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "bbaa"))))
(assert (str.in.re x (re.+ (str.to.re "!!rraa"))))
(assert (str.in.re x (re.* (str.to.re "ccaabb44TTVVnnll99aa"))))
(check-sat)
