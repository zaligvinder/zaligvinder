(declare-const X String)
; /\/m1\.exe$/U
(assert (not (str.in_re X (str.to_re "//m1.exe/U\u{a}"))))
(check-sat)
