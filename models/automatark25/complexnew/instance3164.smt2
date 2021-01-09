(declare-const X String)
; LoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?
(assert (str.in.re X (str.to.re "LoginHost:/friendship/email_thank_you?\x0a")))
; ^[AHJ-NPR-UW-Z]{2}\s?[0-9]{3}\s?[AHJ-NPR-UW-Z]{2}$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (str.to.re "A") (str.to.re "H") (re.range "J" "N") (str.to.re "P") (re.range "R" "U") (re.range "W" "Z"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (str.to.re "A") (str.to.re "H") (re.range "J" "N") (str.to.re "P") (re.range "R" "U") (re.range "W" "Z"))) (str.to.re "\x0a"))))
; are\s+Toolbar\s+X-Mailer\x3AInformationsearchnuggetspastb\x2Efreeprod\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "are") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Toolbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13Informationsearchnugget\x13spastb.freeprod.com\x0a")))))
(check-sat)
