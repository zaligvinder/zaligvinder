(declare-const X String)
; \u{7D}\u{7B}Password\u{3A}DesktopDownloadfowclxccdxn\u{2f}uxwn\.ddy
(assert (str.in_re X (str.to_re "}{Password:\u{1b}DesktopDownloadfowclxccdxn/uxwn.ddy\u{a}")))
(check-sat)
