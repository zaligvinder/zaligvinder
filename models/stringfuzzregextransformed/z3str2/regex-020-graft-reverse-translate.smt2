(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "f")))
(assert (= 3 (str.len x)))
(assert (not (= x "ff#")))
(assert (not (= x "f#f")))
(assert (not (= x "f##")))
(check-sat)
