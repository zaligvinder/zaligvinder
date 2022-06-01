(declare-const X String)
; ToolbarUser-Agent\u{3A}www\u{2E}webcruiser\u{2E}ccDaemonUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "ToolbarUser-Agent:www.webcruiser.ccDaemonUser-Agent:\u{a}")))
(check-sat)
