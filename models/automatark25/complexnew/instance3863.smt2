(declare-const X String)
; X-OSSproxy\u{3a}FTPSubject\u{3a}ServerMicrosoft\u{2A}PORT3\u{2A}Pro
(assert (not (str.in_re X (str.to_re "X-OSSproxy:FTPSubject:ServerMicrosoft*PORT3*Pro\u{a}"))))
; /filename=[^\n]*\u{2e}smil/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".smil/i\u{a}"))))
; ^[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,3})$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re "."))) (str.to_re ".") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}")))))
; /\r\nReferer\u{3A}\u{20}http\u{3A}\u{2F}\u{2f}[a-z0-9\u{2d}\u{2e}]+\u{2F}\u{3F}do\u{3D}payment\u{26}ver\u{3D}\d+\u{26}sid\u{3D}\d+\u{26}sn\u{3D}\d+\r\n/H
(assert (not (str.in_re X (re.++ (str.to_re "/\u{d}\u{a}Referer: http://") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "."))) (str.to_re "/?do=payment&ver=") (re.+ (re.range "0" "9")) (str.to_re "&sid=") (re.+ (re.range "0" "9")) (str.to_re "&sn=") (re.+ (re.range "0" "9")) (str.to_re "\u{d}\u{a}/H\u{a}")))))
(check-sat)
