(declare-const X String)
; /HTTP\/1.[01]\r\nUser\x2dAgent\x3a\x20[ -~]+\r\nHost\x3a\x20[a-z0-9\x2d\x2e]+\.info\r\n/
(assert (not (str.in.re X (re.++ (str.to.re "/HTTP/1") re.allchar (re.union (str.to.re "0") (str.to.re "1")) (str.to.re "\x0d\x0aUser-Agent: ") (re.+ (re.range " " "~")) (str.to.re "\x0d\x0aHost: ") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".info\x0d\x0a/\x0a")))))
(check-sat)
