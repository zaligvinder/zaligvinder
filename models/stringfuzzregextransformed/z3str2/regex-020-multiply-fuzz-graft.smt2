(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "(") (str.to.re "x'' ''")))))
(assert (= 11 (str.to.int x)))
(assert (not (= x "aR,'' ''l+e")))
(assert (not (= x "bbat'b")))
(assert (not (= x "]8bmG""""~]b")))
(check-sat)
