(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "0"))) (re.union (re.union (str.to.re "1") (str.to.re "22")) (re.* (str.to.re "333"))))))
(assert (<= 15 (str.len var0)))
(check-sat)