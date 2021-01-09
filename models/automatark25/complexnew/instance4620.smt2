(declare-const X String)
; /filename=[^\n]*\x2erdp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rdp/i\x0a"))))
; xbqyosoe\x2fcpvmviewComponentisrelated\x2Eyok\x2Ecom
(assert (str.in.re X (str.to.re "xbqyosoe/cpvmviewComponentisrelated.yok.com\x0a")))
; [0-9]*\.?[0-9]*[1-9]
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (re.range "1" "9") (str.to.re "\x0a")))))
; \x2Frss\d+Host\x3aTCP\x2FAD\x2FULOGNetBusCookie\x3a
(assert (str.in.re X (re.++ (str.to.re "/rss") (re.+ (re.range "0" "9")) (str.to.re "Host:TCP/AD/ULOGNetBusCookie:\x0a"))))
; OSSProxyZC-BridgeHost\x3AReferer\x3aFunWebProducts
(assert (not (str.in.re X (str.to.re "OSSProxyZC-BridgeHost:Referer:FunWebProducts\x0a"))))
(check-sat)
