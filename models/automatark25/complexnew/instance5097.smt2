(declare-const X String)
; ([0]|[-]?[0]\.[0-9]+)|([-]?([1-9]+\.[0-9]+))|([-]?[1-9]+)
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) (re.+ (re.range "1" "9")) (str.to.re ".") (re.+ (re.range "0" "9"))) (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (re.+ (re.range "1" "9"))) (str.to.re "0") (re.++ (re.opt (str.to.re "-")) (str.to.re "0.") (re.+ (re.range "0" "9")))))))
; Informationsearchnuggetspastb\x2Efreeprod\x2EcomOnlineWeb\.fcgi
(assert (not (str.in.re X (str.to.re "Informationsearchnugget\x13spastb.freeprod.comOnlineWeb.fcgi\x0a"))))
; www\x2Esogou\x2Ecom\s+HWAE\+The\+password\+is\x3A
(assert (str.in.re X (re.++ (str.to.re "www.sogou.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HWAE+The+password+is:\x0a"))))
; FreeAccessBar\s+hostie[^\n\r]*CodeguruBrowser\dStableWeb-MailUser-Agent\x3A195\.225\.Subject\x3A
(assert (str.in.re X (re.++ (str.to.re "FreeAccessBar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "hostie") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "CodeguruBrowser") (re.range "0" "9") (str.to.re "StableWeb-MailUser-Agent:195.225.Subject:\x0a"))))
(check-sat)
