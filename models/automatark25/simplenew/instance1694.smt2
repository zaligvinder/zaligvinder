(declare-const X String)
; Validation of Mexican RFC for tax payers (individuals)
(assert (str.in_re X (str.to_re "Validation of Mexican RFC for tax payers individuals\u{a}")))
(check-sat)
