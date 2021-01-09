(declare-const X String)
; ^\S{2}\d{7}$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
