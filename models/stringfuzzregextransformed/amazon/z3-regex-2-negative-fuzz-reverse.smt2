(set-logic QF_S)
(declare-const S String)
(assert (str.in.re S (re.++ re.allchar (str.to.re "U1'c0x\\'e,a"))))
(assert (not (str.in.re S (re.++ re.allchar (re.++ (str.to.re "b") (re.++ re.allchar (str.to.re "?w*a")))))))
(check-sat)
