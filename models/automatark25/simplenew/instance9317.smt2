(declare-const X String)
; /\/bin\.exe$/U
(assert (str.in.re X (str.to.re "//bin.exe/U\x0a")))
(check-sat)
