(declare-const X String)
; \x2Frss\d+Host\x3aTCP\x2FAD\x2FULOGNetBusCookie\x3a
(assert (not (str.in.re X (re.++ (str.to.re "/rss") (re.+ (re.range "0" "9")) (str.to.re "Host:TCP/AD/ULOGNetBusCookie:\x0a")))))
(check-sat)
