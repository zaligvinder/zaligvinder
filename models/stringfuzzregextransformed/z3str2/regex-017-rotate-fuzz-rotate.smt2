(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "23") (re.++ (str.to.re "AB") (str.to.re "4b![~oj'"))))))
(assert (= 3 (str.len x)))
(check-sat)
