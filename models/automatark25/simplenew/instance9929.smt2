(declare-const X String)
; /^Host\x3A\s+.*jaiku\x2Ecom/smiH
(assert (str.in.re X (re.++ (str.to.re "/Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar) (str.to.re "jaiku.com/smiH\x0a"))))
(check-sat)
