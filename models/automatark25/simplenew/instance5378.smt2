(declare-const X String)
; \r\nSTATUS\u{3A}User-Agent\u{3A}Host\u{3a}Referer\u{3A}
(assert (str.in_re X (str.to_re "\u{d}\u{a}STATUS:User-Agent:Host:Referer:\u{a}")))
(check-sat)
