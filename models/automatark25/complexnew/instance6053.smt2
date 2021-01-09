(declare-const X String)
; ^(.){0,20}$
(assert (not (str.in.re X (re.++ ((_ re.loop 0 20) re.allchar) (str.to.re "\x0a")))))
; /^\/\d+\.ld$/U
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "0" "9")) (str.to.re ".ld/U\x0a"))))
(check-sat)
