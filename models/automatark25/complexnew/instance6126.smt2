(declare-const X String)
; (\'([^\'\\]*\\.)*[^\'\\]*\')+
(assert (not (str.in.re X (re.++ (re.+ (re.++ (str.to.re "'") (re.* (re.++ (re.* (re.union (str.to.re "'") (str.to.re "\x5c"))) (str.to.re "\x5c") re.allchar)) (re.* (re.union (str.to.re "'") (str.to.re "\x5c"))) (str.to.re "'"))) (str.to.re "\x0a")))))
; configINTERNAL\.ini\s+User-Agent\x3A\s+Host\x3ASubject\x3a
(assert (not (str.in.re X (re.++ (str.to.re "configINTERNAL.ini") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Subject:\x0a")))))
(check-sat)
