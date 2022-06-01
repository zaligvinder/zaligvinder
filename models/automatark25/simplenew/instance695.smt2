(declare-const X String)
; Kontikidownloadfile\u{2e}orged2kcom\u{3E}Host\u{3A}Windows
(assert (str.in_re X (str.to_re "Kontikidownloadfile.orged2kcom>Host:Windows\u{a}")))
(check-sat)
