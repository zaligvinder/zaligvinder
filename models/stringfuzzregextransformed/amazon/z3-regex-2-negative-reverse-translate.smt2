(set-logic QF_S)
(declare-const S String)
(assert (str.in.re S (re.++ re.allchar (str.to.re "AAAJJJ"))))
(assert (not (str.in.re S (re.++ re.allchar (re.++ (str.to.re "AAA") (re.++ re.allchar (str.to.re "JJJ")))))))
(check-sat)
