(set-logic QF_S)
(declare-const key String)
(declare-const val String)
(assert (str.in.re key (re.+ (re.range "3" "H"))))
(assert (<= 10 (str.len key)))
(assert (>= 9 (str.len key)))
(check-sat)
