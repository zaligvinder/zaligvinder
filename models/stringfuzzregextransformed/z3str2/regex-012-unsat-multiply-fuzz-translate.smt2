(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "'\x0c'(,S") (str.to.re "2L12_2`' '3")))))
(assert (= 20 (str.to.int x)))
(check-sat)
