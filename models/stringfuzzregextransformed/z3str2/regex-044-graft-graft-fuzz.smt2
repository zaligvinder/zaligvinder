(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.* (re.range "." "9"))))
(assert (= 1 (str.len x)))
(assert (not (= x "")))
(assert (not (= x ".")))
(assert (not (= x "")))
(assert (not (= x "")))
(assert (not (= x "8")))
(assert (not (= x "m")))
(assert (not (= x "8")))
(assert (not (= x "")))
(assert (not (= x "P")))
(check-sat)
