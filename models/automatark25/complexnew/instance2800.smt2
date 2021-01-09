(declare-const X String)
; name\x3dEmailbadurl\x2Egrandstreetinteractive\x2EcomHost\x3Astepwww\x2Ekornputers\x2Ecom
(assert (not (str.in.re X (str.to.re "name=Emailbadurl.grandstreetinteractive.comHost:stepwww.kornputers.com\x0a"))))
; /\r\n\r\nsession\x3a\d{1,7}$/
(assert (str.in.re X (re.++ (str.to.re "/\x0d\x0a\x0d\x0asession:") ((_ re.loop 1 7) (re.range "0" "9")) (str.to.re "/\x0a"))))
; Host\x3AHost\x3AX-Mailer\x3a
(assert (str.in.re X (str.to.re "Host:Host:X-Mailer:\x13\x0a")))
(check-sat)
