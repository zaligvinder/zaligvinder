(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "u") (re.+ (str.to.re "b")))))
(assert (str.in.re x (re.union (str.to.re "F") (re.+ (str.to.re "5")))))
(assert (str.in.re x (re.++ (str.to.re "c") (re.* (re.* (re.++ (str.to.re "'\x0c'") (str.to.re "v")))))))
(check-sat)
