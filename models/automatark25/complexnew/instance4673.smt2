(declare-const X String)
; ^[ \t]+|[ \t]+$
(assert (not (str.in_re X (re.union (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}"))) (re.++ (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}"))) (str.to_re "\u{a}"))))))
; /^\/\d+\.ld$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ (re.range "0" "9")) (str.to_re ".ld/U\u{a}")))))
; Stealth\u{2E}phpSpyAgentHost\u{3A}IterenetUser-Agent\u{3A}Host\u{3A}Host\u{3A}origin\u{3D}sidefind
(assert (not (str.in_re X (str.to_re "Stealth.phpSpyAgentHost:IterenetUser-Agent:Host:Host:origin=sidefind\u{a}"))))
; \u{2A}PORT3\u{2A}\s+Warez.*X-Mailer\u{3A}Subject\u{3A}KEY=
(assert (not (str.in_re X (re.++ (str.to_re "*PORT3*") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Warez") (re.* re.allchar) (str.to_re "X-Mailer:\u{13}Subject:KEY=\u{a}")))))
(check-sat)
