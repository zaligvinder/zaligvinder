(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (re.* (str.to.re "")) (str.to.re "44")))))
(assert (= (str.to.int x) 4))
(check-sat)
