(declare-const X String)
; X-Mailer\u{3A}com\u{18}\u{16}dcww\u{2E}dmcast\u{2E}comHost\u{3A}dist\u{2E}atlas\u{2D}ia\u{2E}com
(assert (not (str.in_re X (str.to_re "X-Mailer:\u{13}com\u{18}\u{16}dcww.dmcast.comHost:dist.atlas-ia.com\u{a}"))))
; Software\s+User-Agent\u{3A}.*FictionalUser-Agent\u{3A}User-Agent\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "Software") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "FictionalUser-Agent:User-Agent:\u{a}")))))
; Host\u{3A}\s+Online100013Agentsvr\u{5E}\u{5E}Merlin
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Online100013Agentsvr^^Merlin\u{13}\u{a}"))))
; ^(\d{5}-\d{2}-\d{7})*$
(assert (str.in_re X (re.++ (re.* (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 7 7) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; ^(([a-zA-Z]{2})([0-9]{6}))$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 6 6) (re.range "0" "9")))))
(check-sat)
