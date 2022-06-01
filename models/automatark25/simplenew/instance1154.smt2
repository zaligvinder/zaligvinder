(declare-const X String)
; IDENTIFY666User-Agent\u{3A}\u{5B}StaticSend=Host\u{3A}www\.iggsey\.com
(assert (str.in_re X (str.to_re "IDENTIFY666User-Agent:[StaticSend=Host:www.iggsey.com\u{a}")))
(check-sat)
