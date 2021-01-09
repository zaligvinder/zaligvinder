(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.union (re.* (str.to.re "000")) (re.union (str.to.re "111") (str.to.re "22")))))
(check-sat)