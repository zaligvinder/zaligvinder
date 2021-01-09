(declare-const X String)
; SPY\s\x5BStaticHost\x3AFROM\x3Acs\x2Eshopperreports\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "SPY") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "[StaticHost:FROM:cs.shopperreports.com\x0a"))))
; Host\x3AtoUser-Agent\x3AClientsConnected-
(assert (not (str.in.re X (str.to.re "Host:toUser-Agent:ClientsConnected-\x0a"))))
(check-sat)
