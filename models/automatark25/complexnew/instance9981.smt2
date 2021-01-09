(declare-const X String)
; /filename=[^\n]*\x2epjpeg/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pjpeg/i\x0a")))))
; \x2Fcgi\x2Flogurl\.cgi\s+Host\x3AUser-Agent\x3ASurveillancecom
(assert (not (str.in.re X (re.++ (str.to.re "/cgi/logurl.cgi") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:User-Agent:Surveillance\x13com\x0a")))))
; /^router=.*?arg=[a-z\d\.]*[^a-z\d\.&]/iP
(assert (not (str.in.re X (re.++ (str.to.re "/router=") (re.* re.allchar) (str.to.re "arg=") (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "."))) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re ".") (str.to.re "&")) (str.to.re "/iP\x0a")))))
; /^From\x3a[^\r\n]*SpyBuddy/smi
(assert (str.in.re X (re.++ (str.to.re "/From:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "SpyBuddy/smi\x0a"))))
(check-sat)
