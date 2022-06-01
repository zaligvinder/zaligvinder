(declare-const X String)
; Referer\u{3A}www\u{2E}ccnnlc\u{2E}com\u{4}\u{0}User-Agent\u{3A}\u{22}The
(assert (str.in_re X (str.to_re "Referer:www.ccnnlc.com\u{13}\u{4}\u{0}User-Agent:\u{22}The\u{a}")))
(check-sat)
