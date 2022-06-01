(declare-const X String)
; t=ProtoUser-Agent\u{3A}quick\u{2E}qsrch\u{2E}com
(assert (str.in_re X (str.to_re "t=ProtoUser-Agent:quick.qsrch.com\u{a}")))
(check-sat)
