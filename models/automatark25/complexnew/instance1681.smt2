(declare-const X String)
; Host\x3a\x7D\x7BPort\x3Awww\x2Einstafinder\x2Ecom
(assert (str.in.re X (str.to.re "Host:}{Port:www.instafinder.com\x0a")))
; ^[0-9]{5}([\s-]{1}[0-9]{4})?$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
; "^[A-Z]{1}\d{7}$
(assert (not (str.in.re X (re.++ (str.to.re "\x22") ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
