(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "/") (re.* (str.to.re "j")))))
(assert (str.in.re x (re.++ (str.to.re "R") (re.* (str.to.re "R")))))
(assert (str.in.re x (re.++ (re.* (re.* (str.to.re "R"))) (re.++ (str.to.re "/") (str.to.re "j")))))
(check-sat)
