(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "JJ") (re.* (str.to.re "MM"))))))
(assert (= (str.len x) 6))
(assert (not (= x "JJMMMM")))
(assert (not (= x "JJJJMM")))
(assert (not (= x "JJMMJJ")))
(check-sat)
