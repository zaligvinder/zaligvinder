(set-logic QF_S)
(declare-const x String)
(assert (= x "d}iP+l6}HgQLxmFrDfE]H~`"))
(assert (str.in.re x (re.* (str.to.re "jba"))))
(check-sat)
