(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= (str.len x) 3))
(assert (= x y))
(assert (str.in.re y (re.+ (re.range " " "9"))))
(assert (str.suffixof "" x))
(check-sat)
