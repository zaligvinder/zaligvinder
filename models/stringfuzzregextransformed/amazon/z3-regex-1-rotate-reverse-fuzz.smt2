(set-logic QF_S)
(declare-const S String)
(assert (not (str.in.re S (re.union re.allchar (str.to.re "b$'\x0b'%@")))))
(assert (str.in.re S (re.++ (re.++ (re.++ re.allchar (str.to.re "a")) (str.to.re "bbb")) re.allchar)))
(check-sat)
