(declare-const X String)
; ^[0-9]{2}-[0-9]{8}-[0-9]$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "-") (re.range "0" "9") (str.to.re "\x0a"))))
; GmbH\d+Host\x3A\w+adblock\x2Elinkz\x2EcomUser-Agent\x3Aemail
(assert (not (str.in.re X (re.++ (str.to.re "GmbH") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "adblock.linkz.comUser-Agent:email\x0a")))))
; SPY\s\x5BStaticHost\x3AFROM\x3Acs\x2Eshopperreports\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "SPY") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "[StaticHost:FROM:cs.shopperreports.com\x0a")))))
; /\/[a-z]{2}\/testcon.php$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 2 2) (re.range "a" "z")) (str.to.re "/testcon") re.allchar (str.to.re "php/U\x0a")))))
; ^[^\"]+$
(assert (str.in.re X (re.++ (re.+ (re.comp (str.to.re "\x22"))) (str.to.re "\x0a"))))
(check-sat)
