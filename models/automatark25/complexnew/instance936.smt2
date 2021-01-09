(declare-const X String)
; TOOLBARX-Mailer\x3a+dist\x2Eatlas\x2Dia\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "TOOLBARX-Mailer") (re.+ (str.to.re ":")) (str.to.re "dist.atlas-ia.com\x0a"))))
; /\/jlnp\.html$/U
(assert (not (str.in.re X (str.to.re "//jlnp.html/U\x0a"))))
; /\x2epfm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.pfm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
