(set-logic QF_S)
(declare-const x String)
(assert (= 16 (str.len x)))
(assert (str.in.re x (str.to.re "ddeecc")))
(assert (str.in.re x (re.* (str.to.re "ddccbbaa"))))
(check-sat)
