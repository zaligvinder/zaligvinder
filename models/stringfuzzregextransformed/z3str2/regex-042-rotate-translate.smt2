(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "'\x0c'") (re.* (str.to.re "m")))))
(assert (str.in.re x (re.++ (re.* (re.* (str.to.re "x"))) (re.++ (str.to.re "'\x0c'") (str.to.re "m")))))
(assert (= 3 (str.len x)))
(check-sat)
