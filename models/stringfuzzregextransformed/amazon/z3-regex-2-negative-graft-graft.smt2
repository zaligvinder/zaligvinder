(set-logic QF_S)
(declare-const S String)
(assert (str.in.re S (re.++ (re.++ (re.++ (str.to.re "bbb") (re.++ (str.to.re "aaa") re.allchar)) re.allchar) re.allchar)))
(assert (not (str.in.re S (str.to.re "aaabbb"))))
(check-sat)
