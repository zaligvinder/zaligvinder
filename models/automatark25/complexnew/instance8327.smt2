(declare-const X String)
; filename=\x22\s+www\x2Epeer2mail\x2Ecom.*LOG
(assert (str.in.re X (re.++ (str.to.re "filename=\x22") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.peer2mail.com") (re.* re.allchar) (str.to.re "LOG\x0a"))))
; /\/pdfx\.html$/U
(assert (not (str.in.re X (str.to.re "//pdfx.html/U\x0a"))))
; xbqyosoe\x2fcpvmviewComponentisrelated\x2Eyok\x2Ecom
(assert (not (str.in.re X (str.to.re "xbqyosoe/cpvmviewComponentisrelated.yok.com\x0a"))))
; Host\x3aOnlineUser-Agent\x3Awww\x2Evip-se\x2Ecom
(assert (not (str.in.re X (str.to.re "Host:OnlineUser-Agent:www.vip-se.com\x13\x0a"))))
(check-sat)
