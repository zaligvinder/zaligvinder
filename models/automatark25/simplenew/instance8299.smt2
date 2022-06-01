(declare-const X String)
; cash loans, long term loans, unsecured loans, 12 month loans, bad credit loans,
(assert (str.in_re X (str.to_re "cash loans, long term loans, unsecured loans, 12 month loans, bad credit loans,\u{a}")))
(check-sat)
