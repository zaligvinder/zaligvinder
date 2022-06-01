(declare-const X String)
; User-Agent\u{3a}\s+sErver\s+-~-GREATHost\u{3a}
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "sErver") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "-~-GREATHost:\u{a}"))))
; ^([0-9][0-9])[.]([0-9][0-9])[.]([0-9][0-9])$
(assert (str.in_re X (re.++ (str.to_re "..\u{a}") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9"))))
; Host\u{3A}Host\u{3A}alertseqepagqfphv\u{2f}sfd
(assert (not (str.in_re X (str.to_re "Host:Host:alertseqepagqfphv/sfd\u{a}"))))
; Web-Mail\dHost\u{3A}Host\u{3A}LOG
(assert (str.in_re X (re.++ (str.to_re "Web-Mail") (re.range "0" "9") (str.to_re "Host:Host:LOG\u{a}"))))
; IndyHost\u{3A}GirlFriendReferer\u{3A}
(assert (str.in_re X (str.to_re "IndyHost:GirlFriendReferer:\u{a}")))
(check-sat)
