(declare-const X String)
; /\/count\d{2}\.php$/U
(assert (str.in_re X (re.++ (str.to_re "//count") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ".php/U\u{a}"))))
(check-sat)
