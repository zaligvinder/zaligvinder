(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "w7@e$m.|GV$kk")))
(assert (str.in.re x (re.+ (str.to.re "W"))))
(assert (str.in.re x (re.+ (re.* (str.to.re "k")))))
(assert (> 2 (str.len x)))
(check-sat)
