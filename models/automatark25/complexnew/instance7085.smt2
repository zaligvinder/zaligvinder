(declare-const X String)
; Host\u{3A}act=Host\u{3a}User-Agent\u{3A}User-Agent\u{3A}Liteselect\u{2F}Get
(assert (str.in_re X (str.to_re "Host:act=Host:User-Agent:User-Agent:Liteselect/Get\u{a}")))
; products\s+Host\u{3A}DAPCURLBlaze
(assert (str.in_re X (re.++ (str.to_re "products") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:DAPCURLBlaze\u{a}"))))
(check-sat)
