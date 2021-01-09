(declare-const X String)
; TPSystemHost\x3AHost\x3ashow\x2Eroogoo\x2EcomX-Mailer\x3A
(assert (not (str.in.re X (str.to.re "TPSystemHost:Host:show.roogoo.comX-Mailer:\x13\x0a"))))
; IP.*encoder\d+SAHPORT-User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "IP") (re.* re.allchar) (str.to.re "encoder") (re.+ (re.range "0" "9")) (str.to.re "SAHPORT-User-Agent:\x0a"))))
; ^((0?[1-9])|((1)[0-1]))?((\.[0-9]{0,2})?|0(\.[0-9]{0,2}))$
(assert (str.in.re X (re.++ (re.opt (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "1")))) (re.union (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9")))) (re.++ (str.to.re "0.") ((_ re.loop 0 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; X-Mailer\x3a.*User-Agent\x3A[^\n\r]*ulmxct\x2fmqoyc
(assert (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.* re.allchar) (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "ulmxct/mqoyc\x0a"))))
(check-sat)
