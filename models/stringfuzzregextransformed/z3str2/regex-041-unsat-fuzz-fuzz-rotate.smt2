(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "b") (re.* (str.to.re "a")))))
(assert (str.in.re x (re.++ (str.to.re "c") (re.* (str.to.re "")))))
(assert (str.in.re x (re.union (re.+ (re.+ (str.to.re ""))) (re.++ (str.to.re "b") (str.to.re "")))))
(check-sat)
