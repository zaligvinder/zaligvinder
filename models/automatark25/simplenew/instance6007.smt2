(declare-const X String)
; ^([\d]*[1-9]+[\d]*)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))))))
(check-sat)
