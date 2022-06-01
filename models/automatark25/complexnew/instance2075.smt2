(declare-const X String)
; ^5[1-5][0-9]{14}$
(assert (str.in_re X (re.++ (str.to_re "5") (re.range "1" "5") ((_ re.loop 14 14) (re.range "0" "9")) (str.to_re "\u{a}"))))
; User-Agent\u{3A}X-Mailer\u{3a}HWAEHost\u{3A}Host\u{3A}Host\u{3a}StableUser-Agent\u{3A}User-Agent\u{3A}www\u{2e}navisearch\u{2e}net
(assert (not (str.in_re X (str.to_re "User-Agent:X-Mailer:\u{13}HWAEHost:Host:Host:StableUser-Agent:User-Agent:www.navisearch.net\u{a}"))))
(check-sat)
