(declare-const X String)
; addrwww\x2Etrustedsearch\x2EcomX-Mailer\x3A
(assert (not (str.in.re X (str.to.re "addrwww.trustedsearch.comX-Mailer:\x13\x0a"))))
; ((FI|HU|LU|MT|SI)-?)?[0-9]{8}
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "FI") (str.to.re "HU") (str.to.re "LU") (str.to.re "MT") (str.to.re "SI")) (re.opt (str.to.re "-")))) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
