(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "b") (str.to.re "")))))
(assert (= 4 (str.len x)))
(assert (not (= x "P{")))
(assert (not (= x "_elu.")))
(assert (not (= x "a")))
(check-sat)
