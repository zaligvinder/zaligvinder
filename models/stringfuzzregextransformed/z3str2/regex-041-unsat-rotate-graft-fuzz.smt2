(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.union (str.to.re "3") (re.+ (str.to.re "")))))
(assert (str.in.re x (re.++ (str.to.re "5") (re.+ (str.to.re "x")))))
(assert (str.in.re x (re.union (re.* (re.+ (str.to.re "c"))) (str.to.re "."))))
(check-sat)
