(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "XX") (re.* (str.to.re "**")))))
(assert (str.in.re x (re.++ (re.* (re.* (str.to.re "$$"))) (re.++ (str.to.re "XX") (str.to.re "**")))))
(assert (= 6 (str.len x)))
(check-sat)
