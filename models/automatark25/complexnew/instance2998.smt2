(declare-const X String)
; OSSProxyZC-BridgeHost\u{3A}Referer\u{3a}FunWebProducts
(assert (str.in_re X (str.to_re "OSSProxyZC-BridgeHost:Referer:FunWebProducts\u{a}")))
; Subject\u{3a}\d+zmnjgmomgbdz\u{2f}zzmw\.gzt
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "zmnjgmomgbdz/zzmw.gzt\u{a}")))))
; Host\u{3A}\dtoolbar\u{2E}hotblox\u{2E}com\dHost\u{3A}http\u{3A}\u{2F}\u{2F}mysearch\.dropspam\.com\u{2F}index\.php\?tpid=
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "toolbar.hotblox.com") (re.range "0" "9") (str.to_re "Host:http://mysearch.dropspam.com/index.php?tpid=\u{13}\u{a}")))))
(check-sat)
