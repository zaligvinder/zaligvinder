(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "?\\o0p??\\o0p?"))
(assert (str.in.re x (re.* (re.+ (str.to.re "?\\o0>?Pe4x")))))
(check-sat)
