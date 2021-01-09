(declare-const X String)
; Host\x3AFrom\x3aKeylogger
(assert (str.in.re X (str.to.re "Host:From:Keylogger\x0a")))
; www\x2Esogou\x2Ecomix=WebsiteHost\x3aWeb-Mail
(assert (str.in.re X (str.to.re "www.sogou.comix=WebsiteHost:Web-Mail\x0a")))
(check-sat)
