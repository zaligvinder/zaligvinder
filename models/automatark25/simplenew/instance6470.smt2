(declare-const X String)
; \x2Fbar_pl\x2Fchk_bar\.fcgi\s+adblock\x2Elinkz\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "/bar_pl/chk_bar.fcgi") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adblock.linkz.com\x0a")))))
(check-sat)
