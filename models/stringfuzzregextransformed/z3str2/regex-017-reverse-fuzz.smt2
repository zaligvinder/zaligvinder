(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "B*") (re.++ (str.to.re "P~j") (str.to.re "31"))))))
(assert (= 4 (str.len x)))
(check-sat)
