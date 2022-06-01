(declare-const X String)
; ToolbarUser-Agent\u{3A}From\u{3A}
(assert (not (str.in_re X (str.to_re "ToolbarUser-Agent:From:\u{a}"))))
(check-sat)
