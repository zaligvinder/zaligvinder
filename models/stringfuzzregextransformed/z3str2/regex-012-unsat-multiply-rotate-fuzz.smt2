(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "aabcdd") (str.to.re "w'\x0b'}O~z22")))))
(assert (= 1 (str.to.int x)))
(check-sat)
