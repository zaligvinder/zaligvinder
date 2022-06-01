(declare-const X String)
; Flooded\s+Host\u{3A}\s+AppName\u{2F}GRSI\|Server\|Host\u{3A}origin\u{3D}sidefindHost\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Flooded") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "AppName/GRSI|Server|\u{13}Host:origin=sidefindHost:User-Agent:\u{a}")))))
(check-sat)
