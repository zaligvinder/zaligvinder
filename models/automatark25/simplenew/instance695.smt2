(declare-const X String)
; Kontikidownloadfile\x2eorged2kcom\x3EHost\x3AWindows
(assert (str.in.re X (str.to.re "Kontikidownloadfile.orged2kcom>Host:Windows\x0a")))
(check-sat)
