(declare-const X String)
; (^\b\d+-\d+$\b)|(^\b\d+$\b)
(assert (str.in.re X (re.union (re.++ (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; OSSProxyZC-BridgeHost\x3AReferer\x3aFunWebProducts
(assert (str.in.re X (str.to.re "OSSProxyZC-BridgeHost:Referer:FunWebProducts\x0a")))
(check-sat)
