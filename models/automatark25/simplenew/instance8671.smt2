(declare-const X String)
; /\x2f(css|upload)\x2f[a-z]{2}[0-9]{3}\x2eccs/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.union (str.to.re "css") (str.to.re "upload")) (str.to.re "/") ((_ re.loop 2 2) (re.range "a" "z")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".ccs/U\x0a")))))
(check-sat)
