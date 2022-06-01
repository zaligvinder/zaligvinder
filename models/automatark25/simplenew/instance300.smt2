(declare-const X String)
; emailFrom\u{3A}User-Agent\u{3A}User-Agent\u{3A}select\u{2F}Get
(assert (str.in_re X (str.to_re "emailFrom:User-Agent:User-Agent:select/Get\u{a}")))
(check-sat)
