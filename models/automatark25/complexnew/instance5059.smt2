(declare-const X String)
; richfind\x2Ecom\s+Host\x3A.*User-Agent\x3Athroughpjpoptwql\x2frlnj
(assert (str.in.re X (re.++ (str.to.re "richfind.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "User-Agent:throughpjpoptwql/rlnj\x0a"))))
; \x7D\x7BPort\x3AHost\x3Amqnqgijmng\x2fojNavhelperUser-Agent\x3A
(assert (str.in.re X (str.to.re "}{Port:Host:mqnqgijmng/ojNavhelperUser-Agent:\x0a")))
; phpinfo[^\n\r]*195\.225\.\dccecaedbebfcaf\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "phpinfo") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "195.225.") (re.range "0" "9") (str.to.re "ccecaedbebfcaf.com\x0a")))))
(check-sat)
