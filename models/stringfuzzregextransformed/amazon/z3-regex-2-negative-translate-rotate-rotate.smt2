(set-logic QF_S)
(declare-const S String)
(assert (str.in.re S (re.++ (str.to.re "LLL$$$") re.allchar)))
(assert (not (str.in.re S (re.++ (str.to.re "LLL") (re.++ (re.++ re.allchar (str.to.re "$$$")) re.allchar)))))
(check-sat)
