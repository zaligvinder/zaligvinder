(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.union (str.to.re "a") (re.* (str.to.re "b")))))
(assert (str.in.re x (re.++ (str.to.re "c") (re.+ (re.+ (re.union (str.to.re "b") (str.to.re "")))))))
(assert (= 4 (str.len x)))
(check-sat)
