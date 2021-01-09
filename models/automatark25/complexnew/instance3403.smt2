(declare-const X String)
; /^\x2F40e800[0-9A-F]{30,}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//40e800/Ui\x0a") ((_ re.loop 30 30) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.* (re.union (re.range "0" "9") (re.range "A" "F")))))))
; \x7D\x7BPassword\x3ADesktopDownloadfowclxccdxn\x2fuxwn\.ddy
(assert (str.in.re X (str.to.re "}{Password:\x1bDesktopDownloadfowclxccdxn/uxwn.ddy\x0a")))
(check-sat)
