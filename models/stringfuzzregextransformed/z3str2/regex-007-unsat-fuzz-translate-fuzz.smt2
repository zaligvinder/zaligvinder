(set-logic QF_S)
(declare-const x String)
(assert (= (str.len x) 2))
(assert (str.in.re x (re.+ (str.to.re "?Vu"))))
(assert (str.in.re x (re.* (str.to.re "b'\r'#0W.OUi^ITfm@cZ"))))
(check-sat)
