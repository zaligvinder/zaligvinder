(set-logic QF_S)
(declare-const key String)
(declare-const val String)
(assert (str.in.re key (re.+ (re.range "Z" "b"))))
(assert (<= 10 (str.to.int key)))
(assert (>= 5 (str.to.int key)))
(check-sat)
