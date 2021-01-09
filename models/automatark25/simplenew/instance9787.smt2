(declare-const X String)
; \r\nSTATUS\x3AUser-Agent\x3AHost\x3aReferer\x3A
(assert (not (str.in.re X (str.to.re "\x0d\x0aSTATUS:User-Agent:Host:Referer:\x0a"))))
(check-sat)
