(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "?."))))
(assert (str.in.re x (re.* (str.to.re "M&l&2ci|ChTM0dfFbtCeH2_d"))))
(assert (> (str.len x) 34))
(assert (< (str.to.int x) 21))
(check-sat)
