(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= (str.to.int x) 2))
(assert (= x y))
(assert (str.in.re y (re.+ (re.range "#" "b"))))
(assert (str.contains "4" x))
(check-sat)
