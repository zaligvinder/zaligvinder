(declare-const X String)
; Xtra\s+Host\x3A\s+Referer\x3aThisSubject\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Xtra") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Referer:ThisSubject:\x0a")))))
; e2give\.comrichfind\x2Ecom\x22007User-Agent\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (str.to.re "e2give.comrichfind.com\x22007User-Agent:www.searchreslt.com\x0a"))))
(check-sat)
