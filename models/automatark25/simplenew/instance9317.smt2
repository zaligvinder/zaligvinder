(declare-const X String)
; /\/bin\.exe$/U
(assert (str.in_re X (str.to_re "//bin.exe/U\u{a}")))
(check-sat)
