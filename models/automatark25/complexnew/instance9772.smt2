(declare-const X String)
; ^[^\*]{0,}[\*]{0,1}[^\*]{0,}$
(assert (str.in.re X (re.++ (re.* (re.comp (str.to.re "*"))) (re.opt (str.to.re "*")) (re.* (re.comp (str.to.re "*"))) (str.to.re "\x0a"))))
; FTPHost\x3AUser-Agent\x3aUser\x3AdistID=deskwizz\x2Ecom
(assert (str.in.re X (str.to.re "FTPHost:User-Agent:User:distID=deskwizz.com\x0a")))
; Host\x3A\s+www\x2Einternet-optimizer\x2EcomToolBarKeylogger
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.internet-optimizer.comToolBarKeylogger\x0a"))))
(check-sat)
