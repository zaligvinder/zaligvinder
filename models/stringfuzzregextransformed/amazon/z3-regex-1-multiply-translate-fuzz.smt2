(set-logic QF_S)
(declare-const S String)
(assert (not (str.in.re S (re.++ (str.to.re "oj6tzn*SFv4I9R'>FJ]hoocRSGFR9tAZqg") re.allchar))))
(assert (str.in.re S (re.union (re.union (re.++ (str.to.re "ch-ooj'\x0b'' 'C") re.allchar) (str.to.re "2*d8' 'c`,ZY'\t'")) re.allchar)))
(check-sat)
