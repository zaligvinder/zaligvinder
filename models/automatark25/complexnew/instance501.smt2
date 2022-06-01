(declare-const X String)
; Cookie\u{3a}AppName\u{2F}GRSI\|Server\|Host\u{3A}origin\u{3D}sidefind
(assert (str.in_re X (str.to_re "Cookie:AppName/GRSI|Server|\u{13}Host:origin=sidefind\u{a}")))
; Cookie\u{3a}\s+\u{2F}GRSI\|Server\|Host\u{3A}origin\u{3D}sidefind
(assert (str.in_re X (re.++ (str.to_re "Cookie:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/GRSI|Server|\u{13}Host:origin=sidefind\u{a}"))))
; User-Agent\u{3A}\s+BossUser-Agent\u{3A}SpediaUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "BossUser-Agent:SpediaUser-Agent:\u{a}"))))
(check-sat)
