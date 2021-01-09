(declare-const X String)
; /\/modules\/\d\.jar$/U
(assert (str.in.re X (re.++ (str.to.re "//modules/") (re.range "0" "9") (str.to.re ".jar/U\x0a"))))
(check-sat)
