(declare-const X String)
; adfsgecoiwnf\d+Host\x3aTCP\x2FAD\x2FULOGNetBus
(assert (not (str.in.re X (re.++ (str.to.re "adfsgecoiwnf\x1b") (re.+ (re.range "0" "9")) (str.to.re "Host:TCP/AD/ULOGNetBus\x0a")))))
(check-sat)
