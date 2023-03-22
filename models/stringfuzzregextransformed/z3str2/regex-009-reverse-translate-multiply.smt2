(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "QQ??zz--"))))
(assert (str.in.re x (re.* (str.to.re "QQ??zz--QQ??zz--"))))
(assert (> (str.len x) 40))
(assert (< (str.len x) 50))
(check-sat)
