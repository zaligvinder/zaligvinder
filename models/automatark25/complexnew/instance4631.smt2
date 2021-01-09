(declare-const X String)
; ^[0-9]{8}R[A-HJ-NP-TV-Z]$
(assert (str.in.re X (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "R") (re.union (re.range "A" "H") (re.range "J" "N") (re.range "P" "T") (re.range "V" "Z")) (str.to.re "\x0a"))))
; WindowsAcmeReferer\x3A
(assert (not (str.in.re X (str.to.re "WindowsAcmeReferer:\x0a"))))
(check-sat)
