(declare-const X String)
; Validation of Mexican RFC for tax payers (individuals)
(assert (not (str.in.re X (str.to.re "Validation of Mexican RFC for tax payers individuals\x0a"))))
(check-sat)
