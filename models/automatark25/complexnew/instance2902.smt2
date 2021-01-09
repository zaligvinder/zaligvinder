(declare-const X String)
; cyber@yahoo\x2Ecom\s+Host\x3a\x7D\x7Crichfind\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "cyber@yahoo.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:}|richfind.com\x0a")))))
; ^[0-9]{6}$
(assert (not (str.in.re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
