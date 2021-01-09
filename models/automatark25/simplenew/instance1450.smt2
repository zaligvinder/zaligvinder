(declare-const X String)
; \x22Thewebsearch\.getmirar\.com
(assert (str.in.re X (str.to.re "\x22Thewebsearch.getmirar.com\x0a")))
(check-sat)
