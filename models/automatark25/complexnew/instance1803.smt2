(declare-const X String)
; Spynova\s+ZC-Bridge.*Host\x3A\s+TPSystemHost\x3AHost\x3ashow\x2Eroogoo\x2EcomX-Mailer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Spynova") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ZC-Bridge") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TPSystemHost:Host:show.roogoo.comX-Mailer:\x13\x0a")))))
; ^([A-z]{2}\d{7})|([A-z]{4}\d{10})$
(assert (str.in.re X (re.union (re.++ ((_ re.loop 2 2) (re.range "A" "z")) ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") ((_ re.loop 4 4) (re.range "A" "z")) ((_ re.loop 10 10) (re.range "0" "9"))))))
; ^.{4,8}$
(assert (str.in.re X (re.++ ((_ re.loop 4 8) re.allchar) (str.to.re "\x0a"))))
(check-sat)
