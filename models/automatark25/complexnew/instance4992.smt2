(declare-const X String)
; Host\x3A\dwww\x2Etrustedsearch\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "www.trustedsearch.com\x0a"))))
; \x3BCIA\s+is\s+User-Agent\x3Acid=tb\x2eCookie\x3A
(assert (str.in.re X (re.++ (str.to.re ";CIA") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "is") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:cid=tb.Cookie:\x0a"))))
; User-Agent\x3awww\x2Eadoptim\x2Ecom
(assert (not (str.in.re X (str.to.re "User-Agent:www.adoptim.com\x0a"))))
(check-sat)
