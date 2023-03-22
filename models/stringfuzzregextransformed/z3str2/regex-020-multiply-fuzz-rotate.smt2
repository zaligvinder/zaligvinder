(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (re.+ (str.to.re "x'' ''")) (str.to.re "(")))))
(assert (= (str.to.int x) 11))
(assert (not (= x "aR,'' ''l+e")))
(assert (not (= x "bbat'b")))
(assert (not (= x "]8bmG""""~]b")))
(check-sat)
