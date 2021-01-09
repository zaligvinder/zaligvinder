(declare-const X String)
; ^01[0-2]\d{8}$
(assert (str.in.re X (re.++ (str.to.re "01") (re.range "0" "2") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
