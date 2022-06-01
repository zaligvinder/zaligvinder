(declare-const X String)
; /^\/amor\d{0,2}\.jar/U
(assert (str.in_re X (re.++ (str.to_re "//amor") ((_ re.loop 0 2) (re.range "0" "9")) (str.to_re ".jar/U\u{a}"))))
(check-sat)
