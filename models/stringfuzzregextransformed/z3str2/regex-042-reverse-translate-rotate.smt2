(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (re.* (str.to.re "d")) (str.to.re "h"))))
(assert (str.in.re x (re.++ (re.* (str.to.re "h")) (re.* (re.++ (str.to.re "?") (str.to.re "d"))))))
(assert (= 3 (str.len x)))
(check-sat)
