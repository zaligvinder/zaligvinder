(declare-const X String)
; \x7D\x7BPassword\x3ADesktopDownloadfowclxccdxn\x2fuxwn\.ddy
(assert (not (str.in.re X (str.to.re "}{Password:\x1bDesktopDownloadfowclxccdxn/uxwn.ddy\x0a"))))
(check-sat)
