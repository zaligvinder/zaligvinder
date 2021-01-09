(declare-const X String)
; /^GET\s\x2f[A-F0-9]{152}/m
(assert (not (str.in.re X (re.++ (str.to.re "/GET") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/") ((_ re.loop 152 152) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "/m\x0a")))))
(check-sat)
