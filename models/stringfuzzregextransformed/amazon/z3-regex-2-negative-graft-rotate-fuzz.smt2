(set-logic QF_S)
(declare-const S String)
(assert (str.in.re S (re.union (str.to.re "CK5Uh'\t''\x0c'b") re.allchar)))
(assert (not (str.in.re S (re.union (str.to.re "k;a") re.allchar))))
(check-sat)
