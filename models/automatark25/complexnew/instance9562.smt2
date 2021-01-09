(declare-const X String)
; [0-9a-fA-F]+
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "\x0a")))))
; OSSProxyZC-BridgeHost\x3AReferer\x3aFunWebProducts
(assert (not (str.in.re X (str.to.re "OSSProxyZC-BridgeHost:Referer:FunWebProducts\x0a"))))
(check-sat)
