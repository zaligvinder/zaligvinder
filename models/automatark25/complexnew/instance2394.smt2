(declare-const X String)
; /\.jpg\x20HTTP\/1\.[01]\r\nUser\x2dAgent\x3a\x20[a-z]+\r\nHost\x3a\x20[a-z0-9\x2d\x2e]+\.com\.br\r\n\r\n$/
(assert (not (str.in.re X (re.++ (str.to.re "/.jpg HTTP/1.") (re.union (str.to.re "0") (str.to.re "1")) (str.to.re "\x0d\x0aUser-Agent: ") (re.+ (re.range "a" "z")) (str.to.re "\x0d\x0aHost: ") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".com.br\x0d\x0a\x0d\x0a/\x0a")))))
; Agent\s+Server\s+www\x2Einternet-optimizer\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Agent") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Server") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.internet-optimizer.com\x0a"))))
; Prodaosearch\x2EcomReferer\x3A007User-Agent\x3A
(assert (str.in.re X (str.to.re "Prodaosearch.comReferer:007User-Agent:\x0a")))
(check-sat)
