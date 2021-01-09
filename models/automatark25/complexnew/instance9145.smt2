(declare-const X String)
; ^[1-5]$
(assert (str.in.re X (re.++ (re.range "1" "5") (str.to.re "\x0a"))))
; cash loans, long term loans, unsecured loans, 12 month loans, bad credit loans,
(assert (str.in.re X (str.to.re "cash loans, long term loans, unsecured loans, 12 month loans, bad credit loans,\x0a")))
(check-sat)
