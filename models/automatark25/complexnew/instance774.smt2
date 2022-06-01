(declare-const X String)
; Host\u{3a}OnlineUser-Agent\u{3A}www\u{2E}vip-se\u{2E}com
(assert (not (str.in_re X (str.to_re "Host:OnlineUser-Agent:www.vip-se.com\u{13}\u{a}"))))
; ^[a-zA-Z]{4}[a-zA-Z]{2}[a-zA-Z0-9]{2}[XXX0-9]{0,3}
(assert (str.in_re X (re.++ ((_ re.loop 4 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 0 3) (re.union (str.to_re "X") (re.range "0" "9"))) (str.to_re "\u{a}"))))
(check-sat)
