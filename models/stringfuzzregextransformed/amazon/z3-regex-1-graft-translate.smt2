(set-logic QF_S)
(declare-const S String)
(assert (not (str.in.re S (re.++ (str.to.re "JJJ+++") re.allchar))))
(assert (str.in.re S (re.++ (re.++ (str.to.re "+++") (re.++ (str.to.re "JJJ") re.allchar)) re.allchar)))
(check-sat)
