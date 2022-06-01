(declare-const X String)
; ^[A-Z]$
(assert (not (str.in_re X (re.++ (re.range "A" "Z") (str.to_re "\u{a}")))))
(check-sat)
