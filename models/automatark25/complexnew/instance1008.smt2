(declare-const X String)
; /filename=[^\n]*\x2ewvx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wvx/i\x0a")))))
; Host\x3A1\-extreme\x2EbizX-Mailer\x3awww\x2Ewebcruiser\x2Ecc
(assert (not (str.in.re X (str.to.re "Host:1-extreme.bizX-Mailer:\x13www.webcruiser.cc\x0a"))))
(check-sat)
