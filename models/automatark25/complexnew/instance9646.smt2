(declare-const X String)
; addrwww\x2Etrustedsearch\x2EcomX-Mailer\x3A
(assert (not (str.in.re X (str.to.re "addrwww.trustedsearch.comX-Mailer:\x13\x0a"))))
; ^(\d){8}$
(assert (not (str.in.re X (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^(5[1-5]\d{2})\d{12}|(4\d{3})(\d{12}|\d{9})$
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "5") (re.range "1" "5") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.union ((_ re.loop 12 12) (re.range "0" "9")) ((_ re.loop 9 9) (re.range "0" "9"))) (str.to.re "\x0a4") ((_ re.loop 3 3) (re.range "0" "9")))))))
; this\w+c\.goclick\.com\d
(assert (str.in.re X (re.++ (str.to.re "this") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "c.goclick.com") (re.range "0" "9") (str.to.re "\x0a"))))
(check-sat)
