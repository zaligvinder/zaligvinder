(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (re.* (str.to.re "tt")) (str.to.re "")))))
(assert (= (str.len x) 12))
(assert (not (= x "##,,??aa")))
(assert (not (= x "aa..kk**bb")))
(assert (not (= x "BB55''' '' '''bb")))
(check-sat)
