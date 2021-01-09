(declare-const X String)
; Host\x3A1\-extreme\x2EbizX-Mailer\x3awww\x2Ewebcruiser\x2Ecc
(assert (str.in.re X (str.to.re "Host:1-extreme.bizX-Mailer:\x13www.webcruiser.cc\x0a")))
; HWAE\s+\x2Fta\x2FNEWS\x2FGuptacharloomcompany\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "HWAE") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/ta/NEWS/Guptacharloomcompany.com\x0a"))))
; Host\x3APortawww\.thecommunicator\.net
(assert (str.in.re X (str.to.re "Host:Portawww.thecommunicator.net\x0a")))
; version\s+CodeguruBrowserwww\x2Esogou\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "version") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CodeguruBrowserwww.sogou.com\x0a")))))
(check-sat)
