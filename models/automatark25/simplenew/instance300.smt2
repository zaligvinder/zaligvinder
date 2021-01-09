(declare-const X String)
; emailFrom\x3AUser-Agent\x3AUser-Agent\x3Aselect\x2FGet
(assert (str.in.re X (str.to.re "emailFrom:User-Agent:User-Agent:select/Get\x0a")))
(check-sat)
