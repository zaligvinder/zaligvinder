(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "s""I(.'"))))
(assert (= 6 (str.len x)))
(assert (not (= x "B%7$:?<:e;")))
(check-sat)
