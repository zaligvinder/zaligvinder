(declare-const X String)
; ^([\(]{1}[0-9]{3}[\)]{1}[ ]{1}[0-9]{3}[\-]{1}[0-9]{4})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 1) (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ")")) ((_ re.loop 1 1) (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")))))
(check-sat)
