(declare-const X String)
; /\.php\?catalogp\=\d{2}$/U
(assert (str.in_re X (re.++ (str.to_re "/.php?catalogp=") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "/U\u{a}"))))
(check-sat)
