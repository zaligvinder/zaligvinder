(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "") (re.* (str.to.re "b")))))
(assert (str.in.re x (re.union (re.union (re.+ (str.to.re "")) (re.* (str.to.re "b"))) (str.to.re ")"))))
(assert (= 1 (str.to.int x)))
(check-sat)
