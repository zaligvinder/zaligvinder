(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.+ (str.to.re "")) (str.to.re "")))))
(assert (= (str.len x) 0))
(assert (not (= x "$'\n'")))
(assert (not (= x "' 'cP")))
(check-sat)
