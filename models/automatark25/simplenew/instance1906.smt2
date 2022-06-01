(declare-const X String)
; ^[1-5]$
(assert (not (str.in_re X (re.++ (re.range "1" "5") (str.to_re "\u{a}")))))
(check-sat)
