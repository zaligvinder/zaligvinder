(declare-const X String)
; /\.php\?catalogp\=\d{2}$/U
(assert (not (str.in.re X (re.++ (str.to.re "/.php?catalogp=") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "/U\x0a")))))
(check-sat)
