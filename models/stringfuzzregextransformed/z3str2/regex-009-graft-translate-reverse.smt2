(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "'t\\''D/"))))
(assert (str.in.re x (str.to.re "'t\\''D/'t\\''D/")))
(assert (> 20 (str.len x)))
(assert (< (str.len x) 25))
(check-sat)
