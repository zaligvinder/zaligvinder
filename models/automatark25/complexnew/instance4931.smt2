(declare-const X String)
; \x2Fbar_pl\x2Fchk_bar\.fcgi\s+adblock\x2Elinkz\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "/bar_pl/chk_bar.fcgi") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adblock.linkz.com\x0a")))))
; ([0-9a-z_-]+[\.][0-9a-z_-]{1,3})$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (str.to.re "_") (str.to.re "-"))) (str.to.re ".") ((_ re.loop 1 3) (re.union (re.range "0" "9") (re.range "a" "z") (str.to.re "_") (str.to.re "-")))))))
; are\s+Toolbar\s+X-Mailer\x3AInformationsearchnuggetspastb\x2Efreeprod\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "are") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Toolbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13Informationsearchnugget\x13spastb.freeprod.com\x0a"))))
(check-sat)
