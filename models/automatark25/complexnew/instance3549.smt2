(declare-const X String)
; MailerHost\x3AUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "MailerHost:User-Agent:\x0a"))))
; Fictional[^\n\r]*v\x3B[^\n\r]*\x22Stealth\d+moreKontikiHost\x3aAcmeEvilFTPHost\x3ATOOLBARSupremePort\x2E
(assert (str.in.re X (re.++ (str.to.re "Fictional") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "v;") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "\x22Stealth") (re.+ (re.range "0" "9")) (str.to.re "moreKontikiHost:AcmeEvilFTPHost:TOOLBARSupremePort.\x0a"))))
; ^\$?\d+(\.(\d{2}))?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
