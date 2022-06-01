(declare-const X String)
; Host\u{3A}act=Host\u{3a}User-Agent\u{3A}User-Agent\u{3A}Liteselect\u{2F}Get
(assert (not (str.in_re X (str.to_re "Host:act=Host:User-Agent:User-Agent:Liteselect/Get\u{a}"))))
(check-sat)
