(declare-const X String)
; com\dsearch\x2econduit\x2ecom\s+User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "com") (re.range "0" "9") (str.to.re "search.conduit.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a")))))
; /\/docushare\/dsweb\/ResultBackgroundJobMultiple\/\d*[^\d]/U
(assert (not (str.in.re X (re.++ (str.to.re "//docushare/dsweb/ResultBackgroundJobMultiple/") (re.* (re.range "0" "9")) (re.range "0" "9") (str.to.re "/U\x0a")))))
; ^[a-z]
(assert (str.in.re X (re.++ (re.range "a" "z") (str.to.re "\x0a"))))
; protocolNetControl\x2EServerKEYLOGGERUser-Agent\x3A
(assert (str.in.re X (str.to.re "protocolNetControl.Server\x13KEYLOGGERUser-Agent:\x0a")))
(check-sat)
