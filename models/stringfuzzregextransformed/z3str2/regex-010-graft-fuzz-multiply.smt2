(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.+ (str.to.re "bbnnyy''' '' '''bb==AA((VVnnbbVVaattxx==%%")))))
(assert (str.in.re x (re.+ (str.to.re "aa::nnee""""""""--uu"))))
(assert (str.in.re x (str.to.re "RRBB22gg")))
(check-sat)
