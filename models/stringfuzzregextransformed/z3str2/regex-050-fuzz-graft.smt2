(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= 0 (str.to.int x)))
(assert (= x y))
(assert (str.in.re y (re.+ (re.range "a" "b"))))
(assert (str.suffixof "1" x))
(check-sat)
