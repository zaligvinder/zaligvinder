(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.union (str.to.re "aa") (re.+ (str.to.re "O")))))
(assert (str.in.re x (re.++ (str.to.re "v") (re.union (re.* (str.to.re "b1")) (re.+ (str.to.re "c|"))))))
(assert (= 2 (str.len x)))
(check-sat)
