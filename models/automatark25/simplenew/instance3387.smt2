(declare-const X String)
; \u{2F}pagead\u{2F}ads\?waitingisDownload
(assert (str.in_re X (str.to_re "/pagead/ads?waitingisDownload\u{a}")))
(check-sat)
