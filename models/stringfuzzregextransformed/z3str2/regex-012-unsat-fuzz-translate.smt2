(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "kR]?+0Y]/") (str.to.re "1}9a3")))))
(assert (= 4 (str.to.int x)))
(check-sat)
