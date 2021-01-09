(declare-const X String)
; OSSProxyZC-BridgeHost\x3AReferer\x3aFunWebProducts
(assert (not (str.in.re X (str.to.re "OSSProxyZC-BridgeHost:Referer:FunWebProducts\x0a"))))
(check-sat)
