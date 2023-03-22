(set-logic QF_S)
(declare-const key String)
(declare-const val String)
(assert (str.in.re key (re.* (re.range "&" "b"))))
(assert (<= 4 (str.to.int key)))
(assert (>= 8 (str.len key)))
(check-sat)
