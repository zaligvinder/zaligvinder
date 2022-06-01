(declare-const X String)
; OSSProxyZC-BridgeHost\u{3A}Referer\u{3a}FunWebProducts
(assert (not (str.in_re X (str.to_re "OSSProxyZC-BridgeHost:Referer:FunWebProducts\u{a}"))))
(check-sat)
