(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.union (re.union (str.to.re "00") (str.to.re "11")) (re.+ (str.to.re "2")))))
(check-sat)