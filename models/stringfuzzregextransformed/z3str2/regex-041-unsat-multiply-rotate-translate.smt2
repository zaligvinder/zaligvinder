(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "^^") (re.* (str.to.re "EE")))))
(assert (str.in.re x (re.++ (str.to.re "SS") (re.* (str.to.re "SS")))))
(assert (str.in.re x (re.++ (re.* (re.* (str.to.re "SS"))) (re.++ (str.to.re "^^") (str.to.re "EE")))))
(check-sat)
