(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (re.* (str.to.re "a")) (str.to.re "b"))))
(assert (str.in.re x (re.++ (re.++ (str.to.re "a") (str.to.re "b")) (re.* (re.* (str.to.re "c"))))))
(assert (= 3 (str.len x)))
(check-sat)
