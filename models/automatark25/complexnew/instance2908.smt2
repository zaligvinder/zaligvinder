(declare-const X String)
; www\x2Ewebcruiser\x2Eccgot
(assert (not (str.in.re X (str.to.re "www.webcruiser.ccgot\x0a"))))
; \x2Fbar_pl\x2Fchk_bar\.fcgi\s+adblock\x2Elinkz\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "/bar_pl/chk_bar.fcgi") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adblock.linkz.com\x0a"))))
; \[(.+)\].+\[n?varchar\].+NULL,
(assert (str.in.re X (re.++ (str.to.re "[") (re.+ re.allchar) (str.to.re "]") (re.+ re.allchar) (str.to.re "[") (re.opt (str.to.re "n")) (str.to.re "varchar]") (re.+ re.allchar) (str.to.re "NULL,\x0a"))))
; www\.searchinweb\.com\s+User-Agent\x3Abindmqnqgijmng\x2foj
(assert (str.in.re X (re.++ (str.to.re "www.searchinweb.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:bindmqnqgijmng/oj\x0a"))))
; client\x2Ebaigoo\x2EcomUser\x3A
(assert (not (str.in.re X (str.to.re "client.baigoo.comUser:\x0a"))))
(check-sat)
