(declare-const X String)
; xmlpage=Host\u{3A}\u{2E}htmlUser-Agent\u{3A}bindmqnqgijmng\u{2f}ojMirar_KeywordContent
(assert (str.in_re X (str.to_re "xmlpage=Host:.htmlUser-Agent:bindmqnqgijmng/ojMirar_KeywordContent\u{13}\u{a}")))
; Ts2\u{2F}\s+insert.*Host\u{3a}HELOHourssurvey\.asp\?nUserId=
(assert (not (str.in_re X (re.++ (str.to_re "Ts2/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "insert") (re.* re.allchar) (str.to_re "Host:HELOHourssurvey.asp?nUserId=\u{a}")))))
; ^[+]?\d*$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "+")) (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
; /\r\nReferer\u{3A}\u{20}http\u{3A}\u{2F}\u{2f}[a-z0-9\u{2d}\u{2e}]+\u{2F}\u{3F}do\u{3D}payment\u{26}ver\u{3D}\d+\u{26}sid\u{3D}\d+\u{26}sn\u{3D}\d+\r\n/H
(assert (str.in_re X (re.++ (str.to_re "/\u{d}\u{a}Referer: http://") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "."))) (str.to_re "/?do=payment&ver=") (re.+ (re.range "0" "9")) (str.to_re "&sid=") (re.+ (re.range "0" "9")) (str.to_re "&sn=") (re.+ (re.range "0" "9")) (str.to_re "\u{d}\u{a}/H\u{a}"))))
; ^[1-9][0-9][0-9][0-9]$
(assert (str.in_re X (re.++ (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (str.to_re "\u{a}"))))
(check-sat)
