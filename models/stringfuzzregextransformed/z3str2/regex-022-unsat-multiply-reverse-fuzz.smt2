(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "bb") (re.* (str.to.re "F,"))))))
(assert (= (str.len x) 1))
(assert (not (= x "jekmm[bb")))
(assert (not (= x "bG)08a")))
(check-sat)
