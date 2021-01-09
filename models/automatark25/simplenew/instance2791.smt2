(declare-const X String)
; on\dstepwww\x2Ekornputers\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "on") (re.range "0" "9") (str.to.re "stepwww.kornputers.com\x0a"))))
(check-sat)
