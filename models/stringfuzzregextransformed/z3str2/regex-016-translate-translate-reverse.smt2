(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "YX~M") (str.to.re "321")))))
(assert (= 11 (str.len x)))
(assert (not (= x "YX~M321YX~M")))
(assert (not (= x "321YX~MYX~M")))
(check-sat)
