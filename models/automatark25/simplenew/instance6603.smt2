(declare-const X String)
; CMDLoginExciteSubject\x3Adownloadfile\x2eorg
(assert (str.in.re X (str.to.re "CMDLoginExciteSubject:downloadfile.org\x0a")))
(check-sat)
