(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "CC") (str.to.re "jj")))))
(assert (= 6 (str.len x)))
(assert (not (= x "CCCCjj")))
(assert (not (= x "CCjjjj")))
(assert (not (= x "jjCCjj")))
(check-sat)
