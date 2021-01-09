(declare-const X String)
; /\/fnts\.html$/U
(assert (not (str.in.re X (str.to.re "//fnts.html/U\x0a"))))
(check-sat)
