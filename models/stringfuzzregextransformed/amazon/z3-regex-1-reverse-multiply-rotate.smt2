(set-logic QF_S)
(declare-const S String)
(assert (not (str.in.re S (re.++ re.allchar (str.to.re "bbbbbbaaaaaa")))))
(assert (str.in.re S (re.++ re.allchar (re.++ (re.++ (str.to.re "aaaaaa") (str.to.re "bbbbbb")) re.allchar))))
(check-sat)
