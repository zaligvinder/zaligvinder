(set-logic QF_S)
(declare-const S String)
(assert (not (str.in.re S (re.++ (str.to.re "ddddddddddddKKKKKKKKKKKK") re.allchar))))
(assert (str.in.re S (re.++ (re.++ (re.++ (str.to.re "dddddddddddd") re.allchar) (str.to.re "KKKKKKKKKKKK")) re.allchar)))
(check-sat)
