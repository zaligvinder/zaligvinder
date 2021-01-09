(declare-const X String)
; /\x2edxf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.dxf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; welcome\s+Host\x3A\s+ThistoIpHost\x3Abadurl\x2Egrandstreetinteractive\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "welcome") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ThistoIpHost:badurl.grandstreetinteractive.com\x0a")))))
; /_X(86|64)&a4=/P
(assert (str.in.re X (re.++ (str.to.re "/_X") (re.union (str.to.re "86") (str.to.re "64")) (str.to.re "&a4=/P\x0a"))))
; /^[a-zA-Z0-9]+$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/\x0a")))))
(check-sat)
