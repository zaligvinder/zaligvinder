(declare-const X String)
; /\/m1\.exe$/U
(assert (not (str.in.re X (str.to.re "//m1.exe/U\x0a"))))
(check-sat)
