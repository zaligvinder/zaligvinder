(set-logic QF_S)
(declare-const x String)
(assert (= (str.len x) 11))
(assert (str.in.re x (re.+ (str.to.re "dD'@ovHeIzsf"))))
(assert (str.in.re x (re.+ (str.to.re "HhIJpHP""bOu'\x0b'\\(6aa"))))
(check-sat)
