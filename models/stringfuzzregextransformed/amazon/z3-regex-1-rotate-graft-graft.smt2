(set-logic QF_S)
(declare-const S String)
(assert (not (str.in.re S (re.++ (re.++ re.allchar (str.to.re "aaa")) re.allchar))))
(assert (str.in.re S (str.to.re "aaabbb")))
(check-sat)
