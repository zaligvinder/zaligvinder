(set-logic QF_S)
(declare-const S String)
(assert (str.in.re S (re.union (str.to.re "RsN:") re.allchar)))
(assert (not (str.in.re S (re.union (str.to.re "Co52ea") re.allchar))))
(check-sat)
