(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "__((VV--oogg"))))
(assert (str.in.re y (re.* (str.to.re "__>>XXIILLbb"))))
(assert (= (str.len x) 8))
(check-sat)
