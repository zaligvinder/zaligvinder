(declare-const X String)
; /^Content-Type\x3a[\x20\x09]+application\/octet-stream/smiH
(assert (str.in.re X (re.++ (str.to.re "/Content-Type:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09"))) (str.to.re "application/octet-stream/smiH\x0a"))))
(check-sat)
