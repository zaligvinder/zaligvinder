(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "DD;;tt;;"))))
(assert (str.in.re x (re.* (str.to.re "DD;;tt;;DD;;tt;;"))))
(assert (str.in.re x (re.* (str.to.re "DD;;tt;;DD;;tt;;DD&&"))))
(assert (> (str.len x) 2))
(check-sat)
