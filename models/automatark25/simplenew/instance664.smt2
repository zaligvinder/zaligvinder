(declare-const X String)
; ^([\d]*[1-9]+[\d]*)$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))))
(check-sat)
