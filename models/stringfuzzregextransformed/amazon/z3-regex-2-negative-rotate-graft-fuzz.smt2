(set-logic QF_S)
(declare-const S String)
(assert (str.in.re S (re.union (str.to.re "am""r@(0bF") re.allchar)))
(assert (not (str.in.re S (re.++ re.allchar (re.union (str.to.re "b' ':") (str.to.re "TqJPHudC"))))))
(check-sat)
