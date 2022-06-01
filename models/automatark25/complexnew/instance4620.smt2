(declare-const X String)
; /filename=[^\n]*\u{2e}rdp/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rdp/i\u{a}"))))
; xbqyosoe\u{2f}cpvmviewComponentisrelated\u{2E}yok\u{2E}com
(assert (str.in_re X (str.to_re "xbqyosoe/cpvmviewComponentisrelated.yok.com\u{a}")))
; [0-9]*\.?[0-9]*[1-9]
(assert (not (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (re.range "1" "9") (str.to_re "\u{a}")))))
; \u{2F}rss\d+Host\u{3a}TCP\u{2F}AD\u{2F}ULOGNetBusCookie\u{3a}
(assert (str.in_re X (re.++ (str.to_re "/rss") (re.+ (re.range "0" "9")) (str.to_re "Host:TCP/AD/ULOGNetBusCookie:\u{a}"))))
; OSSProxyZC-BridgeHost\u{3A}Referer\u{3a}FunWebProducts
(assert (not (str.in_re X (str.to_re "OSSProxyZC-BridgeHost:Referer:FunWebProducts\u{a}"))))
(check-sat)
