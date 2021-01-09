(declare-const X String)
; e2give\.com.*Redirector\x22.*Host\x3A
(assert (str.in.re X (re.++ (str.to.re "e2give.com") (re.* re.allchar) (str.to.re "Redirector\x22") (re.* re.allchar) (str.to.re "Host:\x0a"))))
; SPY\s\x5BStaticHost\x3AFROM\x3Acs\x2Eshopperreports\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "SPY") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "[StaticHost:FROM:cs.shopperreports.com\x0a")))))
(check-sat)
