(declare-const X String)
; HWAEUser-Agent\x3ATestHost\x3Awww\x2Edotcomtoolbar\x2Ecom
(assert (str.in.re X (str.to.re "HWAEUser-Agent:TestHost:www.dotcomtoolbar.com\x0a")))
; \x0D\x0A\x0D\x0AAttached.*Host\x3A\s+ZC-Bridge
(assert (not (str.in.re X (re.++ (str.to.re "\x0d\x0a\x0d\x0aAttached") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ZC-Bridge\x0a")))))
; YAHOO.*Host\x3A.*\x2Fcs\x2Fpop4\x2F
(assert (not (str.in.re X (re.++ (str.to.re "YAHOO") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "/cs/pop4/\x0a")))))
(check-sat)
