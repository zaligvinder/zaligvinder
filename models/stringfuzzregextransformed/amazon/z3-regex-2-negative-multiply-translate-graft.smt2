(set-logic QF_S)
(declare-const S String)
(assert (str.in.re S (re.++ (str.to.re "MMMMMMDDDDDD") re.allchar)))
(assert (not (str.in.re S (re.++ (re.++ (str.to.re "MMMMMM") (str.to.re "DDDDDD")) re.allchar))))
(check-sat)
