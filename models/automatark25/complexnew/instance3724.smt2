(declare-const X String)
; ref\u{3D}\u{25}user\u{5F}id\s+X-Mailer\u{3a}SpyBuddyUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "ref=%user_id") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "X-Mailer:\u{13}SpyBuddyUser-Agent:\u{a}"))))
; /^([A-Za-z]){1}([A-Za-z0-9-_.\:])+$/
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "_") (str.to_re ".") (str.to_re ":"))) (str.to_re "/\u{a}")))))
; 62[0-9]{14,17}
(assert (str.in_re X (re.++ (str.to_re "62") ((_ re.loop 14 17) (re.range "0" "9")) (str.to_re "\u{a}"))))
; config\u{2E}180solutions\u{2E}com\dStable\s+Host\u{3a}\u{7D}\u{7C}
(assert (not (str.in_re X (re.++ (str.to_re "config.180solutions.com") (re.range "0" "9") (str.to_re "Stable") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:}|\u{a}")))))
; protocolNetControl\u{2E}ServerKEYLOGGERUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "protocolNetControl.Server\u{13}KEYLOGGERUser-Agent:\u{a}")))
(check-sat)
