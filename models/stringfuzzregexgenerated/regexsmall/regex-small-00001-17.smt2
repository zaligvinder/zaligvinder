(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.union (re.+ (str.to.re "0")) (re.* (str.to.re "11")))))
(check-sat)