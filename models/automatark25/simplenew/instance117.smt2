(declare-const X String)
; /\r\nReferer\u{3A}\u{20}http\u{3A}\u{2F}\u{2f}[a-z0-9\u{2d}\u{2e}]+\u{2F}\u{3F}do\u{3D}payment\u{26}ver\u{3D}\d+\u{26}sid\u{3D}\d+\u{26}sn\u{3D}\d+\r\n/H
(assert (str.in_re X (re.++ (str.to_re "/\u{d}\u{a}Referer: http://") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "."))) (str.to_re "/?do=payment&ver=") (re.+ (re.range "0" "9")) (str.to_re "&sid=") (re.+ (re.range "0" "9")) (str.to_re "&sn=") (re.+ (re.range "0" "9")) (str.to_re "\u{d}\u{a}/H\u{a}"))))
(check-sat)
