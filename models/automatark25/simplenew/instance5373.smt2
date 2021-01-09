(declare-const X String)
; ^((.){1,}(\d){1,}(.){0,})$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ re.allchar) (re.+ (re.range "0" "9")) (re.* re.allchar)))))
(check-sat)
