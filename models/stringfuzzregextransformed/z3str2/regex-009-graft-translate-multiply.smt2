(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "//DD''''\\\\tt''"))))
(assert (str.in.re x (str.to.re "//DD''''\\\\tt''//DD''''\\\\tt''")))
(assert (> 40 (str.len x)))
(assert (< (str.len x) 50))
(check-sat)
