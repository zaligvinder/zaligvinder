(set-logic QF_S)
(declare-const S String)
(assert (str.in.re S (re.++ re.allchar (str.to.re "bbbaaa"))))
(assert (not (str.in.re S (re.++ (re.++ (str.to.re "aaa") (str.to.re "bbb")) re.allchar))))
(check-sat)
