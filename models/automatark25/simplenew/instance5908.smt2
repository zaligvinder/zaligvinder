(declare-const X String)
; /\/modules\/\d\.jar$/U
(assert (str.in_re X (re.++ (str.to_re "//modules/") (re.range "0" "9") (str.to_re ".jar/U\u{a}"))))
(check-sat)
