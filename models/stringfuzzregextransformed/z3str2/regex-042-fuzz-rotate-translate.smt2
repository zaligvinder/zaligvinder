(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.union (str.to.re "_") (re.* (str.to.re "=")))))
(assert (str.in.re x (re.++ (re.+ (re.+ (str.to.re "V"))) (re.union (str.to.re "_") (str.to.re "")))))
(assert (= 4 (str.len x)))
(check-sat)
