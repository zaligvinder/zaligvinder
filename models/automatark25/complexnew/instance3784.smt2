(declare-const X String)
; ^\[0-9]{4}\-\[0-9]{2}\-\[0-9]{2}$
(assert (str.in.re X (re.++ (str.to.re "[0-9") ((_ re.loop 4 4) (str.to.re "]")) (str.to.re "-[0-9") ((_ re.loop 2 2) (str.to.re "]")) (str.to.re "-[0-9") ((_ re.loop 2 2) (str.to.re "]")) (str.to.re "\x0a"))))
; \x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax
(assert (not (str.in.re X (str.to.re "\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax\x0a"))))
(check-sat)
