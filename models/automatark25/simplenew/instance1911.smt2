(declare-const X String)
; Host\u{3A}Subject\u{3A}whenu\u{2E}comHost\u{3A}www\u{2E}vip-se\u{2E}com
(assert (not (str.in_re X (str.to_re "Host:Subject:whenu.com\u{1b}Host:www.vip-se.com\u{13}\u{a}"))))
(check-sat)
