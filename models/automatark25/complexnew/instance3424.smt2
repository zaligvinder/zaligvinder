(declare-const X String)
; /\x2eafm([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.afm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; media\x2Etop-banners\x2Ecom
(assert (not (str.in.re X (str.to.re "media.top-banners.com\x0a"))))
(check-sat)
