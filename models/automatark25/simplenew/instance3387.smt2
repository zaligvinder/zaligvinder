(declare-const X String)
; \x2Fpagead\x2Fads\?waitingisDownload
(assert (str.in.re X (str.to.re "/pagead/ads?waitingisDownload\x0a")))
(check-sat)
