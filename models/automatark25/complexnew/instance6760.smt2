(declare-const X String)
; www\x2Esogou\x2Ecomix=WebsiteHost\x3aWeb-Mail
(assert (str.in.re X (str.to.re "www.sogou.comix=WebsiteHost:Web-Mail\x0a")))
; ^R(\d){8}
(assert (str.in.re X (re.++ (str.to.re "R") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ewvx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wvx/i\x0a")))))
; ^[0-9]*[1-9]+[0-9]*$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
