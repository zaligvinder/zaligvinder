(set-logic QF_S)
(declare-const x String)
(assert (= x "eeddccddccbbaaeeddcc"))
(assert (str.in.re x (re.* (re.union (str.to.re "ddccbbaa") (str.to.re "eeddcc")))))
(check-sat)
