(set-logic QF_S)
(declare-const key String)
(declare-const val String)
(assert (str.in.re key (re.+ (re.range "a" "j"))))
(assert (<= 2 (str.len key)))
(assert (>= 4 (str.len key)))
(check-sat)
