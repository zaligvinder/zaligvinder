(declare-const X String)
; SpywareStrike.*Subject\x3A\s+Pcast\x2Edat\x2EToolbar
(assert (str.in.re X (re.++ (str.to.re "SpywareStrike") (re.* re.allchar) (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Pcast.dat.Toolbar\x0a"))))
; ^(FR)?\s?[A-Z0-9-[IO]]{2}[0-9]{9}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "FR")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "[") (str.to.re "I") (str.to.re "O")) ((_ re.loop 2 2) (str.to.re "]")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a")))))
; StarLoggerCookie\x3aHost\x3APRODUCEDwebsearch\.getmirar\.com
(assert (str.in.re X (str.to.re "StarLoggerCookie:Host:PRODUCEDwebsearch.getmirar.com\x0a")))
; this\w+c\.goclick\.com\d
(assert (not (str.in.re X (re.++ (str.to.re "this") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "c.goclick.com") (re.range "0" "9") (str.to.re "\x0a")))))
(check-sat)
