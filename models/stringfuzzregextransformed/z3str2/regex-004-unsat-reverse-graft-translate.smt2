(set-logic QF_S)
(declare-const x String)
(assert (= x "GU=U='\x0c'|"))
(assert (str.in.re x (re.union (re.* (re.* (str.to.re "GU="))) (str.to.re "U='\x0c'|"))))
(check-sat)
