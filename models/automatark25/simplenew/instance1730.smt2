(declare-const X String)
; /^\/\d+\.ld$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "0" "9")) (str.to.re ".ld/U\x0a")))))
(check-sat)
