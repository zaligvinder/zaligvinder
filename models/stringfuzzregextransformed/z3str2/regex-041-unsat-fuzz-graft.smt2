(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.union (str.to.re "a") (re.+ (str.to.re "b")))))
(assert (str.in.re x (re.union (str.to.re "K") (re.* (str.to.re "S")))))
(assert (str.in.re x (re.++ (str.to.re "X") (re.++ (str.to.re "r") (re.+ (str.to.re ":"))))))
(check-sat)
