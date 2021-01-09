(declare-const X String)
; SpywareStrike.*Subject\x3A\s+Pcast\x2Edat\x2EToolbar
(assert (not (str.in.re X (re.++ (str.to.re "SpywareStrike") (re.* re.allchar) (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Pcast.dat.Toolbar\x0a")))))
; \x2Fcs\x2Fpop4\x2FA-Spywww\x2Eyoogee\x2Ecom
(assert (not (str.in.re X (str.to.re "/cs/pop4/A-Spywww.yoogee.com\x13\x0a"))))
(check-sat)
