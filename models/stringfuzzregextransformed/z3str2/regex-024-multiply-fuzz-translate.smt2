(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.+ (str.to.re "'\t'")) (str.to.re ";;")))))
(assert (str.in.re y (re.* (re.++ (re.+ (str.to.re "Aa")) (str.to.re "M")))))
(check-sat)
