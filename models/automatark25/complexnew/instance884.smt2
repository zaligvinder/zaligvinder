(declare-const X String)
; SecureNet\sHost\x3AX-Mailer\x3Aas\x2Estarware\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "SecureNet") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:X-Mailer:\x13as.starware.com\x0a")))))
; /\x2fType\x2fXRef\x2fW\x5b[^\x5d]*?\d{7,15}/smi
(assert (not (str.in.re X (re.++ (str.to.re "//Type/XRef/W[") (re.* (re.comp (str.to.re "]"))) ((_ re.loop 7 15) (re.range "0" "9")) (str.to.re "/smi\x0a")))))
; wwwHost\x3aRobertVersionspyblini\x2Eini
(assert (not (str.in.re X (str.to.re "wwwHost:RobertVersionspyblini.ini\x0a"))))
(check-sat)
