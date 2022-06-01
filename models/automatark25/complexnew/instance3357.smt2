(declare-const X String)
; /filename=[^\n]*\u{2e}abc/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".abc/i\u{a}"))))
; Host\u{3A}\s+\.ico\s+Host\u{3A}origin\u{3D}sidefind
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".ico") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:origin=sidefind\u{a}")))))
; act=\s+User-Agent\u{3A}EvilFTPHost\u{3A}
(assert (str.in_re X (re.++ (str.to_re "act=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:EvilFTPHost:\u{a}"))))
; ^\d+\*\d+\*\d+$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (str.to_re "*") (re.+ (re.range "0" "9")) (str.to_re "*") (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
