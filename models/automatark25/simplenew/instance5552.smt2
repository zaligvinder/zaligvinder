(declare-const X String)
; www\x2Esogou\x2Ecomix=WebsiteHost\x3aWeb-Mail
(assert (not (str.in.re X (str.to.re "www.sogou.comix=WebsiteHost:Web-Mail\x0a"))))
(check-sat)
