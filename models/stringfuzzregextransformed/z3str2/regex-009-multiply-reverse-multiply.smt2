(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "ddddccccbbbbaaaa"))))
(assert (str.in.re x (re.* (str.to.re "ddddccccbbbbaaaaddddccccbbbbaaaa"))))
(assert (> (str.len x) 80))
(assert (< (str.len x) 100))
(check-sat)
