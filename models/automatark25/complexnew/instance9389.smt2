(declare-const X String)
; httphostHost\x3aAgent\x22
(assert (str.in.re X (str.to.re "httphostHost:Agent\x22\x0a")))
; ^((.){1,}(\d){1,}(.){0,})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.+ re.allchar) (re.+ (re.range "0" "9")) (re.* re.allchar))))
(check-sat)
