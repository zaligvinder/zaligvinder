(declare-const X String)
; Keylogger-Pro\s+isUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Keylogger-Pro") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "isUser-Agent:\x0a"))))
; ^\d(\d)?(\d)?$
(assert (not (str.in.re X (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to.re "\x0a")))))
; Xtrawww\x2Einstafinder\x2EcomsearchHost\x3A
(assert (not (str.in.re X (str.to.re "Xtrawww.instafinder.comsearchHost:\x0a"))))
; www\x2Ericercadoppia\x2Ecom[^\n\r]*xml\s+User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.ricercadoppia.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "xml") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a")))))
(check-sat)
