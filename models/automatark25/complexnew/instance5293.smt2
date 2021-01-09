(declare-const X String)
; /\/Java([0-9]{1,2})?\.jar\?java=[0-9]{2}/U
(assert (str.in.re X (re.++ (str.to.re "//Java") (re.opt ((_ re.loop 1 2) (re.range "0" "9"))) (str.to.re ".jar?java=") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "/U\x0a"))))
; ^[A-Z]{4}[1-8](\d){2}$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "A" "Z")) (re.range "1" "8") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^((0[1-9])|(1[0-2]))\/(\d{4})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\/modules\/\d\.jar$/U
(assert (str.in.re X (re.++ (str.to.re "//modules/") (re.range "0" "9") (str.to.re ".jar/U\x0a"))))
(check-sat)
