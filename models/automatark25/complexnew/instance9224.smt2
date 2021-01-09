(declare-const X String)
; xmlpage=Host\x3A\x2EhtmlUser-Agent\x3Abindmqnqgijmng\x2fojMirar_KeywordContent
(assert (str.in.re X (str.to.re "xmlpage=Host:.htmlUser-Agent:bindmqnqgijmng/ojMirar_KeywordContent\x13\x0a")))
; Ts2\x2F\s+insert.*Host\x3aHELOHourssurvey\.asp\?nUserId=
(assert (not (str.in.re X (re.++ (str.to.re "Ts2/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "insert") (re.* re.allchar) (str.to.re "Host:HELOHourssurvey.asp?nUserId=\x0a")))))
; ^[+]?\d*$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "+")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; /\r\nReferer\x3A\x20http\x3A\x2F\x2f[a-z0-9\x2d\x2e]+\x2F\x3Fdo\x3Dpayment\x26ver\x3D\d+\x26sid\x3D\d+\x26sn\x3D\d+\r\n/H
(assert (str.in.re X (re.++ (str.to.re "/\x0d\x0aReferer: http://") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re "/?do=payment&ver=") (re.+ (re.range "0" "9")) (str.to.re "&sid=") (re.+ (re.range "0" "9")) (str.to.re "&sn=") (re.+ (re.range "0" "9")) (str.to.re "\x0d\x0a/H\x0a"))))
; ^[1-9][0-9][0-9][0-9]$
(assert (str.in.re X (re.++ (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (str.to.re "\x0a"))))
(check-sat)
