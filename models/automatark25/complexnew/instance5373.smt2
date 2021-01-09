(declare-const X String)
; /^\/\d{10}\/\d{10}\.tpl$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re ".tpl/U\x0a"))))
; kl\x2Esearch\x2Eneed2find\x2Ecom\ssource%3Dultrasearch136%26campaign%3Dsnap
(assert (str.in.re X (re.++ (str.to.re "kl.search.need2find.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "source%3Dultrasearch136%26campaign%3Dsnap\x0a"))))
; Subject\x3A\d+media\x2Edxcdirect\x2Ecom\.smx\?PASSW=SAHHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.range "0" "9")) (str.to.re "media.dxcdirect.com.smx?PASSW=SAHHost:\x0a")))))
; ^[AHJ-NPR-UW-Z]{2}\s?[0-9]{3}\s?[AHJ-NPR-UW-Z]{2}$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (str.to.re "A") (str.to.re "H") (re.range "J" "N") (str.to.re "P") (re.range "R" "U") (re.range "W" "Z"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (str.to.re "A") (str.to.re "H") (re.range "J" "N") (str.to.re "P") (re.range "R" "U") (re.range "W" "Z"))) (str.to.re "\x0a"))))
; \x2Fcs\x2Fpop4\x2FA-Spywww\x2Eyoogee\x2Ecom
(assert (not (str.in.re X (str.to.re "/cs/pop4/A-Spywww.yoogee.com\x13\x0a"))))
(check-sat)
