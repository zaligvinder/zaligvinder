(declare-const X String)
; xbqyosoe\x2fcpvmviewComponentisrelated\x2Eyok\x2Ecom
(assert (not (str.in.re X (str.to.re "xbqyosoe/cpvmviewComponentisrelated.yok.com\x0a"))))
; Host\x3A\s+\x2FNFO\x2CRegisteredDeletingadfsgecoiwnf
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/NFO,RegisteredDeletingadfsgecoiwnf\x1b\x0a"))))
(check-sat)
