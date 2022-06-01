(declare-const X String)
; EI.*to\s+AppName\u{2F}GRSI\|Server\|Host\u{3A}origin\u{3D}sidefind
(assert (not (str.in_re X (re.++ (str.to_re "EI") (re.* re.allchar) (str.to_re "to") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "AppName/GRSI|Server|\u{13}Host:origin=sidefind\u{a}")))))
(check-sat)
