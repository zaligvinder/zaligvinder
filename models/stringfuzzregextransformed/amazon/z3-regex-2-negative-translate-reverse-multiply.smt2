(set-logic QF_S)
(declare-const S String)
(assert (str.in.re S (re.++ re.allchar (str.to.re "$$$$$$LLLLLL"))))
(assert (not (str.in.re S (re.++ re.allchar (re.++ (str.to.re "$$$$$$") (re.++ re.allchar (str.to.re "LLLLLL")))))))
(check-sat)
