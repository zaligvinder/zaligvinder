(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "aa'\n'' '$0q0sajlP!yea"))
(assert (str.in.re x (re.+ (str.to.re "Ksgc"))))
(check-sat)
