(set-logic QF_S)
(declare-const S String)
(assert (not (str.in.re S (re.++ re.allchar (str.to.re "bZV[hbaBM")))))
(assert (str.in.re S (re.++ re.allchar (re.union (re.union (str.to.re "/a:") re.allchar) (str.to.re "Ubd")))))
(check-sat)
