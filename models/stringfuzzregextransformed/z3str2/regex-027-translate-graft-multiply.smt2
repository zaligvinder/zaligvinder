(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "MM") (str.to.re "JJ")))))
(assert (= 6 (str.len x)))
(assert (not (= x "MMMMJJ")))
(assert (not (= x "MMJJJJ")))
(assert (not (= x "JJMMJJ")))
(check-sat)
