(declare-const X String)
; news\s+Host\x3A.*Peerwww\x2Elocators\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "news") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "Peerwww.locators.com\x0a"))))
(check-sat)
