(declare-const X String)
; Host\u{3a}OnlineUser-Agent\u{3A}www\u{2E}vip-se\u{2E}com
(assert (str.in_re X (str.to_re "Host:OnlineUser-Agent:www.vip-se.com\u{13}\u{a}")))
(check-sat)
