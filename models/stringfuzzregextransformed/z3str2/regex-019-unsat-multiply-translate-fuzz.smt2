(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "!"))))
(assert (= 4 (str.len x)))
(assert (not (= x "!!nK$9*8`:^x!,!!Hn'QLQ0>-")))
(check-sat)
