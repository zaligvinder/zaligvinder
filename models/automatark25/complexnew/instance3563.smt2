(declare-const X String)
; Everyware.*Email.*Host\x3Astepwww\x2Ekornputers\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Everyware") (re.* re.allchar) (str.to.re "Email") (re.* re.allchar) (str.to.re "Host:stepwww.kornputers.com\x0a")))))
; TPSystemHost\x3AHost\x3ashow\x2Eroogoo\x2EcomX-Mailer\x3A
(assert (not (str.in.re X (str.to.re "TPSystemHost:Host:show.roogoo.comX-Mailer:\x13\x0a"))))
(check-sat)
