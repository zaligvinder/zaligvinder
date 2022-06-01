(declare-const X String)
; ^[1-5]$
(assert (str.in_re X (re.++ (re.range "1" "5") (str.to_re "\u{a}"))))
; cash loans, long term loans, unsecured loans, 12 month loans, bad credit loans,
(assert (str.in_re X (str.to_re "cash loans, long term loans, unsecured loans, 12 month loans, bad credit loans,\u{a}")))
(check-sat)
