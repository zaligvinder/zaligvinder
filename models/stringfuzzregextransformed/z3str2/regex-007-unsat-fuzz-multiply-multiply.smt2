(set-logic QF_S)
(declare-const x String)
(assert (= (str.to.int x) 48))
(assert (str.in.re x (re.+ (str.to.re "$$$$!!!!eeeedddd"))))
(assert (str.in.re x (re.* (str.to.re "aaaaAAAAhhhh''''{{{{::::"))))
(check-sat)
