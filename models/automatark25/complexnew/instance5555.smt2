(declare-const X String)
; sbRedirectionsHost\x3AHost\x3AUser-Agent\x3Ahotbar%3fwww\x2Einternetadvertisingcompany\x2Ebiz
(assert (str.in.re X (str.to.re "sbRedirections\x1bHost:Host:User-Agent:hotbar%3fwww.internetadvertisingcompany.biz\x0a")))
; LOG\s+spyblini\x2EiniUpdateUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "LOG") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblini.iniUpdateUser-Agent:\x0a"))))
; Toolbarverpop\x2Epopuptoast\x2Ecomtvshowticketscount\x2Eyok\x2Ecom
(assert (str.in.re X (str.to.re "Toolbarverpop.popuptoast.comtvshowticketscount.yok.com\x0a")))
(check-sat)
