(declare-const X String)
; Referer\u{3A}User-Agent\u{3A}From\u{3A}User-Agent\u{3A}adfsgecoiwnf
(assert (not (str.in_re X (str.to_re "Referer:User-Agent:From:User-Agent:adfsgecoiwnf\u{1b}\u{a}"))))
(check-sat)
