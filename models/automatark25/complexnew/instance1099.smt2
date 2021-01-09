(declare-const X String)
; Send=\s+User-Agent\x3A\d+Host\x3A\x2Fproducts\x2Fspyblocs\x2Fbacktrust\x2Ecomv\x2ELoginHost\x3a
(assert (str.in.re X (re.++ (str.to.re "Send=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "Host:/products/spyblocs/\x13backtrust.comv.LoginHost:\x0a"))))
; ^[^<^>]*$
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "<") (str.to.re "^") (str.to.re ">"))) (str.to.re "\x0a"))))
; <!--[\s\S]*?-->
(assert (not (str.in.re X (re.++ (str.to.re "<!--") (re.* (re.union (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "-->\x0a")))))
; Host\x3A[^\n\r]*cache\x2Eeverer\x2Ecom\s+from\.myway\.comToolbar
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "cache.everer.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "from.myway.com\x1bToolbar\x0a"))))
(check-sat)
