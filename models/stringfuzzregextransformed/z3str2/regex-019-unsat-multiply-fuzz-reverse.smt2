(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re ".."))))
(assert (= 10 (str.len x)))
(assert (not (= x "duaPer1h;2't\\'.)""""G[q..")))
(check-sat)
