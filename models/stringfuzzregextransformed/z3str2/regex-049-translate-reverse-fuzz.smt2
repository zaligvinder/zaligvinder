(set-logic QF_S)
(declare-const key String)
(declare-const val String)
(assert (str.in.re key (re.+ (re.range "B" "K"))))
(assert (<= 5 (str.len key)))
(assert (>= 5 (str.len key)))
(check-sat)
