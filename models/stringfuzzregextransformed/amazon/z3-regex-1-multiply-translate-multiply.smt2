(set-logic QF_S)
(declare-const S String)
(assert (not (str.in.re S (re.++ (str.to.re "oooooooooooocccccccccccc") re.allchar))))
(assert (str.in.re S (re.++ (re.++ (re.++ (str.to.re "oooooooooooo") re.allchar) (str.to.re "cccccccccccc")) re.allchar)))
(check-sat)
