(declare-const X String)
; Information\s+Host\x3A.*com
(assert (not (str.in.re X (re.++ (str.to.re "Information") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "com\x0a")))))
(check-sat)
