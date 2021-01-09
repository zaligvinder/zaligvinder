(declare-const X String)
; \x22StarLogger\x22User-Agent\x3AJMailUser-Agent\x3A
(assert (str.in.re X (str.to.re "\x22StarLogger\x22User-Agent:JMailUser-Agent:\x0a")))
(check-sat)
