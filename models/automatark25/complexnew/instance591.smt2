(declare-const X String)
; User-Agent\u{3A}\s+dist\u{2E}atlas\u{2D}ia\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "dist.atlas-ia.com\u{a}"))))
; \u{7D}\u{7B}User\u{3A}\u{7D}\u{7B}Trojan\u{3A}SPYSubject\u{3A}\swww\.fast-finder\.comhostieLogger
(assert (str.in_re X (re.++ (str.to_re "}{User:}{Trojan:SPYSubject:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.fast-finder.comhostieLogger\u{a}"))))
; /filename=[^\n]*\u{2e}chm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".chm/i\u{a}"))))
(check-sat)
